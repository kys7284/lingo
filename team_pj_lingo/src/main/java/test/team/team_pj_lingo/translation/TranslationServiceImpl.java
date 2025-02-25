package test.team.team_pj_lingo.translation;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType0Font;
import org.apache.pdfbox.text.PDFTextStripper;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class TranslationServiceImpl implements TranslationService {

    private static final Logger logger = LoggerFactory.getLogger(TranslationServiceImpl.class);

    private final String deepLApiKey = "ff69440e-231d-4045-8946-8e32078265c7:fx";
    private final ObjectMapper objectMapper = new ObjectMapper();

    @Autowired
    private ServletContext servletContext;

    @Override
    public TextTranslationResponseDTO translateText(TextTranslationRequestDTO requestDTO) throws IOException {
        if (requestDTO == null || requestDTO.getText() == null || requestDTO.getText().isEmpty()) {
            throw new IllegalArgumentException("Text list cannot be null or empty.");
        }
        if (requestDTO.getTargetLang() == null || requestDTO.getTargetLang().isEmpty()) {
            throw new IllegalArgumentException("Target language must be specified.");
        }

        String apiUrl = "https://api-free.deepl.com/v2/translate";
        URL url = new URL(apiUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Authorization", "DeepL-Auth-Key " + deepLApiKey);
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
        conn.setDoOutput(true);

        StringBuilder params = new StringBuilder();
        for (String text : requestDTO.getText()) {
            params.append("text=").append(URLEncoder.encode(text, StandardCharsets.UTF_8)).append("&");
        }
        params.append("target_lang=").append(requestDTO.getTargetLang());
        if (!"auto".equalsIgnoreCase(requestDTO.getSourceLang()) && requestDTO.getSourceLang() != null) {
            params.append("&source_lang=").append(requestDTO.getSourceLang());
        }

        try (OutputStream os = conn.getOutputStream()) {
            os.write(params.toString().getBytes(StandardCharsets.UTF_8));
            os.flush();
        }

        try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), StandardCharsets.UTF_8))) {
            StringBuilder response = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                response.append(line);
            }
            logger.info("DeepL API response: {}", response.toString());
            JsonNode rootNode = objectMapper.readTree(response.toString());
            List<TextTranslationResponseDTO.Translation> translations = new ArrayList<>();
            for (JsonNode node : rootNode.path("translations")) {
                translations.add(new TextTranslationResponseDTO.Translation(
                        node.path("detected_source_language").asText(),
                        node.path("text").asText()
                ));
            }
            return new TextTranslationResponseDTO(translations);
        } finally {
            conn.disconnect();
        }
    }

    @Override
    public byte[] translateDocument(MultipartFile file, String sourceLang, String targetLang) throws IOException {
        String fileName = file.getOriginalFilename();
        String extractedText;

        if (fileName.endsWith(".txt")) {
            extractedText = extractTextFromTxt(file);
        } else if (fileName.endsWith(".pdf")) {
            extractedText = extractTextFromPdf(file);
        } else if (fileName.endsWith(".docx")) {
            extractedText = extractTextFromDocx(file);
        } else {
            throw new IllegalArgumentException("지원되지 않는 파일 형식");
        }
        logger.info("Extracted text from {}: {}", fileName, extractedText);

        if (extractedText.length() > 500000) {
            throw new IOException("최대 제한은 500,000자 이하 입니다.");
        }

        TextTranslationRequestDTO requestDTO = new TextTranslationRequestDTO();
        requestDTO.setText(Collections.singletonList(extractedText));
        requestDTO.setSourceLang(sourceLang);
        requestDTO.setTargetLang(targetLang);

        TextTranslationResponseDTO responseDTO = translateText(requestDTO);
        String translatedText = responseDTO.getTranslations().get(0).getText();
        logger.info("Translated text for {}: {}", fileName, translatedText);

        if (fileName.endsWith(".txt")) {
            return createTxtFile(translatedText);
        } else if (fileName.endsWith(".pdf")) {
            return updatePdfFile(translatedText);
        } else if (fileName.endsWith(".docx")) {
            return updateDocxFile(file, translatedText);
        }
        return null;
    }

    private String extractTextFromTxt(MultipartFile file) throws IOException {
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(file.getInputStream()))) {
            StringBuilder text = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                text.append(line).append("\n");
            }
            return text.toString();
        }
    }

    private String extractTextFromPdf(MultipartFile file) throws IOException {
        try (PDDocument document = PDDocument.load(file.getInputStream())) {
            PDFTextStripper stripper = new PDFTextStripper();
            return stripper.getText(document);
        }
    }

    private String extractTextFromDocx(MultipartFile file) throws IOException {
        try (XWPFDocument document = new XWPFDocument(file.getInputStream())) {
            StringBuilder text = new StringBuilder();
            List<XWPFParagraph> paragraphs = document.getParagraphs();
            for (XWPFParagraph para : paragraphs) {
                text.append(para.getText()).append("\n");
            }
            return text.toString();
        }
    }

    private byte[] createTxtFile(String translatedText) throws IOException {
        byte[] result = translatedText.getBytes(StandardCharsets.UTF_8);
        logger.info("Created TXT file size: {} bytes", result.length);
        return result;
    }

    private byte[] updatePdfFile(String translatedText) throws IOException {
        try (PDDocument document = new PDDocument()) {
            PDPage page = new PDPage();
            document.addPage(page);

            String fontPath = "/resources/fonts/NanumGothic-Regular.ttf";
            logger.info("Attempting to load font from: {}", fontPath);
            InputStream fontStream = servletContext.getResourceAsStream(fontPath);
            if (fontStream == null) {
                logger.error("Font file not found at: {}", fontPath);
                throw new IOException("폰트 파일을 찾을 수 없습니다: " + fontPath);
            }
            PDType0Font font;
            try {
                font = PDType0Font.load(document, fontStream);
            } catch (IOException e) {
                logger.error("Failed to load font: {}", e.getMessage());
                throw new IOException("폰트를 로드하는 데 실패했습니다: " + e.getMessage(), e);
            } finally {
                fontStream.close();
            }

            try (PDPageContentStream contentStream = new PDPageContentStream(document, page)) {
                contentStream.beginText();
                contentStream.setFont(font, 12);
                contentStream.newLineAtOffset(25, 700);
                String cleanedText = translatedText.replace("\r\n", "\n").replace("\r", "");
                String[] lines = cleanedText.split("\n");
                for (String line : lines) {
                    if (!line.trim().isEmpty()) {
                        logger.debug("Writing line to PDF: {}", line);
                        contentStream.showText(line);
                        contentStream.newLineAtOffset(0, -15);
                    }
                }
                contentStream.endText();
            }

            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            document.save(baos);
            logger.info("Updated PDF file size: {} bytes", baos.size());
            return baos.toByteArray();
        }
    }

    private byte[] updateDocxFile(MultipartFile file, String translatedText) throws IOException {
        // 새로운 DOCX 문서 생성
        try (XWPFDocument document = new XWPFDocument()) {
            XWPFParagraph paragraph = document.createParagraph();
            paragraph.createRun().setText(translatedText);

            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            document.write(baos);
            logger.info("Updated DOCX file size: {} bytes", baos.size());
            return baos.toByteArray();
        }
    }
}
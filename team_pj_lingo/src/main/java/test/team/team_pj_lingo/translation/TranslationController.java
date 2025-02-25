package test.team.team_pj_lingo.translation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

@Controller
@RequestMapping("/translation")
public class TranslationController {

    private static final Logger logger = LoggerFactory.getLogger(TranslationController.class);

    @Autowired
    private TranslationService translationService;

    @RequestMapping(value = "/textTranslate.do", method = RequestMethod.GET)
    public String showTextTranslate() {
        logger.info("Showing text translate page");
        return "tslService/textTranslate";
    }

    @RequestMapping(value = "/textTranslate.do", method = RequestMethod.POST)
    @ResponseBody
    public TextTranslationResponseDTO translateText(@RequestBody TextTranslationRequestDTO requestDTO, HttpServletResponse response) throws IOException {
        logger.info("Current file encoding: {}", System.getProperty("file.encoding"));
        logger.info("Translating text with DTO: {}", requestDTO);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=UTF-8");
        if (requestDTO.getTargetLang() == null || requestDTO.getTargetLang().isEmpty()) {
            throw new IllegalArgumentException("Target language must be specified.");
        }
        return translationService.translateText(requestDTO);
    }

    @RequestMapping(value = "/fileTranslate.do", method = RequestMethod.GET)
    public String showFileTranslate() {
        logger.info("Showing file translate page");
        return "tslService/fileTranslate";
    }

    @RequestMapping(value = "/fileTranslate.do", method = RequestMethod.POST)
    public void translateDocument(
            @RequestParam("file") MultipartFile file,
            @RequestParam("sourceLang") String sourceLang,
            @RequestParam("targetLang") String targetLang,
            HttpServletResponse response) throws IOException {
        logger.info("Translating document: file={}, sourceLang={}, targetLang={}", 
            new Object[]{file.getOriginalFilename(), sourceLang, targetLang});

        String fileName = file.getOriginalFilename();
        if (!fileName.endsWith(".txt") && !fileName.endsWith(".pdf") && !fileName.endsWith(".docx")) {
            logger.warn("Unsupported file format: {}", fileName);
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unsupported file format");
            return;
        }

        byte[] translatedFile = translationService.translateDocument(file, sourceLang, targetLang);
        logger.info("Translated file size: {} bytes", translatedFile.length);

        String contentType = fileName.endsWith(".txt") ? "text/plain; charset=UTF-8" :
                            fileName.endsWith(".pdf") ? "application/pdf" :
                            "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
        response.setContentType(contentType);
        response.setContentLength(translatedFile.length);

        String downloadFileName = "translated_" + fileName;
        String encodedFileName = URLEncoder.encode(downloadFileName, "UTF-8").replace("+", "%20");
        response.setHeader("Content-Disposition", "attachment; filename*=UTF-8''" + encodedFileName);

        try (var outputStream = response.getOutputStream()) {
            outputStream.write(translatedFile);
            outputStream.flush();
            logger.info("File sent to client successfully: {}", downloadFileName);
        } catch (IOException e) {
            logger.error("Error sending file to client: {}", e.getMessage(), e);
            throw e;
        }
    }
}
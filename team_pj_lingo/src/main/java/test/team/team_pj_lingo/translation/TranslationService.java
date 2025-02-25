package test.team.team_pj_lingo.translation;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface TranslationService {
    public TextTranslationResponseDTO translateText(TextTranslationRequestDTO requestDTO) 
    		throws IOException;
    public byte[] translateDocument(MultipartFile file, String sourceLang, String targetLang) 
    		throws IOException;
}
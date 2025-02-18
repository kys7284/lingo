package test.team.team_pj_lingo.translation;

import com.deepl.api.DeepLException;
import com.deepl.api.TextResult;
import com.deepl.api.Translator;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TranslationService {
	@Autowired
    private static final String API_KEY = "ff69440e-231d-4045-8946-8e32078265c7:fx";
    private final Translator translator;

    // 생성자
    public TranslationService() {
        this.translator = new Translator(API_KEY);
    }

    /**
     * 번역 요청을 처리하고 번역 결과를 반환합니다.
     *
     * @param request TextTranslationRequestDTO
     * @return TextTranslationResponseDTO
     * @throws DeepLException, InterruptedException
     */
    public TextTranslationResponseDTO translate(TextTranslationRequestDTO request)
            throws DeepLException, InterruptedException {
        // DeepL API를 사용하여 번역
        List<TextResult> translationResults = translator.translateText(
                request.getText(),          // 번역할 텍스트 목록
                "auto",                     // 소스 언어를 "auto"로 설정하여 자동 감지
                request.getTargetLang()     // 목표 언어
        );

        // 결과를 TextTranslationResponseDTO로 변환
        List<TextTranslationResponseDTO.Translation> translations = new ArrayList<>();
        for (TextResult result : translationResults) {
            translations.add(new TextTranslationResponseDTO.Translation(
                    result.getDetectedSourceLanguage(), // 감지된 소스 언어
                    result.getText()                    // 번역된 텍스트
            ));
        }

        // 결과 객체 생성 및 반환
        return new TextTranslationResponseDTO(translations);
    }
}

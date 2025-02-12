package test.team.team_pj_lingo.translation;

import com.deepl.api.DeepLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/translation")
public class TranslationController {

    private final TranslationService translationService;

    // 생성자 주입
    @Autowired
    public TranslationController(TranslationService translationService) {
        this.translationService = translationService;
    }

    @PostMapping("/text")
    public TextTranslationResponseDTO translateText(@RequestBody TextTranslationRequestDTO request)
            throws DeepLException, InterruptedException {
        return translationService.translate(request);
    }
}

package test.team.team_pj_lingo.translation;

import java.util.List;

public class TextTranslationResponseDTO {
    private List<Translation> translations;

    public TextTranslationResponseDTO() {}
    public TextTranslationResponseDTO(List<Translation> translations) {
        this.translations = translations;
    }

    public List<Translation> getTranslations() { return translations; }
    public void setTranslations(List<Translation> translations) { this.translations = translations; }

    public static class Translation {
        private String detectedSourceLanguage;
        private String text;

        // 기본 생성자 (Jackson 용)
        public Translation() {}

        // 파라미터 생성자 추가
        public Translation(String detectedSourceLanguage, String text) {
            this.detectedSourceLanguage = detectedSourceLanguage;
            this.text = text;
        }

        public String getDetectedSourceLanguage() { return detectedSourceLanguage; }
        public void setDetectedSourceLanguage(String detectedSourceLanguage) { this.detectedSourceLanguage = detectedSourceLanguage; }
        public String getText() { return text; }
        public void setText(String text) { this.text = text; }
    }
}
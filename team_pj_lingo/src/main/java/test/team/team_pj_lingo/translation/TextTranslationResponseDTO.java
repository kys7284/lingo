package test.team.team_pj_lingo.translation;

import java.util.List;

public class TextTranslationResponseDTO {
    private List<Translation> translations;   // 번역된 결과 목록


    public TextTranslationResponseDTO(List<Translation> translations) {
        this.translations = translations;
    }

    public List<Translation> getTranslations() {
        return translations;
    }

    public void setTranslations(List<Translation> translations) {
        this.translations = translations;
    }

    @Override
    public String toString() {
        return "TranslationResponse{" +
                "translations=" + translations +
                '}';
    }

    // 내부 클래스: 번역 결과 하나
    public static class Translation {
        private String detectedSourceLanguage;   // 감지된 소스 언어
        private String text;                     // 번역된 텍스트

        public Translation(String detectedSourceLanguage, String text) {
            this.detectedSourceLanguage = detectedSourceLanguage;
            this.text = text;
        }

        public String getDetectedSourceLanguage() {
            return detectedSourceLanguage;
        }

        public void setDetectedSourceLanguage(String detectedSourceLanguage) {
            this.detectedSourceLanguage = detectedSourceLanguage;
        }

        public String getText() {
            return text;
        }

        public void setText(String text) {
            this.text = text;
        }

        @Override
        public String toString() {
            return "Translation{" +
                    "detectedSourceLanguage='" + detectedSourceLanguage + '\'' +
                    ", text='" + text + '\'' +
                    '}';
        }
    }
}

package test.team.team_pj_lingo.translation;

public class LanguageDetectionRequestDTO {
    private String text;  // 감지할 텍스트

    // 생성자
    public LanguageDetectionRequestDTO(String text) {
        this.text = text;
    }

    // Getter 및 Setter
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}

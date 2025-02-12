package test.team.team_pj_lingo.translation;

public class LanguageDetectionResponseDTO {
    private String status;  // 응답 상태 (SUCCESS, FAIL 등)
    private String language;  // 감지된 언어

    // 생성자
    public LanguageDetectionResponseDTO(String status, String language) {
        this.status = status;
        this.language = language;
    }

    // Getter 및 Setter
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }
}

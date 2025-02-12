package test.team.team_pj_lingo.translation;

import java.util.List;

public class TextTranslationRequestDTO {
    private List<String> text;           // 번역할 텍스트 목록
    private String sourceLang;           // 소스 언어 (선택 사항: 생략 가능, 생략 시 자동 감지)
    private String targetLang;           // 목표 언어

    // 생성자, getter, setter, toString 등 추가

    public TextTranslationRequestDTO(List<String> text, String sourceLang, String targetLang) {
        this.text = text;
        this.sourceLang = sourceLang;
        this.targetLang = targetLang;
    }

    public List<String> getText() {
        return text;
    }

    public void setText(List<String> text) {
        this.text = text;
    }

    public String getSourceLang() {
        return sourceLang;
    }

    public void setSourceLang(String sourceLang) {
        this.sourceLang = sourceLang;
    }

    public String getTargetLang() {
        return targetLang;
    }

    public void setTargetLang(String targetLang) {
        this.targetLang = targetLang;
    }

    @Override
    public String toString() {
        return "TextTranslationRequestDTO{" +
                "text=" + text +
                ", sourceLang='" + sourceLang + '\'' +
                ", targetLang='" + targetLang + '\'' +
                '}';
    }
}

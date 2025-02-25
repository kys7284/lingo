package test.team.team_pj_lingo.translation;

import java.util.List;

public class TextTranslationRequestDTO {
    private List<String> text;		// 원본텍스트 
    private String sourceLang;		// 소스언어 'auto' 실시간 언어감지
    private String targetLang;		// 타겟언어 

    // 기본 생성자 (Jackson 요구사항)
    public TextTranslationRequestDTO() {}

    public List<String> getText() { return text; }
    public void setText(List<String> text) { this.text = text; }
    public String getSourceLang() { return sourceLang; }
    public void setSourceLang(String sourceLang) { this.sourceLang = sourceLang; }
    public String getTargetLang() { return targetLang; }
    public void setTargetLang(String targetLang) { this.targetLang = targetLang; }
}
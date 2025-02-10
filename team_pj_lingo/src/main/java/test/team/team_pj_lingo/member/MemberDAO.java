package test.team.team_pj_lingo.member;

import java.util.Map;

public interface MemberDAO {

	
	// ID 중복확인
	public int IdCheckAction(String mem_id);
	
	// 회원가입처리
	public int JoinAction(MemberDTO dto);
	
    // 로그인 처리 / 회원정보 인증 (ID, 비밀번호 확인)
    public int idPasswordChk(Map<String, Object> map);
	
	// 마이페이지
    public MemberDTO mypage(String mem_id);
    
    // 회원정보수정 처리
    public int mypageUpdateAction(MemberDTO dto);
    
    // 회원탈퇴 처리
    public int memberDeleteAction(Map<String, Object> map);
    
    // 사용자권한 체크
    public String statusCheck(String mem_id);
	
}

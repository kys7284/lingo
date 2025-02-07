package test.team.team_pj_lingo.admin;

import java.util.List;
import java.util.Map;

import test.team.team_pj_lingo.member.MemberDTO;

public interface AdminDAO {

	// 전체회원목록
	public List<MemberDTO>adminMemberList(Map<String, Object>map);
	
	// 전체 회원수
	public int adminMemberCount();
	
	// 회원탈퇴처리
	public int adminMemberDelete(int mem_no);
	
	// 관리자 등록
	public int adminInsert(MemberDTO dto);
	
	// id 중복확인
	public int IdCheckAction(String mem_id);
	
	// 관리자 목록
	public List<MemberDTO>adminList(Map<String, Object>map); 
	
	// 전체 관리자수
	public int adminCount();
	
	
	
}

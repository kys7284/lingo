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
	
	
	
	
	
	
}

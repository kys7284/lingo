package test.team.team_pj_lingo.admin;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.team.team_pj_lingo.member.MemberDTO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	
	@Autowired
	private SqlSessionTemplate sql;
	
	// 회원목록
	@Override
	public List<MemberDTO> adminMemberList(Map<String, Object> map) {
		
		List<MemberDTO> list = sql.selectList("test.team.team_pj_lingo.admin.AdminDAO.memberList", map);
		
		return list;
	}

	// 회원수
	@Override
	public int adminMemberCount() {
		
		int total = sql.selectOne("test.team.team_pj_lingo.admin.AdminDAO.memberCnt");
		
		return total;
	}

	@Override
	public int adminMemberDelete(int mem_no) {
		
		int deleteCnt = sql.delete("test.team.team_pj_lingo.admin.AdminDAO.adminMemberDelete", mem_no);
		
		return deleteCnt;
	}

	
	
	
}

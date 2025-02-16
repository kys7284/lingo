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

	// 회원추방
	@Override
	public int adminMemberDelete(int mem_no) {
		System.out.println("DAO");
		int deleteCnt = sql.delete("test.team.team_pj_lingo.admin.AdminDAO.adminMemberDelete", mem_no);
		System.out.println("deleteCnt : "+deleteCnt);
		return deleteCnt;
	}

	// 관리자 등록
	@Override
	public int adminInsert(MemberDTO dto) {

		int insertCnt = sql.insert("test.team.team_pj_lingo.admin.AdminDAO.adminInsert", dto);
		
		return insertCnt;
	}

	// ID 중복확인
	@Override
	public int IdCheckAction(String mem_id) {
		
		int selectCnt = sql.selectOne("test.team.team_pj_lingo.member.MemberDAO.IdCheckAction", mem_id);
		
		return selectCnt;
	}

	// 관리자목록
	@Override
	public List<MemberDTO> adminList(Map<String, Object> map) {

		List<MemberDTO> list = sql.selectList("test.team.team_pj_lingo.admin.AdminDAO.adminList", map);
		
		return list;
	}

	// 전체 관리자 수
	@Override
	public int adminCount() {
	
		int selectCnt = sql.selectOne("test.team.team_pj_lingo.admin.AdminDAO.adminCount");
		
		return selectCnt;
	}
	
	
}

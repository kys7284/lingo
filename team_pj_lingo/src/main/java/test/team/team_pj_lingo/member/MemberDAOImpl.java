package test.team.team_pj_lingo.member;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//private static final String s = "com.example.Lingo.mapper.MemberMapper";
	
	
	// 회원가입처리
	@Override
	public int JoinAction(MemberDTO dto) {
		System.out.println("DAO - JoinAction");
		
		int insertCnt = sqlSession.insert("test.team.team_pj_lingo.member.MemberDAO.JoinAction", dto);
		System.out.println("DAO - insertCnt"+insertCnt);
		System.out.println("dto : "+dto);
		return insertCnt;
	}

	// ID 중복확인
	@Override
	public int IdCheckAction(String mem_id) {
		System.out.println("DAO - IdCheckAction"); 
		
		int selectCnt = sqlSession.selectOne("test.team.team_pj_lingo.member.MemberDAO.IdCheckAction", mem_id);
		
		return selectCnt;
	}
	
    // 로그인 처리 (ID, 비밀번호 확인)
    @Override
    public int idPasswordChk(Map<String, Object> map) {
    	
    	System.out.println("DAO - idPasswordChk"); 
        return sqlSession.selectOne("test.team.team_pj_lingo.member.MemberDAO.idPasswordChk", map);
    }

    // 마이페이지
	@Override
	public MemberDTO mypage(String mem_id) {
		System.out.println("DAO - mypage"); 
		
		MemberDTO dto = sqlSession.selectOne("test.team.team_pj_lingo.member.MemberDAO.mypage", mem_id);
		
		return dto;
	}

	// 회원정보수정 처리
	@Override
	public int mypageUpdateAction(MemberDTO dto) {
		System.out.println("DAO - mypageUpdateAction"); 
		
		int updateCnt = sqlSession.update("test.team.team_pj_lingo.member.MemberDAO.mypageUpdateAction", dto);
		
		return updateCnt;
	}

	// 회원탈퇴처리
	@Override
	public int memberDeleteAction(Map<String, Object> map) {
		System.out.println("DAO - memberDeleteAction"); 
		
		int deleteCnt = sqlSession.delete("test.team.team_pj_lingo.member.MemberDAO.memberDeleteAction", map);
		System.out.println("DAO deleteCnt :" +deleteCnt);
		
		return deleteCnt;
	}

	@Override
	public String statusCheck(String mem_id) {

		String mem_status = sqlSession.selectOne("test.team.team_pj_lingo.member.MemberDAO.statusCheck", mem_id);
		
		return mem_status;
	}

	// 아이디 찾기
	@Override
	public String findMemberId(Map<String, Object> map) {
		System.out.println("DAO - findMemberId"); 
		
		String mem_name = sqlSession.selectOne("test.team.team_pj_lingo.member.MemberDAO.findMemberId", map);
		return mem_name;
	}

}

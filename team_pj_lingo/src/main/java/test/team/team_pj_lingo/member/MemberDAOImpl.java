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

}

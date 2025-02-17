package test.team.team_pj_lingo.shareInfo.travel;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class travelBoardDAOImpl implements travelBoardDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//게시글목록
	@Override
	public List<travelBoardDTO> travelBoardList(Map<String, Object> map) {
		System.out.println("DAO - travelBoardList");
		return sqlSession.selectList("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.travelBoardList",map);
	}
	//게시글 갯수 구하기
	@Override
	public int boardCnt() {
		System.out.println("DAO - boardCnt");
		return sqlSession.selectOne("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.boardCnt");
	}
	//조회수 증가
	@Override
	public void plusReadCnt(int tb_num) {
		System.out.println("DAO - plusReadCnt");
		sqlSession.update("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.plusReadCnt",tb_num);
	}
	//게시글 상세페이지
	@Override
	public travelBoardDTO travelBoardDetail(int tb_num) {
		System.out.println("DAO - travelBoardDetail");
		return sqlSession.selectOne("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.travelBoardDetail", tb_num);
	}
	//댓글목록처리
	@Override
	public List<travelBoardCommentDTO> travelCommentList(int tb_num) {
		System.out.println("DAO - travelCommentList");
		return sqlSession.selectList("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.travelCommentList", tb_num);
	}
	//댓글작성처리
	@Override
	public int insertComment(travelBoardCommentDTO dto) {
		System.out.println("DAO - insertComment");
		return sqlSession.insert("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.insertComment", dto);
	}
	
	//게시글 작성처리
	@Override
	public int insertTravelBoard(travelBoardDTO dto) {
		System.out.println("DAO - insertTravelBoard");
		return sqlSession.insert("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.insertTravelBoard", dto);
	}
	
	//게시글 비밀번호 인증
	@Override
	public int password_chk(Map<String, Object> map) {
		System.out.println("DAO - password_chk");
		return sqlSession.selectOne("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.password_chk",map);
	}
	//게시글 수정처리
	@Override
	public int updateTravelBoard(travelBoardDTO dto) {
		System.out.println("DAO - updateTravelBoard");
		return sqlSession.update("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.updateTravelBoard", dto);
	}
	//게시글 삭제처리
	@Override
	public int deleteTravelBoard(int tb_num) {
		System.out.println("DAO - deleteTravelBoard");
		return sqlSession.update("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.deleteTravelBoard", tb_num);
	}
	
	//검색결과 갯수
	@Override
	public int searchCnt(String tb_category) {
		System.out.println("DAO - searchCnt");
		return sqlSession.selectOne("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.searchCnt",tb_category);
	}
	
	//검색결과리스트
	@Override
	public List<travelBoardDTO> searchList(Map<String, Object> map) {
		System.out.println("DAO - searchList");
		return sqlSession.selectList("test.team.team_pj_lingo.shareInfo.travel.travelBoardDAO.searchList", map);
	}
	

}

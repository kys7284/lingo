package test.team.team_pj_lingo.shareInfo.low;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LowInfoDAOImpl implements LowInfoDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 게시글 목록
	@Override
	public List<LowInfoDTO> lowInfoList(Map<String, Object> map) {
		System.out.println("LowInfoDAOImpl - lowInfoList()");
		
		List<LowInfoDTO> list = sqlSession.selectList("test.team.team_pj_lingo.shareInfo.low.LowInfoDAO.lowInfoList", map);
		return list;
	}

	// 게시글 갯수 구하기
	@Override
	public int boardCnt() {
		System.out.println("LowInfoDAOImpl - boardCnt()");
		
		int total = sqlSession.selectOne("test.team.team_pj_lingo.shareInfo.low.LowInfoDAO.boardCnt");
		return total;
	}

	// 게시글 상세페이지
	@Override
	public LowInfoDTO lowInfoDetail(int slboard_num) {
		System.out.println("LowInfoDAOImpl - lowInfoDetail()");
		
		LowInfoDTO dto = sqlSession.selectOne("test.team.team_pj_lingo.shareInfo.low.LowInfoDAO.lowInfoDetail", slboard_num);
		return dto;
	}
	

	// 게시글 작성처리
	@Override
	public int insertLowInfo(LowInfoDTO dto) {
		System.out.println("LowInfoDAOImpl - insertLowInfo()");
		
		int insertCnt = sqlSession.insert("test.team.team_pj_lingo.shareInfo.low.LowInfoDAO.insertLowInfo", dto);
		return insertCnt;
	}

	// 게시글 삭제처리
	@Override
	public int deleteLowInfo(int slboard_num) {
		System.out.println("LowInfoDAOImpl - deleteLowInfo()");

		int deleteCnt = sqlSession.update("test.team.team_pj_lingo.shareInfo.low.LowInfoDAO.deleteLowInfo", slboard_num);
		
		return deleteCnt;
	}

	
	// 댓글 목록 화면
	@Override
	public List<LowInfoCommentDTO> lowInfoCommentList(int slboard_num) {
		System.out.println("LowInfoDAOImpl - lowInfoCommentList()");
		List<LowInfoCommentDTO> list = sqlSession.selectList("test.team.team_pj_lingo.shareInfo.low.LowInfoDAO.lowInfoCommentList", slboard_num);
		return list;
	}

	// 댓글 작성 처리
	@Override
	public int insertComment(LowInfoCommentDTO dto) {
		System.out.println("LowInfoDAOImpl - insertComment()");
		int insertCnt = sqlSession.insert("test.team.team_pj_lingo.shareInfo.low.LowInfoDAO.insertComment", dto);
		return insertCnt;
	}

}

package test.team.team_pj_lingo.freeBoard;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FreeBoardDAOImpl implements FreeBoardDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 게시글 목록
	@Override
	public List<FreeBoardDTO> freeBoardList(Map<String, Object> map) {
		System.out.println("FreeBoardDAOImpl - freeBoardList()");
		
		List<FreeBoardDTO> list = sqlSession.selectList("test.team.team_pj_lingo.freeBoard.FreeBoardDAO.freeBoardList", map);
		return list;
	}

	// 게시글 갯수 구하기
	@Override
	public int boardCnt() {
		System.out.println("FreeBoardDAOImpl - boardCnt()");
		
		int total = sqlSession.selectOne("test.team.team_pj_lingo.freeBoard.FreeBoardDAO.boardCnt");
		return total;
	}

	// 조회수 증가
	@Override
	public void plusReadCnt(int fb_num) {
		System.out.println("FreeBoardDAOImpl - plusReadCnt()");
		sqlSession.update("test.team.team_pj_lingo.freeBoard.FreeBoardDAO.plusReadCnt", fb_num);
	}

	// 게시글 상세페이지
	@Override
	public FreeBoardDTO freeBoardDetail(int fb_num) {
		System.out.println("FreeBoardDAOImpl - freeBoardDetail()");
		
		FreeBoardDTO dto = sqlSession.selectOne("test.team.team_pj_lingo.freeBoard.FreeBoardDAO.freeBoardDetail", fb_num);
		return dto;
	}

	// 게시글 수정 삭제시 비밀번호 인증
	@Override
	public int password_chk(Map<String, Object> map) {
		System.out.println("FreeBoardDAOImpl - password_chk()");
		return 0;
	}

	// 게시글 수정처리
	@Override
	public int updateFreeBoard(FreeBoardDTO dto) {
		System.out.println("FreeBoardDAOImpl - updateFreeBoard()");
		return 0;
	}

	// 게시글 삭제처리
	@Override
	public int deleteFreeBoard(int fb_num) {
		System.out.println("FreeBoardDAOImpl - deleteFreeBoard()");
		return 0;
	}

	// 게시글 작성처리
	@Override
	public int insertFreeBoard(FreeBoardDTO dto) {
		System.out.println("FreeBoardDAOImpl - insertFreeBoard()");
		
		int insertCnt = sqlSession.insert("test.team.team_pj_lingo.freeBoard.FreeBoardDAO.insertFreeBoard", dto);
		return insertCnt;
	}

	// 댓글 목록
	@Override
	public List<FreeBoardCommentDTO> freeCommentList(int fb_num) {
		System.out.println("FreeBoardDAOImpl - freeCommentList()");
		return null;
	}

	// 댓글 작성 처리
	@Override
	public int insertComment(FreeBoardCommentDTO dto) {
		System.out.println("FreeBoardDAOImpl - insertComment()");
		return 0;
	}

}

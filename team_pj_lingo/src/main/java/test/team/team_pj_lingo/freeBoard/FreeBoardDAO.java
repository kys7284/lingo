package test.team.team_pj_lingo.freeBoard;

import java.util.List;
import java.util.Map;

public interface FreeBoardDAO {
	
	//게시글 목록
	public List<FreeBoardDTO> freeBoardList(Map<String, Object> map);
	
	//게시글 갯수 구하기
	public int boardCnt();
	
	//조회수 증가
	public void plusReadCnt(int fb_num);
	
	//게시글 상세페이지
	public FreeBoardDTO freeBoardDetail(int fb_num);
	
	//게시글 수정 삭제시 비밀번호 인증
	public int password_chk(Map<String, Object> map);
	
	//게시글 수정처리
	public int updateFreeBoard(FreeBoardDTO dto);
	
	//게시글 삭제처리
	public int deleteFreeBoard(int fb_num);
	
	//게시글 작성처리
	public int insertFreeBoard(FreeBoardDTO dto);
	
	//댓글목록 처리
	public List<FreeBoardCommentDTO> freeCommentList(int fb_num);
	
	//댓글작성 처리
	public int insertComment(FreeBoardCommentDTO dto);
}

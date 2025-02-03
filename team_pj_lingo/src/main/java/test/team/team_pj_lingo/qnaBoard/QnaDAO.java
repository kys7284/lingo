package test.team.team_pj_lingo.qnaBoard;

import java.util.List;
import java.util.Map;

public interface QnaDAO {

	// 게시글 목록
	public List<QnaDTO> qnaList(Map<String, Object> map);
	
	// 게시글 갯수 구하기
	public int qnaCnt();
	
	// 조회수 증가
	public void plusReadCnt(int b_num);
	
	// 게시글 상세페이지
	public QnaDTO getQnaDetail(int b_num);
	
	// 게시글 수정 삭제시 비밀번호 인증
	public int password_chk(Map<String, Object> map);
	
	// 게시글 수정처리
	public int updateQna(QnaDTO dto);
	
	// 게시글 삭제처리
    public int deleteQna(int b_num);
    
    // 게시글 작성 처리
    public int insertQna(QnaDTO dto);
    
    // 댓글작성 처리
    public int insertComment(QnaCommentDTO dto);
    
    // 댓글목록 처리
	public List<QnaCommentDTO> commentList(int board_num);

}

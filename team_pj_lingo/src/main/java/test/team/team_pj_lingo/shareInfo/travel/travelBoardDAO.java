package test.team.team_pj_lingo.shareInfo.travel;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

public interface travelBoardDAO {
	
	//게시글목록
	public List<travelBoardDTO> travelBoardList(Map<String,Object> map);
	
	//게시글 갯수 구하기
	public int boardCnt();
	
	//조회수 증가
	public void plusReadCnt(int tb_num);
	
	//게시글 상세페이지
	public travelBoardDTO travelBoardDetail(int tb_num);
	
	//댓글목록처리
	public List<travelBoardCommentDTO> travelCommentList(int tb_num);

	//댓글작성처리
	public int insertComment (travelBoardCommentDTO dto);
	
	//게시글 비밀번호 인증
	public int password_chk(Map<String,Object> map);
	
	//게시글 수정처리
	public int updateTravelBoard(travelBoardDTO dto);
	
	//게시글 삭제처리
	public int deleteTravelBoard(Map<String,Object> map);
	
	//게시글 작성처리
	public int insertTravelBoard (travelBoardDTO dto); 
}

package test.team.team_pj_lingo.shareInfo.low;

import java.util.List;
import java.util.Map;

public interface LowInfoDAO {
	
	//게시글 목록
	public List<LowInfoDTO> lowInfoList(Map<String, Object> map);
	
	//게시글 갯수 구하기
	public int boardCnt();
	
	//게시글 상세페이지
	public LowInfoDTO lowInfoDetail(int slboard_num);
	
	//게시글 작성처리
	public int insertLowInfo(LowInfoDTO dto);
	
	//게시글 삭제처리
	public int deleteLowInfo(int slboard_num);

	//댓글목록 처리
	public List<LowInfoCommentDTO> lowInfoCommentList(int slboard_num);
	
	//댓글작성 처리
	public int insertComment(LowInfoCommentDTO dto);
}

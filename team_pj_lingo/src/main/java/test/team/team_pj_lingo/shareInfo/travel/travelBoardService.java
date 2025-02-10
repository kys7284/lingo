package test.team.team_pj_lingo.shareInfo.travel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


public interface travelBoardService {

	//게시글 목록
	public void travelListAction(HttpServletRequest request, HttpServletResponse response, Model model);
	
	//게시글 상세페이지
	public void travelDetailAction(HttpServletRequest request, HttpServletResponse response, Model model);
	
	//게시글 댓글목록 처리
	public void travelCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model);
	
	//게시글 댓글작성 처리
	public void travelCommentAddAction(HttpServletRequest request, HttpServletResponse response, Model model);
	
	//게시글 수정&삭제시 비밀번호 인증
	public int password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model);

	//게시글 수정처리
	public void travelUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model);
	
	//게시글 삭제처리
	public void travelDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model);
	
	//게시글 작성처리
	public void travelInsertAction(HttpServletRequest request, HttpServletResponse response, Model model);
}	

package test.team.team_pj_lingo.freeBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FreeBoardService {
	
	//게시글 목록
	public void freeListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//게시글 상세페이지
	public void freeDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//게시글 수정 삭제시 비밀번호 인증
	public int password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//게시글 수정처리
	public void freeUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//게시글 삭제처리
	public void freeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//게시글 작성처리
	public void freeInsertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//댓글목록 처리
	public void freeCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//댓글작성 처리
	public void freeCommentAddAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
}

package test.team.team_pj_lingo.shareInfo.low;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface LowInfoService {
	
	//게시글 목록
	public void lowListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//게시글 상세페이지
	public void lowDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	
	//게시글 작성처리
	public void lowInsertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//게시글 삭제처리
	public void lowDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;

//	//댓글목록 처리
//	public void lowCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model)
//			throws ServletException, IOException;
//	
//	//댓글작성 처리
//	public void lowCommentAddAction(HttpServletRequest request, HttpServletResponse response, Model model)
//			throws ServletException, IOException;
	
}

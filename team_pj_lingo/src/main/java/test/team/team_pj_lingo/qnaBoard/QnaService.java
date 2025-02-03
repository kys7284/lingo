package test.team.team_pj_lingo.qnaBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface QnaService {
	
	// 게시글 목록
	public void qnaListAction(HttpServletRequest request, HttpServletResponse response, Model model)
	                throws ServletException, IOException;
	
	// 게시글 상세페이지
	public void qnaDetailAction(HttpServletRequest request, HttpServletResponse response,  Model model)
            throws ServletException, IOException;
	
	// 게시글 수정 삭제시 비밀번호 인증
	public int password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model)
            throws ServletException, IOException;
	
	// 게시글 수정처리
	public void qnaUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
            throws ServletException, IOException;
	
	// 게시글 삭제처리
	public void qnaDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
            throws ServletException, IOException;
	
	// 게시글 작성 처리
	public void qnaInsertAction(HttpServletRequest request, HttpServletResponse response, Model model)
            throws ServletException, IOException;
	
	// 댓글작성 처리
	public void commentAddAction(HttpServletRequest request, HttpServletResponse response, Model model)
            throws ServletException, IOException;
	
	// 댓글목록 처리
	public void commentListAction(HttpServletRequest request, HttpServletResponse response, Model model)
            throws ServletException, IOException;


}

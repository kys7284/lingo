package test.team.team_pj_lingo.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface NoticeService {

	//공지사항 목록
	public void noticeListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//공지사항 상세페이지
	public void noticeDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//공지사항 수정처리
	public void noticeUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//공지사항 삭제처리
	public void noticeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	//공지사항 작성처리
	public void noticeInsertAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
}

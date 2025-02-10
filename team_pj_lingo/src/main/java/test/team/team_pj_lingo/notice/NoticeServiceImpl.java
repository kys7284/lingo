package test.team.team_pj_lingo.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO dao;
	
	//공지사항 목록
	@Override
	public void noticeListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeListAction");
		
	}

	//공지사항 상세페이지
	@Override
	public void noticeDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeDetailAction");
		
	}

	//공지사항 수정처리
	@Override
	public void noticeUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeUpdateAction");
		
	}

	//공지사항 삭제처리
	@Override
	public void noticeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeDeleteAction");
		
	}

	//공지사항 작성처리
	@Override
	public void noticeInsertAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeInsertAction");
		
	}

}

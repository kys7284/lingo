package test.team.team_pj_lingo.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl service;
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	String viewPage = "";
	
	//공지사항 목록
	@RequestMapping("/notice_list.no")
	public String notice_list(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		logger.info("<<< url ==>  /notice_list.no >>>");
		
		service.noticeListAction(request, response, model);
		return "madang/notice/notice_list";
	}
	
	//공지사항 목록
	@RequestMapping("/notice_detailAction.no")
	public String notice_detailAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		logger.info("<<< url ==>  /notice_detailAction.no >>>");
		
		service.noticeDetailAction(request, response, model);
		return "madang/notice/notice_detailAction";
	}
	
}

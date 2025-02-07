package test.team.team_pj_lingo.admin;

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
public class AdminContoroller {
	
	@Autowired
	private AdminService service;

	private static final Logger logger = LoggerFactory.getLogger(AdminContoroller.class);
	
	// 관리자페이지 이동
	@RequestMapping("adminAction.ad")
	public String adminAction(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		
		return "admin/adminAction";
	}
	
	// 회원목록 페이지
	@RequestMapping("adminMemberList.ad")
	public String adminMemberList(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		service.adminMemberList(reqeust, response, model);
		
		return "admin/adminMemberList";
	}
	
	// 회원추방처리
	@RequestMapping("adminMemberDelete.ad")
	public String adminMemberDelete(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		service.adminMemberDelete(reqeust, response, model);
		
		return "admin/adminMemberDeleteAction";
	}
	
	
	
	
	// 게시판목록 페이지
	
	// 게시글 삭제처리
	
	
	// 공지사항목록 페이지
	
	
	// 공지사항 추가
	
	// 공지사항 수정
	
	
	// 공지사항 삭제
	
	
	
}

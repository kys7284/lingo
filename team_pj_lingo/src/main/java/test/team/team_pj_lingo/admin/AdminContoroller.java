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

import test.team.team_pj_lingo.freeBoard.FreeBoardService;
import test.team.team_pj_lingo.notice.NoticeService;


@Controller
public class AdminContoroller {
	
	@Autowired
	private AdminService service;
	
	@Autowired
	private FreeBoardService freeService;
	
	@Autowired
	private NoticeService noticeService;

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
	
	// 관리자 등록화면
	@RequestMapping("insertAdmin.ad")
	public String insertAdmin(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		
		return "admin/adminInsert";
	}
	
	// 관리자 등록화면
	@RequestMapping("insertAdminAction.ad")
	public String insertAdminAction(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		service.insertAdminAction(reqeust, response, model);
		
		return "admin/adminInsertAction";
	}
	
	// 관리자 목록
	@RequestMapping("adminList.ad")
	public String adminList(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		service.adminList(reqeust, response, model);
		
		return "admin/adminList";
	}
	
	// 게시판목록 페이지
	@RequestMapping("adminBoardList.ad")
	public String adminBoardList(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		freeService.freeListAction(reqeust, response, model);
		
		return "admin/adminBoardList";
	}
	
	
	// 게시글 삭제처리
	
	
	// 공지사항목록 페이지
	@RequestMapping("adminNoticeList.ad")
	public String adminNoticeList(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		noticeService.noticeListAction(reqeust, response, model);
		
		return "admin/adminNoticeList";
	}
	
	// 공지사항 작성화면
	@RequestMapping("adminNoticeInsert.ad")
	public String adminNoticeInsert(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		return "admin/adminNoticeInsert";
	}
	
	// 공지사항 작성처리
	@RequestMapping("adminNoticeInsertAction.ad")
	public String adminNoticeInsertAction(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		noticeService.noticeInsertAction(reqeust, response, model);
		
		return "admin/adminNoticeAction";
	}
	
	// 공지사항 수정/삭제 화면
	@RequestMapping("adminNoticeDetail.ad")
	public String adminNoticeDetail(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		noticeService.noticeDetailAction(reqeust, response, model);
		
		return "admin/adminNoticeDetail";
	}
	
	// 공지사항 수정처리
	@RequestMapping("adminNoticeUpdate.ad")
	public String adminNoticeUpdate(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		noticeService.noticeUpdateAction(reqeust, response, model);
		
		return "admin/adminNoticeAction";
	}
	
	// 공지사항 삭제처리
	@RequestMapping("adminNoticeDelete.ad")
	public String adminNoticeDelete(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		noticeService.noticeDeleteAction(reqeust, response, model);
		
		return "admin/adminNoticeAction";
	}
	
	
	
}

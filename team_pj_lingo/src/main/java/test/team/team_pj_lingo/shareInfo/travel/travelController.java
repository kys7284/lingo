package test.team.team_pj_lingo.shareInfo.travel;

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
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class travelController {
	
	private static final Logger logger = LoggerFactory.getLogger(travelController.class);
	
	@Autowired
	private travelBoardService service;
	
	// 여행정보공유 리스트
	@RequestMapping("travelInfo.tc")
	public String travelInfo(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		logger.info("Controller - travleInfo.tc");
		service.travelListAction(reqeust, response, model);
		
		return "board/shareInfo/travelInfo/travelBoard/travelShareList";
	}
	
	// 여행정보공유 상세페이지
	@RequestMapping("travelDetailAction.fb")
	public String travelDetailAction(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		logger.info("Controller - travelDetailAction.tc");
		service.travelDetailAction(reqeust, response, model);
		
		return "board/shareInfo/travelInfo/travelBoard/travelShareDetail";
	}
	
	// 여행정보공유 댓글목록페이지
	@RequestMapping("travel_comment_list.fb")
	public String travel_comment_list(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		logger.info("Controller - travel_comment_list.tc");
		service.travelCommentListAction(reqeust, response, model);
		
		return "board/shareInfo/travelInfo/travelBoard/travel_comment_list";
	}
	
	// 여행정보공유 댓글작성
	@RequestMapping("insertComment.tc")
	public String insertComment(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		logger.info("Controller - insertComment.tc");
		service.travelCommentAddAction(reqeust, response, model);
		
		return "board/shareInfo/travelInfo/travelBoard/travel_comment_list";
	}
	
	//여행정보공유 글 작성 페이지
	@RequestMapping("travel_board_insert.tc")
	public String travel_board_insert(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		logger.info("Controller - travel_board_insert.tc");
		
		return "board/shareInfo/travelInfo/travelBoard/travelboard_insert";
	}
	
	//여행정보공유 글 작성 처리페이지
	@RequestMapping("travel_board_insertAction.tc")
	public String travel_board_insertAction(MultipartHttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		logger.info("Controller - travel_board_insert.tc");
		service.travelInsertAction(reqeust, response, model);
		
		return "board/shareInfo/travelInfo/travelBoard/travelInsert_Action";
	}
	
}

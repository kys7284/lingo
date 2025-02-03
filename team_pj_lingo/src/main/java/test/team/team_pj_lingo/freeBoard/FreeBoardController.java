package test.team.team_pj_lingo.freeBoard;

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
public class FreeBoardController {
	
	@Autowired
	private FreeBoardServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(FreeBoardController.class);
	
	String viewPage = "";
	
	// 게시글목록
	@RequestMapping("/free_board_list.fb")
	public String free_board_list(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		logger.info("<<< url ==>  /free_board_list.fb >>>");
		service.freeListAction(request, response, model);
		
		return "board/freeBoard/free_board_list";
	}
	
	// 게시글 상세페이지
	@RequestMapping("/freeDetailAction.fb")
	public String freeDetailAction(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		logger.info("<<< url ==>  /freeDetailAction.fb >>>");
		service.freeDetailAction(request, response, model);
		
		return "board/freeBoard/free_board_detailAction";
	}
	
	// 게시글 작성 화면
	@RequestMapping("/free_board_insert.fb") 
	public String free_board_insert(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		logger.info("<<url = /free_board_insert.fb>>");
		
		return "board/freeBoard/free_board_insert";
	}
	
	// 게시글 작성 처리
	@RequestMapping("/free_board_insertAction.fb") 
	public String free_board_insertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		logger.info("<<url = /free_board_insertAction.fb>>");
		service.freeInsertAction(request, response, model);
		
		return "board/freeBoard/free_board_insertAction";
	}
	

}

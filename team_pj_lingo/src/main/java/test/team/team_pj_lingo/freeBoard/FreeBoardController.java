package test.team.team_pj_lingo.freeBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	// 댓글 목록 화면
	@RequestMapping("/free_comment_list.fb") 
	public String free_comment_list(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		logger.info("<<url = /free_comment_list.fb>>");
		service.freeCommentListAction(request, response, model);
		
		return "board/freeBoard/free_comment_list";
	}
	
	// 댓글 작성처리
	@RequestMapping("/insertComment.fb") 
	public String insertComment(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		logger.info("<<url = /insertComment.fb>>");
		service.freeCommentAddAction(request, response, model);
		
		return "board/freeBoard/free_comment_list";
	}
	
	// [게시글 수정/삭제 버튼] 클릭시 비밀번호 인증처리
	@RequestMapping("/password_chkAction.fb")
	public String password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		logger.info("<<url = /password_chkAction.fb>>");
		int result = service.password_chkAction(request, response, model);
		String pageNum = request.getParameter("hiddenPageNum");
		model.addAttribute("pageNum", pageNum);
		
		
		System.out.println(result);
		if(result == 0) {
			logger.info("비밀번호 불일치 !");
			int fb_num = Integer.parseInt(request.getParameter("hidden_fb_num"));
			
			viewPage = request.getContextPath() + "/freeDetailAction.fb?fb_num=" + fb_num + "&message=error";
			response.sendRedirect(viewPage);
			
		}		
		
		return "board/freeBoard/free_board_edit";
	}
	
	// 게시글 수정 처리	
	@RequestMapping("/free_board_updateAction.fb")
	public String ad_product_updateAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		
		logger.info("<<<< url ==> /free_board_updateAction.fb  >>>>");
		
		
		
		service.freeUpdateAction(request, response, model);

		return "board/freeBoard/free_board_updateAction";
	}
	
	
	
	// 2025 02 07 금요일 검색기능 추가
	@RequestMapping(value = "/search.fb", method = RequestMethod.GET)
	public void getSearch(
			
			
			  Model model,
			  @RequestParam(value = "searchType", required = false, defaultValue = "")String searchType,
			  @RequestParam(value = "keyword", required = false, defaultValue = "")String keyword
			  ) throws Exception{
		
				logger.info("<<url = /search.fb>>");
				List<FreeBoardDTO> list = null;
				list = service.search(searchType, keyword);				
				model.addAttribute("list", list);
	}		  
	

	
	
			  
			
	
}

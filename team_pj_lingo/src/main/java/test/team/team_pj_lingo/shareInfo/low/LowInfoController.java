package test.team.team_pj_lingo.shareInfo.low;

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
public class LowInfoController {
	
	@Autowired
	private LowInfoServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(LowInfoController.class);
	
	String viewPage = "";
	
	// 법률정보페이지
	@RequestMapping("/low.eq")
	public String low(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /low.eq >>>");

		
		return "board/shareInfo/lowInfo/lowQna";
	}
	
	// 생활속 법률		
	@RequestMapping("/findLowQna.eq")
		public String findCulture(HttpServletRequest request,  HttpServletResponse response, Model model)
				throws ServletException, IOException{
			logger.info("<<< url ==>  /findLowQna.eq >>>");
			
			
			return "board/shareInfo/lowInfo/findLowQna";
		}
	
	// 관련사이트 안내		
	@RequestMapping("/findLowSite.eq")
		public String custom(HttpServletRequest request,  HttpServletResponse response, Model model)
				throws ServletException, IOException{
			logger.info("<<< url ==>  /findLowSite.eq >>>");
			
			
			return "board/shareInfo/lowInfo/findLowSite";
		}
	
	// 도움요청
		@RequestMapping("/helpMe.eq")
			public String helpMe(HttpServletRequest request,  HttpServletResponse response, Model model)
					throws ServletException, IOException{
				logger.info("<<< url ==>  /helpMe.eq >>>");
				
				service.lowListAction(request, response, model);
				return "board/shareInfo/lowInfo/helpMe";
			}
		
//===================================================================================
		
		
		// 게시글 상세페이지
		@RequestMapping("/slDetailAction.eq")
		public String slDetailAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
			logger.info("<<< url ==>  /slDetailAction.eq >>>");
			
			service.lowDetailAction(request, response, model);

			return "board/shareInfo/lowInfo/helpMe";
		}
		
		// 게시글 작성 처리
		@RequestMapping("/sl_borad_insertAction.eq") 
		public String sl_borad_insertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model) 
				throws ServletException, IOException{
			logger.info("<<url = /sl_borad_insertAction.eq>>");
			
			service.lowInsertAction(request, response, model);
			
			return "board/shareInfo/lowInfo/helpMe";
		}
		
		// 게시글 삭제 처리
				@RequestMapping("/sl_borad_deleteAction.eq") 
				public String sl_borad_deleteAction(HttpServletRequest request, HttpServletResponse response, Model model) 
						throws ServletException, IOException{
					logger.info("<<url = /sl_borad_deleteAction.eq>>");
					
					String slboardNumStr = request.getParameter("slboard_num");

				    // `null` 또는 빈 값이 들어올 경우 방지
				    if (slboardNumStr == null || slboardNumStr.isEmpty()) {
				        logger.error("삭제할 게시글 번호가 전달되지 않았습니다.");
				        return "redirect:/helpMe.eq";  // 오류 발생 시 안전하게 리다이렉트
				    }

				    int slboardNum = Integer.parseInt(slboardNumStr);
				  
				    service.lowDeleteAction(request, response, model);
					
					return "board/shareInfo/lowInfo/helpMe" ;
				}
		
		// 댓글 목록 화면
		@RequestMapping("/sl_borad_comment_list.eq") 
		public String lowCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model) 
				throws ServletException, IOException{
			logger.info("<<url = /sl_borad_comment_list.eq>>");
			
			service.lowCommentListAction(request, response, model);

			return "board/shareInfo/lowInfo/low_comment_list";
		}
		
		// 댓글 작성처리
		@RequestMapping("/insertComment.eq") 
		public String insertComment(HttpServletRequest request, HttpServletResponse response, Model model) 
				throws ServletException, IOException{
			logger.info("<<url = /insertComment.eq>>");
			service.lowCommentAddAction(request, response, model);
			
			return "board/shareInfo/lowInfo/helpMe";
		}
}	
	

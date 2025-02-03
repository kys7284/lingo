package test.team.team_pj_lingo.qnaBoard;

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

import test.team.team_pj_lingo.member.MemberServiceImpl;

@Controller
public class QndboardController {
	
	private static final Logger logger = LoggerFactory.getLogger(QndboardController.class);
	
	@Autowired
	private QnaServiceImpl service;
	
	String viewPage = "";
	
	
	
		// 생활정보
		@RequestMapping("/life.eq")
		public String life(){
			logger.info("<<< url ==>  /life.eq >>>");
			
			return "board/qnaboard/life";
		}
			

			// 생활정보 목록
			
			@RequestMapping("/life_list.eq")
			public String life_list(HttpServletRequest request,  HttpServletResponse response, Model model)
					throws ServletException, IOException{
				
				logger.info("<<<< url ==> /life_list.eq  >>>>");

				service.qnaListAction(request, response, model);
			
				return "board/qnaboard/life";
			}
			// 생활정보 답글 목록
			
			@RequestMapping("/comment_list.eq")
			public String comment_list(HttpServletRequest request,  HttpServletResponse response, Model model)
					throws ServletException, IOException{
				
				logger.info("<<<< url ==> /comment_list.eq  >>>>");
				
				service.commentListAction(request, response, model);
	
				return "board/qnaboard/life";
			}
			
			// 생활정보 답글 처리
			@RequestMapping("/comment_insert.eq")
			public String comment_insert(HttpServletRequest request, HttpServletResponse response, Model model)
					throws ServletException, IOException{
				
				logger.info("<<<< url ==> /comment_insert.eq  >>>>");
				
				service.commentAddAction(request, response, model);
						
				return null;
			}
			
			
			
			// 생활정보 문의 상세페이지
			
			@RequestMapping("/life_detailAction.eq")
			public String life_detailAction(HttpServletRequest request,  HttpServletResponse response, Model model)
					throws ServletException, IOException{
				
				logger.info("<<<< url ==> /life_detailAction.eq  >>>>");
				
				service.qnaDetailAction(request, response, model);

				return "board/qnaboard/life_detailAction";
			}
			
			// 비밀번호 체크
			@RequestMapping("/password_chkAction.eq")
			public String password_chkAction(HttpServletRequest request,  HttpServletResponse response,  Model model)
					throws ServletException, IOException{
				
				logger.info("<<<< url ==> /password_chkAction.eq  >>>>");
				
				int result = service.password_chkAction(request, response, model);
				
				if(result != 0) {
					return "board/qnaboard/life__edit";
					
				}else {
					System.out.println("비밀번호 불일치");
					
					int b_num = Integer.parseInt(request.getParameter("hidden_b_num"));
					
					viewPage = request.getContextPath()+ "/life_detailAction.bc?b_num=" + b_num + "&message=error";
					response.sendRedirect(viewPage);
					return null;
				}
			}
				
			
				// 생활정보 문의하기 수정하기
				
				@RequestMapping("/life_updateAction.eq")
				public String life_updateAction(HttpServletRequest request,HttpServletResponse response, Model model)
						throws ServletException, IOException{
					
					logger.info("<<<< url ==> /life_updateAction.eq  >>>>");
					
					service.qnaUpdateAction(request, response, model);
					
					
					viewPage = request.getContextPath()+ "/life_list.eq";
					response.sendRedirect(viewPage);
					return null;
				}		
				
				
				// 생활정보문의 삭제하기
				
				@RequestMapping("/life_deleteAction.eq")
				public String life_deleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
						throws ServletException, IOException{
					
					logger.info("<<<< url ==> /life_deleteAction.eq  >>>>");
					
					service.qnaDeleteAction(request, response, model);
					
					viewPage = request.getContextPath()+ "/life.eq";
					response.sendRedirect(viewPage);
					return null;
				}		
				
				// 생활정보문의 추가

				@RequestMapping("/life_insert.eq")
				public String life_insert(HttpServletRequest request, HttpServletResponse response, Model model)
						throws ServletException, IOException{
					
					logger.info("<<<< url ==> /life_insert.eq  >>>>");
					

					return "board/qnaboard/life_insert";
				}		
				
				
				// 생활정보문의 추가처리
				@RequestMapping("/life_insertAction.eq")
				public String life_insertAction(HttpServletRequest request, HttpServletResponse response, Model model)
						throws ServletException, IOException{
					
					logger.info("<<<< url ==> /life_insertAction.eq  >>>>");
					
					service.qnaInsertAction(request, response, model);
					
					viewPage = request.getContextPath()+ "/life.bc";
					response.sendRedirect(viewPage);
					return null;
				}		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		// 여행정보
		@RequestMapping("/travle.eq")
		public String travle(){
			logger.info("<<< url ==>  /travle.eq >>>");
					
			return "qnaboard/travle";
		}			
				

		// 의료정보
		@RequestMapping("/medical.eq")
		public String medical(){
			logger.info("<<< url ==>  /medical.eq >>>");
			
			return "qnaboard/medical";
		}
		
		// 법률정보
		@RequestMapping("/law.eq")
		public String law(){
			logger.info("<<< url ==>  /law.eq >>>");
			
			return "qnaboard/law";
		}		

	


	
	
}
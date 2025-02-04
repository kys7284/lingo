package test.team.team_pj_lingo.member;

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
public class memberController {
	
	private static final Logger logger = LoggerFactory.getLogger(memberController.class);
	
	@Autowired
	private MemberServiceImpl service;
	
	
	// 첫페이지
	@RequestMapping("/main.do")
	public String main(){
		logger.info("<<< url ==>  /main.do >>>");
		
		return "common/main";
	}
	
	// 첫페이지
		@RequestMapping("/join.do")
		public String join(){
			logger.info("<<< url ==>  /join.do >>>");
			
			return "member/join/join";
		}
	
	// id 중복체크
	@RequestMapping("/idConfirmAction.do")
	public String idCheckAction(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException {
		logger.info("<<< url ==>  /idCheckAction.do >>>");
		
		service.IdCheckAction(request, response, model);
		
		return "member/join/idConfirmAction";
	}
	
	// 회원가입처리
	@RequestMapping("/joinAction.do")
	public String joinAction(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException {
		logger.info("<<< url ==>  /joinAction.do >>>");
		
		service.JoinAction(request, response, model);
		
		return "member/join/joinAction";
	}
	
    // 로그인 처리
    @RequestMapping("/login.do")
    public String login() {
        logger.info("<<< url ==> /member/login.do >>>");
        return "member/login/login";
    }
    
    
    @RequestMapping("/loginAction.do")
    public String loginAction(HttpServletRequest request, HttpServletResponse response,  Model model) 
    		throws ServletException, IOException {
        logger.info("<<< url ==> /member/loginAction.do >>>");
        service.loginAction(request, response, model);
        return "member/login/loginAction";
    }
	
	// 마이페이지
	@RequestMapping("/mypage.do")
	public String mypage(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException {
		logger.info("<<< url ==>  /mypage.do >>>");
		
		service.mypage(request, response, model);
		
		return "member/mypage/mypage";
	}
	
	// 회원정보수정 화면
	@RequestMapping("/mypageUpdate.do")
	public String mypageUpdate(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException {
		logger.info("<<< url ==>  /mypageUpdate.do >>>");
		
		service.mypage(request, response, model);
		
		return "member/mypage/mypageUpdate";
	}
	
	// 회원정보수정 처리
	@RequestMapping("/mypageUpdateAction.do")
	public String mypageUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException {
		logger.info("<<< url ==>  /mypageUpdateAction.do >>>");
		
		service.mypageUpdateAction(request, response, model);
		
		return "member/mypage/mypageUpdateAction";
	}
	
	// 회원탈퇴화면
	@RequestMapping("/memberDelete.do")
	public String memberDelete(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException {
		logger.info("<<< url ==>  /memberDelete.do >>>");
		
		return "member/mypage/memberDelete";
	}
	
	// 회원탈퇴처리
	@RequestMapping("/memberDeleteAction.do")
	public String memberDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException {
		logger.info("<<< url ==>  /memberDeleteAction.do >>>");
		
		service.memberDeleteAction(request, response, model);
		
		return "member/mypage/memberDeleteAction";
	}
	
	

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException {
		logger.info("<<< url ==>  /logout.do >>>");
		
		request.getSession().invalidate();
		return "common/main";
	}
	
	
	// 텍스트 번역
	@RequestMapping("/textTranslate.do")
	public String textTranslate(){
		logger.info("<<< url ==>  /textTranslate.do >>>");
		
		return "tslService/textTranslate";
	}
	
	// 서류번역
	@RequestMapping("/fileTranslate.do")
	public String fileTranslate(){
		logger.info("<<< url ==>  /fileTranslate.do >>>");
		
		return "tslService/fileTranslate";
	}
	
	
	
	
	
	
	
}
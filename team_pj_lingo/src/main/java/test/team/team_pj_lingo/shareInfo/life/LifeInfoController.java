package test.team.team_pj_lingo.shareInfo.life;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LifeInfoController {
	private static final Logger logger = LoggerFactory.getLogger(LifeInfoController.class);
	
	String viewPage = "";
	
	// 생활정보페이지
	@RequestMapping("/life.eq")
	public String life(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /life.eq >>>");
		
		
		return "board/shareInfo/lifeInfo/home/life";
	}
	
	// 생활정보-집구하기
	@RequestMapping("/lifeHome.eq")
	public String lifeHome(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /lifeHome.eq >>>");
		
		
		return "board/shareInfo/lifeInfo/home/findHome";
	}
	
	// 생활정보-전기가스수도
	@RequestMapping("/lifeEGW.eq")
	public String lifeEGW(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /lifeEGW.eq >>>");
		
		
		return "board/shareInfo/lifeInfo/home/elecGasWater";
	}
	// 생활정보-통신
	@RequestMapping("/lifetelecom.eq")
	public String lifetelecom(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /lifetelecom.eq >>>");
		
		
		return "board/shareInfo/lifeInfo/home/telecom";
	}
	
	// 생활정보-분리수거
	@RequestMapping("/liferecycling.eq")
	public String lifrecycling(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /lifrecycling.eq >>>");
		
		
		return "board/shareInfo/lifeInfo/home/recycling";
	}
//--------------------------------------------------------------------------
	
	// 취업정보페이지
	@RequestMapping("/employment.eq")
	public String employment(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /employment.eq >>>");
		
		return "board/shareInfo/lifeInfo/employment/employment";
	}
	
	// 취업정보-취업
	@RequestMapping("/job.eq")
	public String job(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /job.eq >>>");
		
		return "board/shareInfo/lifeInfo/employment/job";
	}
	
	// 취업정보-고용보험
	@RequestMapping("/employInsurance.eq")
	public String employInsurance(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /employInsurance.eq >>>");
		
		return "board/shareInfo/lifeInfo/employment/employInsurance";
	}
	
	// 취업정보-산업재해보험
	@RequestMapping("/accidentInsurance.eq")
	public String accidentInsurance(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /accidentInsurance.eq >>>");
		
		return "board/shareInfo/lifeInfo/employment/accidentInsurance";
	}

//--------------------------------------------------------------------------
	
	// 한국인의 문화/관습 페이지		
	@RequestMapping("/culture.eq")
		public String culture(HttpServletRequest request,  HttpServletResponse response, Model model)
				throws ServletException, IOException{
			logger.info("<<< url ==>  /culture.eq >>>");
			
			
			return "board/shareInfo/lifeInfo/culture/culture";
		}
	
	// 한국인의 문화		
	@RequestMapping("/findCulture.eq")
		public String findCulture(HttpServletRequest request,  HttpServletResponse response, Model model)
				throws ServletException, IOException{
			logger.info("<<< url ==>  /findCulture.eq >>>");
			
			
			return "board/shareInfo/lifeInfo/culture/findCulture";
		}
	
	// 한국인의 관습		
	@RequestMapping("/findCustom.eq")
		public String custom(HttpServletRequest request,  HttpServletResponse response, Model model)
				throws ServletException, IOException{
			logger.info("<<< url ==>  /findCustom.eq >>>");
			
			
			return "board/shareInfo/lifeInfo/culture/findCustom";
		}
}

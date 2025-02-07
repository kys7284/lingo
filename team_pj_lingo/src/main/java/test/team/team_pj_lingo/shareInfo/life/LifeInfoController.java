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
	
	// 생활정보-집구하기
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
}

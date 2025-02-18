package test.team.team_pj_lingo.shareInfo.medi;

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
public class MediInfoController {
	private static final Logger logger = LoggerFactory.getLogger(MediInfoController.class);
	
	String viewPage = "";
	
	// 의료정보페이지
	@RequestMapping("/medi.hl")
	public String medi(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /medi.hl >>>");
		
		
		return "board/shareInfo/mediInfo/medi";
	}
	
	// 의료정보-병원이용
	@RequestMapping("/findMedi.hl")
	public String findMedi(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /findMedi.hl >>>");
		
		
		return "board/shareInfo/mediInfo/findMedi";
	}
	
	// 의료정보-외국인을 위한 의료서비스
	@RequestMapping("/findForeignerService.hl")
	public String findForeignerService(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /findForeignerService.hl >>>");
		
		
		return "board/shareInfo/mediInfo/findForeignerService";
	}
	// 의료정보-건강보험
	@RequestMapping("/findInsurance.hl")
	public String findInsurance(HttpServletRequest request,  HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url ==>  /findInsurance.hl >>>");
		
		
		return "board/shareInfo/mediInfo/findInsurance";
	}
	
	// 병원찾기
		@RequestMapping("/hospital.hl")
		public String hospital(HttpServletRequest request,  HttpServletResponse response, Model model)
				throws ServletException, IOException{
			logger.info("<<< url ==>  /hospital.hl >>>");
			
			
			return "board/shareInfo/mediInfo/hospital";
		}
	
//--------------------------------------------------------------------------
	
}

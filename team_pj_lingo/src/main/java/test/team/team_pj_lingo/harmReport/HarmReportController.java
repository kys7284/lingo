package test.team.team_pj_lingo.harmReport;

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
public class HarmReportController {

	private static final Logger logger = LoggerFactory.getLogger(HarmReportController.class);
	
	@Autowired
	private HarmReportServiceImpl service;
	
	// 게시글신고 페이지
	@RequestMapping("/harmInsert.hr")
	public String harmInsert(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		return "report/harm/harmInsert";
	}
	
	
	// 게시글 번호 체크
	@RequestMapping("/boardNumCheck.hr")
	public String boardNumCheck(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
			
		service.boardNumCheck(request, response, model);
		
		return "report/harm/harmInsert";
	}
	
	// 게시글 신고 접수 처리
	@RequestMapping("/harmReportInsert.hr")
	public String HarmReportInsert(HttpServletRequest request, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
			
		service.HarmReportInsert(request, response, model);
		
		return "report/harm/harmInsertAction";
	}
	
	
	
	
	
	
	
	
	
}

package test.team.team_pj_lingo.faq;

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
public class FAQController {
	
	private static final Logger logger = LoggerFactory.getLogger(FAQController.class);
	
	String viewPage = "";
	
	// FAQ 목록
	@RequestMapping("/faq_list.faq")
	public String faq_list(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		logger.info("<<< url ==>  /faq_list.no >>>");
		
		return "madang/faq/faq_list";
	}

}

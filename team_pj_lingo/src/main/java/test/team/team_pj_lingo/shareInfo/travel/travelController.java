package test.team.team_pj_lingo.shareInfo.travel;

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
public class travelController {
	
	private static final Logger logger = LoggerFactory.getLogger(travelController.class);
	
	@Autowired
	private travelBoardService service;
	
	// 여행정보공유 리스트
	@RequestMapping("travelInfo.tc")
	public String adminAction(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		
		logger.info("Controller - travleInfo.tc");
		service.travelListAction(reqeust, response, model);
		
		return "board/shareInfo/travelInfo/travelBoard/travelShareList";
	}
}

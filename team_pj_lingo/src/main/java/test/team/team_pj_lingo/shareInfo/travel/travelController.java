package test.team.team_pj_lingo.shareInfo.travel;

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
public class travelController {
	private static final Logger logger = LoggerFactory.getLogger(travelController.class);
	
	// 맛집공유 게시판이동
	@RequestMapping("restaurantInfo.tc")
	public String adminAction(HttpServletRequest reqeust, HttpServletResponse response, Model model) 
		throws ServletException, IOException{
		logger.info("Controller - restaurantInfo.tc");
		
		return "board/shareInfo/travleInfo/restaurantBoard/restaurantList";
	}
}

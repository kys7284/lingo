package test.team.team_pj_lingo.harmReport;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface HarmReportService {

	
	
	// 게시글 번호 조회
	public void boardNumCheck(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 전체 게시글 신고 목록
	public void HarmReportList(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException;
	
	// 게시글 신고등록
	public void HarmReportInsert(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException; 
	
	// 게시글 삭제
	public void HarmBoardDelete(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException; 
	
}

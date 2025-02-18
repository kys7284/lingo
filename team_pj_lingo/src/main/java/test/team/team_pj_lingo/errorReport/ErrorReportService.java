package test.team.team_pj_lingo.errorReport;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface ErrorReportService {
	
	// 전체 신고건수
	public void ErrorReportCnt(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException;
	
	// 전체 신고 리스트
	public void ErrorReportList(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 신고 접수
	public void ErrorReportInsert(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	
	// 신고 접수 상태 변경
	public void ErrorReportStatus(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	
	// 신고 반려처리
	public void ErrorReportDelete(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
}

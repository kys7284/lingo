package test.team.team_pj_lingo.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface AdminService {

	
	// 회원목록
	public void adminMemberList(HttpServletRequest request, HttpServletResponse response, Model model)
		throws ServletException, IOException;
	
	// 회원탈퇴처리
	public void adminMemberDelete(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	
}

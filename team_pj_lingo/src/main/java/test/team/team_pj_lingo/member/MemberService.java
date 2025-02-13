package test.team.team_pj_lingo.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;


public interface MemberService {

	// 회원가입처리
	public void JoinAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException; 
		
	// id중복확인
	public void IdCheckAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException; 
	
	// 로그인 처리 / 회원정보 인증(수정, 탈퇴)
	public void loginAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException;
	
	// 마이페이지
	public void mypage(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException;
		
	// 회원정보 수정처리	
	public void mypageUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException;
	
	// 회원탈퇴 처리
	public void memberDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException;
	
	// 아이디 찾기 처리
	public void findIdAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException;
	
}

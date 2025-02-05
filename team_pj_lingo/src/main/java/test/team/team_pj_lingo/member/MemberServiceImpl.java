package test.team.team_pj_lingo.member;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl dao;
	
	// 회원가입처리
	@Override
	public void JoinAction(HttpServletRequest request, HttpServletResponse response, Model model) 
	 throws ServletException, IOException{
		System.out.println("서비스 - JoinAction ");
		
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(request.getParameter("mem_id"));
		dto.setMem_pwd(request.getParameter("mem_pwd"));
		dto.setMem_name(request.getParameter("mem_name"));
		dto.setMem_country(request.getParameter("mem_country"));
		dto.setMem_birthday(Date.valueOf(request.getParameter("mem_birthday")));
		dto.setMem_comment(request.getParameter("mem_comment"));
		dto.setMem_regdate(new Timestamp(System.currentTimeMillis()));
		
		String hp1 = request.getParameter("mem_hp1");
		String hp2 = request.getParameter("mem_hp2");
		String hp3 = request.getParameter("mem_hp3");
		String mem_hp = hp1+'-'+hp2+'-'+hp3;
		dto.setMem_hp(mem_hp);
		
		String email1 = request.getParameter("mem_email1");
		String email2 = request.getParameter("mem_email2");
		String mem_email = email1 + "@" + email2;
		dto.setMem_email(mem_email);
		
		String address1 = request.getParameter("sample6_address");
		String address2 = request.getParameter("sample6_extraAddress");
		String address3 = request.getParameter("sample6_detailAddress");
		String mem_address = address1+"-"+address2+"-"+address3;
		dto.setMem_address(mem_address);
		
		int insertCnt = dao.JoinAction(dto);
		System.out.println("서비스 - insertCnt"+insertCnt);
		
		model.addAttribute("insertCnt", insertCnt);
		model.addAttribute("dto",dto);
		
	}

	// id 중복확인
	@Override
	public void IdCheckAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException{
		System.out.println("서비스 - IdCheckAction ");
		
		String mem_id = request.getParameter("mem_id");
		
		int selectCnt = dao.IdCheckAction(mem_id);
		
		model.addAttribute("selectCnt",selectCnt);
		model.addAttribute("mem_id", mem_id);
		
	}
	

    // 로그인 처리 / 회원정보 인증(수정, 탈퇴)
    @Override
    public void loginAction(HttpServletRequest request, HttpServletResponse response, Model model) 
    		throws ServletException, IOException {
        String mem_id = request.getParameter("mem_id");
        String mem_pwd = request.getParameter("mem_pwd");

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("mem_id", mem_id);
        map.put("mem_pwd", mem_pwd);

        int selectCnt = dao.idPasswordChk(map);
        
        if(selectCnt == 1) {
        	request.getSession().setAttribute("sessionId", mem_id);
        }
        else {
        	request.getSession().setAttribute("sessionId", null);
        }
        model.addAttribute("selectCnt", selectCnt);
        
        //model.addAttribute("loginResult", selectCnt > 0 ? "success" : "fail");
    }

    // 마이페이지
	@Override
	public void mypage(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
		String mem_id = (String)request.getSession().getAttribute("sessionId");
		
		MemberDTO dto = dao.mypage(mem_id);
		
		model.addAttribute("dto", dto);
		
	}

	// 회원정보수정 처리
	@Override
	public void mypageUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
	
		System.out.println("서비스 - mypageUpdateAction ");
		
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(request.getParameter("mem_id"));
		dto.setMem_pwd(request.getParameter("mem_pwd"));
		dto.setMem_name(request.getParameter("mem_name"));
		dto.setMem_country(request.getParameter("mem_country"));
		dto.setMem_birthday(Date.valueOf(request.getParameter("mem_birthday")));
		dto.setMem_comment(request.getParameter("mem_comment"));
		
		String hp1 = request.getParameter("mem_hp1");
		String hp2 = request.getParameter("mem_hp2");
		String hp3 = request.getParameter("mem_hp3");
		String mem_hp = hp1+'-'+hp2+'-'+hp3;
		dto.setMem_hp(mem_hp);
		
		String email1 = request.getParameter("mem_email1");
		String email2 = request.getParameter("mem_email2");
		String mem_email = email1 + "@" + email2;
		dto.setMem_email(mem_email);
		
		String address1 = request.getParameter("sample6_address");
		String address2 = request.getParameter("sample6_extraAddress");
		String address3 = request.getParameter("sample6_detailAddress");
		String mem_address = address1+"-"+address2+"-"+address3;
		dto.setMem_address(mem_address);
		
		int updateCnt = dao.mypageUpdateAction(dto);
		
		model.addAttribute("updateCnt", updateCnt);
		
	}

	// 회원탈퇴처리
	@Override
	public void memberDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
			
		System.out.println("서비스 - memberDeleteAction ");
		
		String mem_id = request.getParameter("mem_id");
		String mem_pwd = request.getParameter("mem_pwd");
		int deleteCnt = 0;
		
		Map<String, Object> map = new HashMap<>();
		map.put("mem_id", mem_id);
		map.put("mem_pwd", mem_pwd);
		
		int selectCnt = dao.idPasswordChk(map);
		
		if(selectCnt == 1) {
			deleteCnt = dao.memberDeleteAction(map);
			request.getSession().invalidate();
		}
	
		
		model.addAttribute("deleteCnt", deleteCnt);
		
	}



}

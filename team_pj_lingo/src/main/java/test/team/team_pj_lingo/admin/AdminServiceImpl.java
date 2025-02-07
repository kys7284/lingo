package test.team.team_pj_lingo.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import test.team.team_pj_lingo.member.MemberDTO;
import test.team.team_pj_lingo.page.Paging;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO dao;

	// 회원목록
	@Override
	public void adminMemberList(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
			String pageNum = request.getParameter("pageNum");
			Paging page = new Paging(pageNum);
			int total = dao.adminMemberCount();
			page.setTotalCount(total);
			
			int start = page.getStartRow();
			int end = page.getEndRow();
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			List<MemberDTO> list = dao.adminMemberList(map);
			
			model.addAttribute("list", list);
			model.addAttribute("page", page);
		
		
		
	}

	// 회원탈퇴처리
	@Override
	public void adminMemberDelete(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
			int mem_no = Integer.parseInt(request.getParameter("mem_no"));
			System.out.println("mem_no :"+mem_no);
			
			int deleteCnt = dao.adminMemberDelete(mem_no);
			
			model.addAttribute("deleteCnt", deleteCnt);
		
	}

}

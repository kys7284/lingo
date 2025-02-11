package test.team.team_pj_lingo.admin;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
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

	// 관리자 등록
	@Override
	public void insertAdminAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
			MemberDTO dto = new MemberDTO();
			dto.setMem_id(request.getParameter("mem_id"));
			dto.setMem_pwd(request.getParameter("mem_pwd"));
			dto.setMem_name(request.getParameter("mem_name"));
			dto.setMem_country(request.getParameter("mem_country"));
			dto.setMem_birthday(Date.valueOf(request.getParameter("mem_birthday")));
			dto.setMem_comment(request.getParameter("mem_comment"));
			dto.setMem_regdate(new Timestamp(System.currentTimeMillis()));
			dto.setMem_status("admin");
			
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
			
			int insertCnt = dao.adminInsert(dto);
			System.out.println("서비스 - insertCnt"+insertCnt);
			
			model.addAttribute("insertCnt", insertCnt);
		
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

		// 관리자 목록
		@Override
		public void adminList(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException {
			
				String pageNum = request.getParameter("pageNum");
				Paging page = new Paging(pageNum);
				int total = dao.adminCount();
				page.setTotalCount(total);
				
				int start = page.getStartRow();
				int end = page.getEndRow();
				
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("start", start);
				map.put("end", end);
				List<MemberDTO> list = dao.adminList(map);
				
				model.addAttribute("list", list);
				model.addAttribute("page", page);
			
			
		}

}

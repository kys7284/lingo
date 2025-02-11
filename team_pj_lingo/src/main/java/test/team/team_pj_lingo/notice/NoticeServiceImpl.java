package test.team.team_pj_lingo.notice;

import java.io.IOException;
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

import test.team.team_pj_lingo.page.Paging;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO dao;
	
	//공지사항 목록
	@Override
	public void noticeListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeListAction");
		
		String pageNum = request.getParameter("pageNum");        
		Paging page = new Paging(pageNum);
		int totatl = dao.noticeCnt();
		page.setTotalCount(totatl);
		
		int start = page.getStartRow();
		int end = page.getEndRow();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		List<NoticeDTO> list = dao.noticeList(map);
		
		model.addAttribute("noticeList", list);
		model.addAttribute("paging", page);
		
		
	}

	//공지사항 상세페이지
	@Override
	public void noticeDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeDetailAction");
		
	}

	//공지사항 수정처리
	@Override
	public void noticeUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeUpdateAction");
		
	}

	//공지사항 삭제처리
	@Override
	public void noticeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeDeleteAction");
		
	}

	//공지사항 작성처리
	@Override
	public void noticeInsertAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("Service - noticeInsertAction");
		
		NoticeDTO dto = new NoticeDTO();
		dto.setNotice_writer((String)request.getSession().getAttribute("hiddenId"));
		dto.setNotice_title(request.getParameter("notice_title"));
		dto.setNotice_content(request.getParameter("notice_content"));
		dto.setNotice_regDate(new Timestamp(System.currentTimeMillis()));
		
		System.out.println("dto :"+dto);
		
		int insertCnt = dao.insertNotice(dto);
		
		model.addAttribute("insertCnt", insertCnt);
		
		
		
	}

}

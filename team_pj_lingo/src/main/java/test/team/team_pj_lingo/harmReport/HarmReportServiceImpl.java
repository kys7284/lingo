package test.team.team_pj_lingo.harmReport;

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

import oracle.sql.DATE;
import test.team.team_pj_lingo.page.Paging;

@Service
public class HarmReportServiceImpl implements HarmReportService {

	@Autowired
	private HarmReportDAOImpl dao;
	
	
	// 게시글 번호 조회
	@Override
	public void boardNumCheck(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		int selectCnt = 0;
		
			int harm_report_num = Integer.parseInt(request.getParameter("harm_report_num"));
			Map<String, Object> map = dao.boardNumCheck(harm_report_num);
			if (map != null) {
				selectCnt = 1;
			}
			
				
		model.addAttribute("map", map);
		model.addAttribute("selectCnt", selectCnt);
		
	}

	// 게시글 신고 등록
		@Override
		public void HarmReportInsert(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException {

			HarmReportDTO dto = new HarmReportDTO();
			dto.setHarm_report_title(request.getParameter("harm_report_title"));
			dto.setBoard_writer(request.getParameter("board_writer"));
			dto.setHarm_report_category(request.getParameter("harm_report_category"));
			dto.setHarm_report_content(request.getParameter("harm_report_content"));
			dto.setHarm_report_writer((String)request.getSession().getAttribute("hiddenId"));
			dto.setHarm_report_regDate(new Timestamp(System.currentTimeMillis()));
			
			int insertCnt = dao.HarmReportInsert(dto);
			
			model.addAttribute("insertCnt", insertCnt);
	
			
		}
	
	
	// 전체 게시글신고 목록
	@Override
	public void HarmReportList(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {

		String pageNum = request.getParameter("pagaNum");
		Paging page = new Paging(pageNum);
		int total = dao.HarmReportCnt();
		page.setTotalCount(total);
		
		int start = page.getStartRow();
		int end = page.getEndRow();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<HarmReportDTO> list = dao.HarmReportList(map);
		
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		
	}

	// 신고 게시글 삭제
	@Override
	public void HarmBoardDelete(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
		int harm_report_num = Integer.parseInt(request.getParameter("harm_report_num"));
		
		int result = dao.HarmBoadreDelete(harm_report_num);
		int deleteCnt = dao.HarmReportDelete(harm_report_num);
		
		model.addAttribute("deleteCnt", deleteCnt);
		
	}

	
	


}

package test.team.team_pj_lingo.shareInfo.travel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import test.team.team_pj_lingo.page.Paging;

@Service
public class travelBoardServiceImpl implements travelBoardService{
	
	@Autowired
	private travelBoardDAO dao;
	
	//게시글 목록
	@Override
	public void travelListAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("travelBoardService - travelListAction");
		
		String pageNum = request.getParameter("pageNum");
		
		Paging paging = new Paging(pageNum);
		int total = dao.boardCnt();
		System.out.println("total = "+ total);
		paging.setTotalCount(total);
		
		//목록 조회
		int start = paging.getStartRow();
		int end = paging.getEndRow();
		
		// HashMap 생성, key value 추가
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<travelBoardDTO> list = dao.travelBoardList(map);
		System.out.println("list = " + model);
		
		model.addAttribute("travelList", list);
		model.addAttribute("paging", paging);
	}

	//게시글 상세페이지
	@Override
	public void travelDetailAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		
	}
	
	//게시글 댓글목록 처리
	@Override
	public void travelCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		
	}
	
	//게시글 댓글작성 처리
	@Override
	public void travelCommentAddAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		
	}

	//게시글 수정&삭제시 비밀번호 인증
	@Override
	public int password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		return 0;
	}

	//게시글 수정처리
	@Override
	public void travelUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		
	}

	//게시글 삭제처리
	@Override
	public void travelDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		
	}

	//게시글 작성처리
	@Override
	public void travelInsertAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		
	}

}

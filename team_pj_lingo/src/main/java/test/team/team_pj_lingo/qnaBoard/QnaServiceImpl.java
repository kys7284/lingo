package test.team.team_pj_lingo.qnaBoard;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.compiler.ast.Keyword;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import test.team.team_pj_lingo.page.Paging;

@Service
public class QnaServiceImpl implements QnaService{

	@Autowired
    private QnaDAOImpl dao;
	
	//게시글 목록
	@Override
	public void qnaListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("BoardServiceImpl - boardListAction");
		
		// 3단계. 화면에서 입력받은 값을 가져오기
		String pageNum = request.getParameter("pageNum");
		
		
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다향성 적용
		//BoardDAO dao = BoardDAOImpl.getInstance();
		
		// 5-1단계 전체 게시글 갯수 카운트
		Paging paging = new Paging(pageNum);
		int total = dao.qnaCnt();
		System.out.println("total = > " + total);
		
		paging.setTotalCount(total);
		
		// 5-2단계 게시글 목록 조회
		
		int start = paging.getStartRow();
		int end = paging.getEndRow();
		
		// HashMap 생성, key,value 추가
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<QnaDTO> list = dao.qnaList(map);
		System.out.println("list : " + list);
		
		// 6단계 jsp로 처리결과 전달
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
	}
	
	// 게시글 상세페이지
	@Override
	public void qnaDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("BoardServiceImpl - boardDetailAction");
		
		// 3단계. get방식으로 넘긴 값을 가져오기
		int b_num = Integer.parseInt(request.getParameter("b_num"));		
				
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다향성 적용
		//BoardDAO dao = BoardDAOImpl.getInstance();
		
		// 5-1단계. 조회수 증가
		 dao.plusReadCnt(b_num);
		 
		
		// 5-2단계. 게시글 상세페이지
		
		 QnaDTO dto = dao.getQnaDetail(b_num);
		
		// 6단계. 6단계 jsp로 처리결과 전달
		model.addAttribute("dto", dto);
				
		
	}
	
	// 게시글 수정 삭제시 비밀번호 인증
	@Override
	public int password_chkAction(HttpServletRequest request, HttpServletResponse response,  Model model)
			throws ServletException, IOException {
		System.out.println("BoardServiceImpl - password_chkAction");
		
		// 3단계. 화면에서 입력받은 비밀번호 값 (hidden값 포함) 을 가져오기
		int b_num = Integer.parseInt(request.getParameter("hidden_b_num"));
		String b_password = request.getParameter("b_password");
		
		
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다형성 적용
		//BoardDAO dao = BoardDAOImpl.getInstance();
		
		// 5-1단계. 게시글 수정 삭제시 비밀번호 인증
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b_num", b_num);
		map.put("b_password", b_password);
			
		int result = dao.password_chk(map);
		
		
		QnaDTO dto = null;
		
		// 5-2단계. 게시글 상세페이지 => 수정을 위해 수정페이지에 뿌린다
		if(result != 0) {
			dto = dao.getQnaDetail(b_num);
		}
		
		// 6단계. jsp로 처리결과 전달. dto 	
		model.addAttribute("dto", dto);

		
		// 7단계. 인증결과 리턴		
		return result;
	}
	
	
	// 게시글 수정처리
	@Override
	public void qnaUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
	
		System.out.println("BoardServiceImpl - boardUpdateAction");
		QnaDTO dto = new QnaDTO();
		
		// 3단계. 화면에서 입력받은 값을 가져와서 DTO에 담기
		dto.setB_num(Integer.parseInt(request.getParameter("hidden_b_num")));
		dto.setB_password(request.getParameter("b_password"));
		dto.setB_title(request.getParameter("b_title"));
		dto.setB_content(request.getParameter("b_content"));
		
		
		
		// 5단계. 게시글 수정 처리 후 컨트롤러에서 list로 이동
		 dao.updateQna(dto);
		
		
	}
	
	// 게시글 삭제처리
	@Override
	public void qnaDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
	
		System.out.println("BoardServiceImpl - boardDeleteAction");
		
		
		// 3단계.
		int b_num = Integer.parseInt(request.getParameter("hidden_b_num"));	
		
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다향성 적용
		//BoardDAO dao = BoardDAOImpl.getInstance();
		
		// 5단계. 게시글 수정 처리 후 컨트롤러에서 list로 이동
		dao.deleteQna(b_num);
	}
	
	// 게시글 작성 처리
	@Override
	public void qnaInsertAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("BoardServiceImpl - boardInsertAction");
		
		QnaDTO dto = new QnaDTO();
		
		// 3단계. 화면에서 입력받은 값을 가져와서 DTO에 담기
		dto.setB_writer((String)request.getSession().getAttribute("sessionId"));
		dto.setB_title(request.getParameter("b_title"));
		dto.setB_content(request.getParameter("b_content"));
		dto.setB_password(request.getParameter("b_password"));
	
		
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다향성 적용
		//BoardDAO dao = BoardDAOImpl.getInstance();
		
		// 5단계. 게시글 수정 처리 후 컨트롤러에서 list로 이동
		dao.insertQna(dto);
		
		
		
		
	}
	// 댓글작성 처리
	@Override
	public void commentAddAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
	    
		System.out.println("BoardServiceImpl - commentAddAction");
		
		// 3단계. 화면에서 입력받은 값(jQuery에서 넘김)을 가져와서 DTO에 담기
		// CommentDTO 생성
		
		  QnaCommentDTO dto = new QnaCommentDTO();
		  dto.setC_board_num(Integer.parseInt(request.getParameter("board_num")));
		  dto.setC_writer(request.getParameter("writer"));
		  dto.setC_content(request.getParameter("content"));
		  
		  // 4단계. 싱글톤 방식으로 DAO 객체 생성, 다향성 적용 
		  //BoardDAO dao = BoardDAOImpl.getInstance();
		  
		  // 5단계. 댓글작성 처리 후 컨트롤러에서 list로 이동
		  
		  dao.insertComment(dto);
	}
	
	// 댓글목록 처리
	@Override
	public void commentListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
	
		System.out.println("BoardServiceImpl - commentListAction");
		
		// 3단계 jqury에서 넘긴값을 가져온다
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		
		
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다향성 적용
		//BoardDAO dao = BoardDAOImpl.getInstance();
		
		List<QnaCommentDTO> list = dao.commentList(board_num);
		
		
		// 6단계. jsp로 처리결과 전달
		model.addAttribute("list", list);
		
		
		
	}
	
	
	
	
	
	
	
}












package test.team.team_pj_lingo.freeBoard;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import test.team.team_pj_lingo.page.Paging;

@Service
public class FreeBoardServiceImpl implements FreeBoardService{

	@Autowired
	private FreeBoardDAO dao;
	
	//게시글 목록
	@Override
	public void freeListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeListAction()");
		
		// 화면에서 입력값 가져오기
		String pageNum = request.getParameter("pageNum");
		
		// 전체 게시글 갯수 카운트
		Paging paging = new Paging(pageNum);
		int total = dao.boardCnt();
		System.out.println("total=> " + total);
		paging.setTotalCount(total);
		
		// 게시글목록 조회
		int start = paging.getStartRow();
		int end = paging.getEndRow();
		
		// HashMap 생성, key value 추가
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<FreeBoardDTO> list = dao.freeBoardList(map);
		System.out.println("list: " + list);
		
		// jsp로 처리결과 전달
		model.addAttribute("freeBoardList", list);
		model.addAttribute("paging", paging);
	}

	//게시글 상세페이지
	@Override
	public void freeDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeDetailAction()");
		
		// get방식으로 넘긴 값 가져오기
		int fb_num = Integer.parseInt(request.getParameter("fb_num"));
		
		// 조회수 증가
		dao.plusReadCnt(fb_num);
		
		// 게시글 상세페이지
		FreeBoardDTO dto = dao.freeBoardDetail(fb_num);
		
		// jsp로 처리결과 전달
		model.addAttribute("dto", dto);
	}

	//게시글 수정 삭제시 비밀번호 인증
	@Override
	public int password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - password_chkAction()");
		return 0;
	}

	//게시글 수정처리
	@Override
	public void freeUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeUpdateAction()");
		
	}

	//게시글 삭제처리
	@Override
	public void freeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeDeleteAction()");
		
	}

	//게시글 작성처리
	@Override
	public void freeInsertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeInsertAction()");
		MultipartFile file = request.getFile("fb_img");
		System.out.println("file:" + file);
		
		//input 경로
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/fb_upload/");
		System.out.println("saveDir :" + saveDir);
		
		//이미지추가를위한 샘플이미지 경로(upload 폴더 생성후 우클릭 > properties > location 정보 복사후 붙여넣기),맨뒤\\추가
		String realDir="D:\\dev\\workspace_spring_ict04\\Git\\lingo_ict04\\team_pj_lingo\\src\\main\\webapp\\resources\\fb_upload\\";
		System.out.println("realDir : " + realDir);
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		try {
			file.transferTo(new File(saveDir + file.getOriginalFilename()));	//import java.io.File
			fis = new FileInputStream(saveDir + file.getOriginalFilename());
			fos = new FileOutputStream(realDir + file.getOriginalFilename());
			
			int data = 0;
			while((data = fis.read()) != -1) {
				fos.write(data);
			}
			// 화면에서 입력받은 값 가져오기
			// dto 생성후 setter로 값을 담는다.
			FreeBoardDTO dto = new FreeBoardDTO();
			dto.setFb_writer((String)request.getSession().getAttribute("sessionId"));
			dto.setFb_password(request.getParameter("fb_password"));
			dto.setFb_title(request.getParameter("fb_title"));
			
			// 이미지 가져오기
			String fb_img1 = "/team_pj_lingo/resources/fb_upload/"+ file.getOriginalFilename();
			System.out.println("fb_img1 : " + fb_img1);
			dto.setFb_img(fb_img1);
			
			dto.setFb_content(request.getParameter("fb_content"));
		
			int insertCnt = dao.insertFreeBoard(dto);
			model.addAttribute("insertCnt", insertCnt);
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if(fis!=null)fis.close();
			if(fos!=null)fos.close();
		}
	}
	
	//댓글목록 처리
	@Override
	public void freeCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeCommentListAction()");
		
	}

	//댓글작성 처리
	@Override
	public void freeCommentAddAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeCommentAddAction()");
		
	}


}

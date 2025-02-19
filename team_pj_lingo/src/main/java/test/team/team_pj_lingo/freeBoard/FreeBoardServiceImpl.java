package test.team.team_pj_lingo.freeBoard;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
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
		
		System.out.println("pageNum" + pageNum);
		
		// 전체 게시글 갯수 카운트
		int total = dao.boardCnt();
		System.out.println("total=> " + total);
		
		
		Paging paging = new Paging(pageNum);
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
		String pageNum = request.getParameter("pageNum");
		
		
		// 조회수 증가
		dao.plusReadCnt(fb_num);
		
		// 게시글 상세페이지
		FreeBoardDTO dto = dao.freeBoardDetail(fb_num);
		
	
		
		// jsp로 처리결과 전달
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("dto", dto);
	}
	
	//댓글목록 처리
	@Override
	public void freeCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeCommentListAction()");
		
		int fb_num = Integer.parseInt(request.getParameter("freeboard_num"));
		
		List<FreeBoardCommentDTO> list = dao.freeCommentList(fb_num);
		
		model.addAttribute("list", list);
	}

	//댓글작성 처리
	@Override
	public void freeCommentAddAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeCommentAddAction()");
		
		FreeBoardCommentDTO dto = new FreeBoardCommentDTO();
		dto.setFb_board_num(Integer.parseInt(request.getParameter("freeboard_num")));
		dto.setFb_writer(request.getParameter("writer"));
		dto.setFb_content(request.getParameter("content"));
		
		dao.insertComment(dto);
	}


	//게시글 수정 삭제시 비밀번호 인증
	@Override
	public int password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - password_chkAction()");
		
		
		int fb_num = Integer.parseInt(request.getParameter("hidden_fb_num"));
		String fb_password = request.getParameter("fb_password");
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("fb_num", fb_num);
		map.put("fb_password", fb_password);
		
		int result = dao.password_chk(map);
		
		FreeBoardDTO dto = null;
		
		if(result != 0) {
			dto = dao.freeBoardDetail(fb_num);
		}
		
		model.addAttribute("dto", dto);
		
		return result;
	}

	//게시글 수정처리
	@Override
	public void freeUpdateAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeUpdateAction()");
		int hiddenPageNum = Integer.parseInt(request.getParameter("hiddenPageNum"));
		int hidden_fb_num = Integer.parseInt(request.getParameter("hidden_fb_num"));
		String hidden_fb_img = request.getParameter("hidden_fb_img");
	
		System.out.println("hiddenPageNum" + hiddenPageNum);
		System.out.println("hidden_fb_num" + hidden_fb_num);
	    System.out.println("hidden_fb_img" + hidden_fb_img);
		
		MultipartFile file = request.getFile("fb_Img");
		System.out.println("file" + file);
	
		//input 경로
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/fb_upload/");
		System.out.println("saveDir :" + saveDir);
		
		//이미지추가를위한 샘플이미지 경로(upload 폴더 생성후 우클릭 > properties > location 정보 복사후 붙여넣기),맨뒤\\추가
		String realDir="D:\\DEV\\workspace_lingo\\lingo\\team_pj_lingo\\src\\main\\webapp\\resources\\fb_upload\\";	
		System.out.println("realDir : " + realDir);
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		String fb_img = "";	// 추가한 부분
		
		// 상세페이지에 있는 이미지를 수정할 경우
		if(file.getOriginalFilename() != null & file.getOriginalFilename() != "") {   // 추가
			try {
				fb_img = null;
				
				if(file != null && !file.isEmpty()) {
					
					file.transferTo(new File(saveDir + file.getOriginalFilename()));	//import java.io.File
					fis = new FileInputStream(saveDir + file.getOriginalFilename());
					fos = new FileOutputStream(realDir + file.getOriginalFilename());
					
					int data = 0;
					while((data = fis.read()) != -1) {
						fos.write(data);
					}
					// 이미지 가져오기
					fb_img = "/team_pj_lingo/resources/fb_upload/"+ file.getOriginalFilename();
					System.out.println("fb_img : " + fb_img);
				} else {
					
					System.out.println("No image uploaded");
				}
				
			} catch(IOException e) {
				e.printStackTrace();
			} finally {
				if(fis!=null)fis.close();
				if(fos!=null)fos.close();
				}
		} 

		//----------------------- 추가 --------------------------------------------
		else {
			// 기존 이미지 사용(이미지 수정 안할 경우)
			fb_img = hidden_fb_img;
			System.out.println("fb_img" + fb_img);
		}
		
		//----------------------- 추가 --------------------------------------------
		
		// dto 생성후 setter로 값을 담는다.
		FreeBoardDTO dto = new FreeBoardDTO();
		dto.setFb_num(hidden_fb_num);	// ※누락 주의※
		dto.setFb_title(request.getParameter("fb_title"));
		dto.setFb_img(fb_img)	;	// ※누락 주의※
		dto.setFb_content(request.getParameter("fb_content"));
		dto.setFb_password(request.getParameter("fb_password"));
		
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다형성 적용=annotation으로 대체
		// 5단계 상품수정 update
		int updateCnt = dao.updateFreeBoard(dto);
		
		// 6단계. jsp로 결과넘기기
		model.addAttribute("updateCnt", updateCnt);
		model.addAttribute("hiddenPageNum", hiddenPageNum);
		model.addAttribute("hidden_fb_num", hidden_fb_num);
	}

	//게시글 삭제처리
	@Override
	public void freeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - freeDeleteAction()");
		
		int fb_num = Integer.parseInt(request.getParameter("hidden_fb_num"));
		
		dao.deleteFreeBoard(fb_num);
		
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
		String realDir="D:\\DEV\\workspace_lingo\\lingo\\team_pj_lingo\\src\\main\\webapp\\resources\\fb_upload\\";
		System.out.println("realDir : " + realDir);
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		try {
			String fb_img = null;
			
			if(file != null && !file.isEmpty()) {
				
				file.transferTo(new File(saveDir + file.getOriginalFilename()));	//import java.io.File
				fis = new FileInputStream(saveDir + file.getOriginalFilename());
				fos = new FileOutputStream(realDir + file.getOriginalFilename());
				
				int data = 0;
				while((data = fis.read()) != -1) {
					fos.write(data);
				}
				fb_img = "/team_pj_lingo/resources/fb_upload/"+ file.getOriginalFilename();
				System.out.println("fb_img : " + fb_img);
			} else {
				
				System.out.println("No image uploaded");
			}
			
			
			// 화면에서 입력받은 값 가져오기
			// dto 생성후 setter로 값을 담는다.
			FreeBoardDTO dto = new FreeBoardDTO();
			dto.setFb_writer((String)request.getSession().getAttribute("hiddenId"));
			dto.setFb_password(request.getParameter("fb_password"));
			dto.setFb_title(request.getParameter("fb_title"));
			
			// 이미지 가져오기
			
			dto.setFb_img(fb_img);
			
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

	// 게시판 키워드 검색
	@Override
	public void searchAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("FreeBoardServiceImpl - searchAction()");
		
		String type = request.getParameter("type");
		String keyword = request.getParameter("keyword");
		String pageNum = request.getParameter("pageNum");
		
		// 전체 게시글 갯수 카운트
		int total = dao.boardCnt();
		System.out.println("total=> " + total);
		
		
		Paging paging = new Paging(pageNum);
		paging.setTotalCount(total);
		
		// 게시글목록 조회
		int start = paging.getStartRow();
		int end = paging.getEndRow();
		
		// HashMap 생성, key value 추가
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<FreeBoardDTO> list = dao.search(keyword);
		System.out.println("list: " + list);
		
		List<FreeBoardDTO> list2 = dao.search(type);
		System.out.println("list2: " + list2);
		
		// jsp로 처리결과 전달
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("paging", paging);
	}
	
	
	
	// 게시판 키워드 검색
//	@Override
//	public List<FreeBoardDTO> search(String searchType, String keyword) throws Exception{
//		return dao.search(searchType, keyword);
//
//		
//	}
	

}

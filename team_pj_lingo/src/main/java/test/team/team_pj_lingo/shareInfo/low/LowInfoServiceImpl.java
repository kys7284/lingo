package test.team.team_pj_lingo.shareInfo.low;

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

import test.team.team_pj_lingo.freeBoard.FreeBoardDTO;
import test.team.team_pj_lingo.page.Paging;

@Service
public class LowInfoServiceImpl implements LowInfoService{

	@Autowired
	private LowInfoDAO dao;
	
	//게시글 목록
	@Override
	public void lowListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("LowInfoServiceImpl - lowListAction()");
		
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
		
		List<LowInfoDTO> list = dao.lowInfoList(map);
		System.out.println("list: " + list);
		
		// jsp로 처리결과 전달
		model.addAttribute("shareLowList", list);
		model.addAttribute("paging", paging);
	}

	//게시글 상세페이지
	@Override
	public void lowDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("LowInfoServiceImpl - lowDetailAction()");
		
		// get방식으로 넘긴 값 가져오기
		int slboard_num = Integer.parseInt(request.getParameter("slboard_num"));
		String pageNum = request.getParameter("pageNum");
		
		// 게시글 상세페이지
		LowInfoDTO dto = dao.lowInfoDetail(slboard_num);
		
		// jsp로 처리결과 전달
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("dto", dto);
	}

	//게시글 작성처리
	@Override
	public void lowInsertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
	        throws ServletException, IOException {
	    System.out.println("LowInfoServiceImpl - lowInsertAction()");

	    MultipartFile file = request.getFile("slboard_img");
		System.out.println("file:" + file);
		
		//input 경로
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/sl_upload/");
		System.out.println("saveDir :" + saveDir);
		
		//이미지추가를위한 샘플이미지 경로(upload 폴더 생성후 우클릭 > properties > location 정보 복사후 붙여넣기),맨뒤\\추가
		String realDir="D:\\DEV\\workspace_lingo\\lingo\\team_pj_lingo\\src\\main\\webapp\\resources\\sl_upload\\";
					
		System.out.println("realDir : " + realDir);
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		try {
			 String slboard_img = null;
	         
	         if(file != null && !file.isEmpty()) {
	            file.transferTo(new File(saveDir + file.getOriginalFilename()));   //import java.io.File
	            fis = new FileInputStream(saveDir + file.getOriginalFilename());
	            fos = new FileOutputStream(realDir + file.getOriginalFilename());
	            
	            int data = 0;
	            while((data = fis.read()) != -1) {
	               fos.write(data);
	            }
	            slboard_img = "/team_pj_lingo/resources/sl_upload/"+ file.getOriginalFilename();
	            System.out.println("slboard_img : " + slboard_img);
	         
	         }else {
	            // 이미지가 업로드되지 않았을 경우 처리
	               // tb_img를 null로 유지하고 데이터베이스 삽입 로직에서 null 처리
	               System.out.println("No image uploaded.");
	            
	         }

			// 화면에서 입력받은 값 가져오기
			// dto 생성후 setter로 값을 담는다.
			LowInfoDTO dto = new LowInfoDTO();
			dto.setSlboard_writer((String)request.getSession().getAttribute("hiddenId"));
			dto.setSlboard_content(request.getParameter("slboard_content"));
			
			dto.setSlboard_img(slboard_img);
			
			int insertCnt = dao.insertLowInfo(dto);
			model.addAttribute("insertCnt", insertCnt);
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if(fis!=null)fis.close();
			if(fos!=null)fos.close();
		}
		
		// 게시글 작성 후 리다이렉트
	    response.sendRedirect(request.getContextPath() + "/helpMe.eq");
	}


	
	//게시글 삭제처리
	@Override
	public void lowDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("LowInfoServiceImpl - lowDeleteAction()");
		
		int slboard_num = Integer.parseInt(request.getParameter("slboard_num"));

		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다형성 적용
		//BoardDAO dao = BoardDAOImpl.getInstance();
		
		// 5-1단계. 회원정보 인증처리
		int deleteCnt = dao.deleteLowInfo(slboard_num);
		
		// 6단계. jsp로 처리결과 전달
		model.addAttribute("deleteCnt", deleteCnt);
		
		response.sendRedirect(request.getContextPath() + "/helpMe.eq");
	}

	
	
//	//댓글목록 처리
//		@Override
//		public void freeCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model)
//				throws ServletException, IOException {
//			System.out.println("LowInfoServiceImpl - freeCommentListAction()");
//			
//			int fb_num = Integer.parseInt(request.getParameter("freeboard_num"));
//			
//			List<LowInfoCommentDTO> list = dao.freeCommentList(fb_num);
//			
//			model.addAttribute("list", list);
//		}
//
//		//댓글작성 처리
//		@Override
//		public void freeCommentAddAction(HttpServletRequest request, HttpServletResponse response, Model model)
//				throws ServletException, IOException {
//			System.out.println("LowInfoServiceImpl - freeCommentAddAction()");
//			
//			LowInfoCommentDTO dto = new LowInfoCommentDTO();
//			dto.setFb_board_num(Integer.parseInt(request.getParameter("freeboard_num")));
//			dto.setFb_writer(request.getParameter("writer"));
//			dto.setFb_content(request.getParameter("content"));
//			
//			dao.insertComment(dto);
//		}
	
	

}

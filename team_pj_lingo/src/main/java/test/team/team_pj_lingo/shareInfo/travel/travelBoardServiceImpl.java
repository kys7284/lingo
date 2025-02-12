package test.team.team_pj_lingo.shareInfo.travel;

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
		System.out.println("list = " + list);
		
		model.addAttribute("travelList", list);
		model.addAttribute("paging", paging);
	}

	//게시글 상세페이지
	@Override
	public void travelDetailAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("travelBoardService - travelDetailAction");
		
		int tb_num = Integer.parseInt(request.getParameter("tb_num"));
		String pageNum = request.getParameter("pageNum");
		
		//조회수 상승
		dao.plusReadCnt(tb_num);
		
		travelBoardDTO dto = dao.travelBoardDetail(tb_num);
		
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("dto", dto);
	}
	
	//게시글 댓글목록 처리
	@Override
	public void travelCommentListAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		System.out.println("travelBoardService - travelCommentListAction");
		
		int tb_num = Integer.parseInt(request.getParameter("tb_num"));
		
		List<travelBoardCommentDTO> list = dao.travelCommentList(tb_num);
		
		model.addAttribute("list", list);
		
	}
	
	//게시글 댓글작성 처리
	@Override
	public void travelCommentAddAction(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("travelBoardService - travelCommentAddAction");
		
		travelBoardCommentDTO dto = new travelBoardCommentDTO();
		dto.setTb_board_num(Integer.parseInt(request.getParameter("travelboard_num")));
		dto.setTb_writer(request.getParameter("writer"));
		dto.setTb_content(request.getParameter("content"));
		
		dao.insertComment(dto);
	}

	//게시글 작성처리
	@Override
	public void travelInsertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException,IOException {
		System.out.println("travelBoardService - travelInsertAction");
		
		MultipartFile file = request.getFile("tb_img");
		System.out.println("file :" + file);
		
		//input 경로
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/tb_upload/");
		System.out.println("saveDir :" + saveDir);
		
		//이미지추가를위한 샘플이미지 경로(upload 폴더 생성후 우클릭 > properties > location 정보 복사후 붙여넣기),맨뒤\\추가
		String realDir="D:\\DEV\\workspace_lingo\\lingo\\team_pj_lingo\\src\\main\\webapp\\resources\\tb_upload\\";
		System.out.println("realDir : " + realDir);
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		try {
			String tb_img = null;
			
			if(file != null && !file.isEmpty()) {
				file.transferTo(new File(saveDir + file.getOriginalFilename()));	//import java.io.File
				fis = new FileInputStream(saveDir + file.getOriginalFilename());
				fos = new FileOutputStream(realDir + file.getOriginalFilename());
				
				int data = 0;
				while((data = fis.read()) != -1) {
					fos.write(data);
				}
				tb_img = "/team_pj_lingo/resources/tb_upload/"+ file.getOriginalFilename();
				System.out.println("tb_img : " + tb_img);
			
			}else {
				// 이미지가 업로드되지 않았을 경우 처리
	            // tb_img를 null로 유지하고 데이터베이스 삽입 로직에서 null 처리
	            System.out.println("No image uploaded.");
				
			}
			
			// 화면에서 입력받은 값 가져오기
			// dto 생성후 setter로 값을 담는다.
			travelBoardDTO dto = new travelBoardDTO(); 
			dto.setTb_writer((String)request.getSession().getAttribute("hiddenId"));
			dto.setTb_password(request.getParameter("tb_password"));
			dto.setTb_title(request.getParameter("tb_title"));
			
			dto.setTb_img(tb_img);
			
			dto.setTb_content(request.getParameter("tb_content"));
			dto.setTb_category(request.getParameter("tb_category"));
			int insertCnt = dao.insertTravelBoard(dto);
			model.addAttribute("insertCnt", insertCnt);
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if(fis!=null)fis.close();
			if(fos!=null)fos.close();
		}
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

	

}

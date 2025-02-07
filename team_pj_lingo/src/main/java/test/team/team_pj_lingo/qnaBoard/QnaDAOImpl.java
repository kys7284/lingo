package test.team.team_pj_lingo.qnaBoard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class QnaDAOImpl implements QnaDAO{

     @Autowired
	 private SqlSessionTemplate sqlSession;   


     // 게시글 목록
     @Override
	public List<QnaDTO> qnaList(Map<String, Object> map) {
			
		System.out.println("QnaDAOImpl - qnaList");
		
		List<QnaDTO> list = sqlSession.selectList("test.team.team_pj_lingo.qnaBoard.QnaDAO.qnaList", map);
		return list;
 
		
	}
		
	
  // 게시글 갯수 구하기
	@Override
	public int qnaCnt() {
		System.out.println("QnaDAOImpl - qnaCnt()");
		int total = sqlSession.selectOne("test.team.team_pj_lingo.qnaBoard.QnaDAO.qnaCnt");					   
	
		return total;
	}

    // 조회수 증가
	@Override
	public void plusReadCnt(int b_num) {
		System.out.println("QnaDAOImpl - plusReadCnt");
	
		int updateCnt = sqlSession.update("test.team.team_pj_lingo.qnaBoard.QnaDAO.plusReadCnt", b_num);	
		
		
	}	
	
    // 게시글 상세 페이지
	@Override
	public QnaDTO getQnaDetail(int b_num) {
		System.out.println("QnaDAOImpl - getQnaDetail");
	 	
	    QnaDTO dto = sqlSession.selectOne("test.team.team_pj_lingo.qnaBoard.QnaDAO.getQnaDetail", b_num);
			
			return dto;
		}

	// 게시글 수정 삭제시 비밀번호 인증
	@Override
	public int password_chk(Map<String, Object> map) {
		
		System.out.println("QnaDAOImpl - password_chk");
	

		int selectCnt = sqlSession.selectOne("test.team.team_pj_lingo.qnaBoard.QnaDAO.password_chk", map);
		
		return selectCnt;
	}

	


	// 게시글 수정처리
	@Override
	public int updateQna(QnaDTO dto) {
		System.out.println("QnaDAOImpl - updateQna");
		
		int updateCnt = sqlSession.update("test.team.team_pj_lingo.qnaBoard.QnaDAO.updateQna", dto);
		
		return updateCnt;
	
	}


	
	// 게시글 삭제처리
	@Override
	public int deleteQna(int b_num) {
		System.out.println("QnaDAOImpl - deleteQna");
		
	     int deleteCnt = sqlSession.update("test.team.team_pj_lingo.qnaBoard.QnaDAO.deleteQna", b_num);
	
		return deleteCnt;
	}


	
	// 게시글 작성 처리
	@Override
	public int insertQna(QnaDTO dto) {
		System.out.println("QnaDAOImpl - insertQna");
		
		int insertCnt = sqlSession.insert("test.team.team_pj_lingo.qnaBoard.QnaDAO.insertQna", dto);
				
		return insertCnt;
	}


	// 댓글 작성처리
	@Override
	public int insertComment(QnaCommentDTO dto) {
		System.out.println("QnaDAOImpl - insertComment");
		
		int insertCnt = sqlSession.insert("test.team.team_pj_lingo.qnaBoard.QnaDAO.insertComment", dto);
		System.out.println("insertCnt" + insertCnt);
		return insertCnt;
		
		
	}
	
    
	// 댓글 목록처리
	@Override
	public List<QnaCommentDTO> commentList(int board_num) {
		System.out.println("QnaDAOImpl - commentList");

       List<QnaCommentDTO> list = sqlSession.selectList("test.team.team_pj_lingo.qnaBoard.QnaDAO.commentList", board_num);
       
       return list;
	}

	
}

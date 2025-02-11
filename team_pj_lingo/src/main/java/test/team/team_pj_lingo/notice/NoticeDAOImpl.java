package test.team.team_pj_lingo.notice;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOImpl implements NoticeDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//공지사항 목록
	@Override
	public List<NoticeDTO> noticeList(Map<String, Object> map) {
		System.out.println("DAO - noticeList");
		
		List<NoticeDTO> list = sqlSession.selectList("test.team.team_pj_lingo.notice.NoticeDAO.noticeList", map);
		
		return list;
	}

	//공지사항 갯수 구하기
	@Override
	public int noticeCnt() {
		System.out.println("DAO - boardCnt");
		
		int selectCnt = sqlSession.selectOne("test.team.team_pj_lingo.notice.NoticeDAO.noticeCnt");
		
		return selectCnt;
	}

	//조회수 증가
	@Override
	public void plusReadCnt(int notice_num) {
		System.out.println("DAO - plusReadCnt");
		
	}

	//공지사항 상세페이지
	@Override
	public NoticeDTO noticeDetail(int notice_num) {
		System.out.println("DAO - noticeDetail");
		
		NoticeDTO dto = sqlSession.selectOne("test.team.team_pj_lingo.notice.NoticeDAO.noticeDetail", notice_num);
		
		return dto;
	}

	//공지사항 수정처리
	@Override
	public int updateNotice(NoticeDTO dto) {
		System.out.println("DAO - updateNotice");
		return 0;
	}

	//공지사항 삭제처리
	@Override
	public int deleteNotice(int notice_num) {
		System.out.println("DAO - deleteNotice");
		return 0;
	}

	//공지사항 작성처리
	@Override
	public int insertNotice(NoticeDTO dto) {
		System.out.println("DAO - insertNotice");
		
		int insertCnt = sqlSession.insert("test.team.team_pj_lingo.notice.NoticeDAO.insertNotice", dto);
		return insertCnt;
	}

}

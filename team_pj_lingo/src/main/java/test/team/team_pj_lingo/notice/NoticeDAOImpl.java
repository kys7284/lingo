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
		return null;
	}

	//공지사항 갯수 구하기
	@Override
	public int noticeCnt() {
		System.out.println("DAO - noticeCnt");
		return 0;
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
		return null;
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
		return 0;
	}

}

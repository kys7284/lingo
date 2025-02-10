package test.team.team_pj_lingo.notice;

import java.util.List;
import java.util.Map;

public interface NoticeDAO {
	
	//공지사항 목록
	public List<NoticeDTO> noticeList(Map<String, Object> map);
	
	//공지사항 갯수 구하기
	public int noticeCnt();
	
	//조회수 증가
	public void plusReadCnt(int notice_num);
	
	//공지사항 상세페이지
	public NoticeDTO noticeDetail(int notice_num);
	
	//공지사항 수정처리
	public int updateNotice(NoticeDTO dto);
	
	//공지사항 삭제처리
	public int deleteNotice(int notice_num);
	
	//공지사항 작성처리
	public int insertNotice(NoticeDTO dto);
}

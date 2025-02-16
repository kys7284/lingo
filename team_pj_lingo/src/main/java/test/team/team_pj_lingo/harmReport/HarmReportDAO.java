package test.team.team_pj_lingo.harmReport;

import java.util.List;
import java.util.Map;

public interface HarmReportDAO {

	
	// 게시글 번호조회
	public Map<String, Object> boardNumCheck(int harm_report_num);
	
	// 전체 게시글 신고건수
	public int HarmReportCnt();
	
	// 전체 게시글 신고 목록
	public List<HarmReportDTO> HarmReportList(Map<String, Object> map);
	
	// 게시글 신고등록
	public int  HarmReportInsert(HarmReportDTO dto);
	
	
	// 게시글 신고 삭제
	public int HarmReportDelete(int harm_report_num);
	
	// 신고된 게시글 삭제
	public int HarmBoadreDelete(int harm_report_num);
	
}

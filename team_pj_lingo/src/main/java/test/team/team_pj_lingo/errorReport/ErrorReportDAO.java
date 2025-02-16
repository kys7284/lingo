package test.team.team_pj_lingo.errorReport;

import java.util.HashMap;
import java.util.List;

public interface ErrorReportDAO {

	// 전체 신고 건수
	public int ErrorReportCnt();	
	
	// 전체 신고 리스트
	public List<ErrorReportDTO> ErrorReportList(ErrorReportDTO dto);
	
	// 신고 접수 
	public int ErrorReportInsert(ErrorReportDTO dto);
	
	// 신고 접수 상태 변경
	public int ErrorReportStatus(HashMap<String, Object>map);
	
	// 신고 반려 처리
	public int ErrorReportDelete(int error_report_num);
	
	// 나의 신고 내역
	public ErrorReportDTO MemberErrorList(String error_report_writer);  
	
	
	
}

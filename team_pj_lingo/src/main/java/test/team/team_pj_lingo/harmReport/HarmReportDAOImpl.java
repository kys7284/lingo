package test.team.team_pj_lingo.harmReport;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HarmReportDAOImpl implements HarmReportDAO  {

	@Autowired
	private SqlSessionTemplate sql;
	
	// 게시글 번호 조회
	@Override
	public Map<String, Object> boardNumCheck(int harm_report_num) {
		
		Map<String, Object> map = sql.selectOne("test.team.team_pj_lingo.harmReport.HarmReportDAO.boardNumCheck", harm_report_num);
		System.out.println(map);
		return map;
	}
	
	// 게시글 신고 건수
	@Override
	public int HarmReportCnt() {

		int total = sql.selectOne("test.team.team_pj_lingo.harmReport.HarmReportDAO.harmReportCnt");
		return total;
	}

	// 게시글 신고 목록
	@Override
	public List<HarmReportDTO> HarmReportList(Map<String, Object> map) {

		List<HarmReportDTO> list = sql.selectList("test.team.team_pj_lingo.harmReport.HarmReportDAO.harmReportList", map);
		
		return list;
	}

	// 게시글 신고 등록
	@Override
	public int HarmReportInsert(HarmReportDTO dto) {

		int insertCnt = sql.insert("test.team.team_pj_lingo.harmReport.HarmReportDAO.harmReportInsert", dto);
		return insertCnt;
	}


	// 게시글 신고 삭제
	@Override
	public int HarmReportDelete(int harm_report_num) {
		
		int deleteCnt = sql.delete("test.team.team_pj_lingo.harmReport.HarmReportDAO.harmReportDelete", harm_report_num);
		
		return deleteCnt;
	}

	// 신고 게시글 삭제
	@Override
	public int HarmBoadreDelete(int harm_report_num) {
		
		int deleteCnt = sql.delete("test.team.team_pj_lingo.harmReport.HarmReportDAO.harmBoadreDelete", harm_report_num);
		
		return deleteCnt;
	}


	

}

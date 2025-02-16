package test.team.team_pj_lingo.harmReport;

import java.sql.Timestamp;

public class HarmReportDTO {

	private int harm_report_num;			// 신고번호
	private String harm_report_title;		// 신고할 게시글 제목
	private String board_writer;			// 게시글 작성자
	private String harm_report_writer;		// 신고자
	private String harm_report_content;		// 신고내용
	private Timestamp harm_report_regDate;		// 신고날짜
	private String harm_report_category;	// 신고유형
	
	
	public HarmReportDTO() {}


	public HarmReportDTO(int harm_report_num, String harm_report_title, String harm_report_writer,
			String harm_report_content, Timestamp harm_report_regDate, String harm_report_category, String board_writer) {
		super();
		this.harm_report_num = harm_report_num;
		this.harm_report_title = harm_report_title;
		this.harm_report_writer = harm_report_writer;
		this.harm_report_content = harm_report_content;
		this.harm_report_regDate = harm_report_regDate;
		this.harm_report_category = harm_report_category;
		this.board_writer = board_writer;
	}


	public int getHarm_report_num() {
		return harm_report_num;
	}


	public void setHarm_report_num(int harm_report_num) {
		this.harm_report_num = harm_report_num;
	}


	public String getHarm_report_title() {
		return harm_report_title;
	}


	public void setHarm_report_title(String harm_report_title) {
		this.harm_report_title = harm_report_title;
	}


	public String getHarm_report_writer() {
		return harm_report_writer;
	}


	public void setHarm_report_writer(String harm_report_writer) {
		this.harm_report_writer = harm_report_writer;
	}


	public String getHarm_report_content() {
		return harm_report_content;
	}


	public void setHarm_report_content(String harm_report_content) {
		this.harm_report_content = harm_report_content;
	}


	public Timestamp getHarm_report_regDate() {
		return harm_report_regDate;
	}


	public void setHarm_report_regDate(Timestamp harm_report_regDate) {
		this.harm_report_regDate = harm_report_regDate;
	}


	public String getHarm_report_category() {
		return harm_report_category;
	}


	public void setHarm_report_category(String harm_report_category) {
		this.harm_report_category = harm_report_category;
	}
	


	public String getBoard_writer() {
		return board_writer;
	}


	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}


	@Override
	public String toString() {
		return "HarmReportDTO [harm_report_num=" + harm_report_num + ", harm_report_title=" + harm_report_title
				+ ", board_writer=" + board_writer + ", harm_report_writer=" + harm_report_writer
				+ ", harm_report_content=" + harm_report_content + ", harm_report_regDate=" + harm_report_regDate
				+ ", harm_report_category=" + harm_report_category + "]";
	}
	
}

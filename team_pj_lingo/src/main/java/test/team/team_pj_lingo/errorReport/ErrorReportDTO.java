package test.team.team_pj_lingo.errorReport;

import java.sql.Date;

public class ErrorReportDTO {

	
	private int error_report_num;
	private String error_report_writer;
	private String error_report_title;
	private String error_report_content;
	private Date error_report_regDate;
	private String error_report_status;
	
	public ErrorReportDTO() {} 
	
	public ErrorReportDTO(int error_report_num, String error_report_title, String error_report_content,
			Date error_report_regDate, String error_report_status, String error_report_writer) {
		super();
		this.error_report_num = error_report_num;
		this.error_report_title = error_report_title;
		this.error_report_content = error_report_content;
		this.error_report_regDate = error_report_regDate;
		this.error_report_status = error_report_status;
		this.error_report_writer = error_report_writer;
	}

	public int getError_report_num() {
		return error_report_num;
	}

	public void setError_report_num(int error_report_num) {
		this.error_report_num = error_report_num;
	}

	public String getError_report_title() {
		return error_report_title;
	}

	public void setError_report_title(String error_report_title) {
		this.error_report_title = error_report_title;
	}

	public String getError_report_content() {
		return error_report_content;
	}

	public void setError_report_content(String error_report_content) {
		this.error_report_content = error_report_content;
	}

	public Date getError_report_regDate() {
		return error_report_regDate;
	}

	public void setError_report_regDate(Date error_report_regDate) {
		this.error_report_regDate = error_report_regDate;
	}

	public String getError_report_status() {
		return error_report_status;
	}

	public void setError_report_status(String error_report_status) {
		this.error_report_status = error_report_status;
	}

	public String getError_report_writer() {
		return error_report_writer;
	}

	public void setError_report_writer(String error_report_writer) {
		this.error_report_writer = error_report_writer;
	}

	@Override
	public String toString() {
		return "ErrorReportDTO [error_report_num=" + error_report_num + ", error_report_writer=" + error_report_writer
				+ ", error_report_title=" + error_report_title + ", error_report_content=" + error_report_content
				+ ", error_report_regDate=" + error_report_regDate + ", error_report_status=" + error_report_status
				+ "]";
	}


	
}

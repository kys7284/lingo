package test.team.team_pj_lingo.notice;

import java.sql.Date;
import java.sql.Timestamp;

public class NoticeDTO {
	
	private int notice_num;				// 글번호
	private String notice_title;		// 글제목
	private String notice_content;		// 글내용
	private String notice_writer; 		// 작성자
	private int notice_readCnt; 		// 조회수
	private Timestamp notice_regDate; 		// 작성일
	
	public NoticeDTO() {
		super();
	}

	public NoticeDTO(int notice_num, String notice_title, String notice_content, String notice_writer,
			int notice_readCnt, Timestamp notice_regDate) {
		super();
		this.notice_num = notice_num;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_writer = notice_writer;
		this.notice_readCnt = notice_readCnt;
		this.notice_regDate = notice_regDate;
	}

	public int getNotice_num() {
		return notice_num;
	}

	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_writer() {
		return notice_writer;
	}

	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}

	public int getNotice_readCnt() {
		return notice_readCnt;
	}

	public void setNotice_readCnt(int notice_readCnt) {
		this.notice_readCnt = notice_readCnt;
	}

	public Timestamp getNotice_regDate() {
		return notice_regDate;
	}

	public void setNotice_regDate(Timestamp notice_regDate) {
		this.notice_regDate = notice_regDate;
	}

	@Override
	public String toString() {
		return "NoticeDTO [notice_num=" + notice_num + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_writer=" + notice_writer + ", notice_readCnt=" + notice_readCnt
				+ ", notice_regDate=" + notice_regDate + "]";
	}

}

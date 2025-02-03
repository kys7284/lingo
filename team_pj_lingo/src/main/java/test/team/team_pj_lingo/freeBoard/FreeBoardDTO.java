package test.team.team_pj_lingo.freeBoard;

import java.sql.Date;

public class FreeBoardDTO {
	
	private int fb_num;				// 글번호
	private String fb_title;		// 글제목
	private String fb_content;		// 글내용
	private String fb_writer; 		// 작성자
	private String fb_password; 	// 수정, 삭제용 비밀번호
	private int fb_readCnt; 		// 조회수
	private Date fb_regDate; 		// 작성일
	private int fb_comment_count; 	// 댓글갯수
	private String fb_img;			// 첨부파일
	
	
	public FreeBoardDTO() {
		super();
	}


	public FreeBoardDTO(int fb_num, String fb_title, String fb_content, String fb_writer, String fb_password,
			int fb_readCnt, Date fb_regDate, int fb_comment_count, String fb_img) {
		super();
		this.fb_num = fb_num;
		this.fb_title = fb_title;
		this.fb_content = fb_content;
		this.fb_writer = fb_writer;
		this.fb_password = fb_password;
		this.fb_readCnt = fb_readCnt;
		this.fb_regDate = fb_regDate;
		this.fb_comment_count = fb_comment_count;
		this.fb_img = fb_img;
	}


	public int getFb_num() {
		return fb_num;
	}


	public void setFb_num(int fb_num) {
		this.fb_num = fb_num;
	}


	public String getFb_title() {
		return fb_title;
	}


	public void setFb_title(String fb_title) {
		this.fb_title = fb_title;
	}


	public String getFb_content() {
		return fb_content;
	}


	public void setFb_content(String fb_content) {
		this.fb_content = fb_content;
	}


	public String getFb_writer() {
		return fb_writer;
	}


	public void setFb_writer(String fb_writer) {
		this.fb_writer = fb_writer;
	}


	public String getFb_password() {
		return fb_password;
	}


	public void setFb_password(String fb_password) {
		this.fb_password = fb_password;
	}


	public int getFb_readCnt() {
		return fb_readCnt;
	}


	public void setFb_readCnt(int fb_readCnt) {
		this.fb_readCnt = fb_readCnt;
	}


	public Date getFb_regDate() {
		return fb_regDate;
	}


	public void setFb_regDate(Date fb_regDate) {
		this.fb_regDate = fb_regDate;
	}


	public int getFb_comment_count() {
		return fb_comment_count;
	}


	public void setFb_comment_count(int fb_comment_count) {
		this.fb_comment_count = fb_comment_count;
	}


	public String getFb_img() {
		return fb_img;
	}


	public void setFb_img(String fb_img) {
		this.fb_img = fb_img;
	}


	@Override
	public String toString() {
		return "FreeBoardDTO [fb_num=" + fb_num + ", fb_title=" + fb_title + ", fb_content=" + fb_content
				+ ", fb_writer=" + fb_writer + ", fb_password=" + fb_password + ", fb_readCnt=" + fb_readCnt
				+ ", fb_regDate=" + fb_regDate + ", fb_comment_count=" + fb_comment_count + ", fb_img=" + fb_img + "]";
	}
	
}

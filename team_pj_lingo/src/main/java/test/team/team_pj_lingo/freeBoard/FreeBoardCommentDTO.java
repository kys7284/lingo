package test.team.team_pj_lingo.freeBoard;

import java.sql.Date;

public class FreeBoardCommentDTO {
	
	private int fb_comment_num;	// PK, 댓글 일련번호
	private int fb_board_num; 	// FK, 게시글 번호
	private String fb_writer;	// 작성자
	private String fb_content;	// 글내용
	private Date fb_regDate;		// 작성일
	
	public FreeBoardCommentDTO() {
		super();
	}

	public FreeBoardCommentDTO(int fb_comment_num, int fb_board_num, String fb_writer, String fb_content,
			Date fb_regDate) {
		super();
		this.fb_comment_num = fb_comment_num;
		this.fb_board_num = fb_board_num;
		this.fb_writer = fb_writer;
		this.fb_content = fb_content;
		this.fb_regDate = fb_regDate;
	}

	public int getFb_comment_num() {
		return fb_comment_num;
	}

	public void setFb_comment_num(int fb_comment_num) {
		this.fb_comment_num = fb_comment_num;
	}

	public int getFb_board_num() {
		return fb_board_num;
	}

	public void setFb_board_num(int fb_board_num) {
		this.fb_board_num = fb_board_num;
	}

	public String getFb_writer() {
		return fb_writer;
	}

	public void setFb_writer(String fb_writer) {
		this.fb_writer = fb_writer;
	}

	public String getFb_content() {
		return fb_content;
	}

	public void setFb_content(String fb_content) {
		this.fb_content = fb_content;
	}

	public Date getFb_regDate() {
		return fb_regDate;
	}

	public void setFb_regDate(Date fb_regDate) {
		this.fb_regDate = fb_regDate;
	}

	@Override
	public String toString() {
		return "FreeBoardCommentDTO [fb_comment_num=" + fb_comment_num + ", fb_board_num=" + fb_board_num
				+ ", fb_writer=" + fb_writer + ", fb_content=" + fb_content + ", fb_regDate=" + fb_regDate + "]";
	}
	
}

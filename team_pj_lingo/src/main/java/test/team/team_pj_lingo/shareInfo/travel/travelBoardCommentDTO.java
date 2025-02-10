package test.team.team_pj_lingo.shareInfo.travel;

import java.sql.Date;

public class travelBoardCommentDTO {
	private int TB_COMMENT_NUM;
	private int TB_BOARD_NUM;
	private String TB_WRITER;
	private String TB_CONTENT;
	private Date TB_REGDATE;
	
	public travelBoardCommentDTO() {
		super();
	}

	public travelBoardCommentDTO(int tB_COMMENT_NUM, int tB_BOARD_NUM, String tB_WRITER, String tB_CONTENT,
			Date tB_REGDATE) {
		super();
		TB_COMMENT_NUM = tB_COMMENT_NUM;
		TB_BOARD_NUM = tB_BOARD_NUM;
		TB_WRITER = tB_WRITER;
		TB_CONTENT = tB_CONTENT;
		TB_REGDATE = tB_REGDATE;
	}

	public int getTB_COMMENT_NUM() {
		return TB_COMMENT_NUM;
	}

	public void setTB_COMMENT_NUM(int tB_COMMENT_NUM) {
		TB_COMMENT_NUM = tB_COMMENT_NUM;
	}

	public int getTB_BOARD_NUM() {
		return TB_BOARD_NUM;
	}

	public void setTB_BOARD_NUM(int tB_BOARD_NUM) {
		TB_BOARD_NUM = tB_BOARD_NUM;
	}

	public String getTB_WRITER() {
		return TB_WRITER;
	}

	public void setTB_WRITER(String tB_WRITER) {
		TB_WRITER = tB_WRITER;
	}

	public String getTB_CONTENT() {
		return TB_CONTENT;
	}

	public void setTB_CONTENT(String tB_CONTENT) {
		TB_CONTENT = tB_CONTENT;
	}

	public Date getTB_REGDATE() {
		return TB_REGDATE;
	}

	public void setTB_REGDATE(Date tB_REGDATE) {
		TB_REGDATE = tB_REGDATE;
	}

	@Override
	public String toString() {
		return "travelBoardCommentDTO [TB_COMMENT_NUM=" + TB_COMMENT_NUM + ", TB_BOARD_NUM=" + TB_BOARD_NUM
				+ ", TB_WRITER=" + TB_WRITER + ", TB_CONTENT=" + TB_CONTENT + ", TB_REGDATE=" + TB_REGDATE + "]";
	}
}
//TB_COMMENT_NUM NUMBER(7) PRIMARY KEY,				
//TB_BOARD_NUM NUMBER(7) REFERENCES TRAVEL_BOARD_TBL(TB_NUM),				
//TB_WRITER VARCHAR2(30) NOT NULL,				
//TB_CONTENT CLOB NOT NULL,				
//TB_REGDATE DATE DEFAULT SYSDATE	
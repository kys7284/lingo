package test.team.team_pj_lingo.shareInfo.travel;

import java.sql.Date;

public class travelBoardCommentDTO {
	private int tb_comment_num;
	private int tb_board_num;
	private String tb_writer;
	private String tb_content;
	private Date tb_regDate;
	
	public travelBoardCommentDTO() {
		super();
	}

	public travelBoardCommentDTO(int tb_comment_num, int tb_board_num, String tb_writer, String tb_content,
			Date tb_regDate) {
		super();
		this.tb_comment_num = tb_comment_num;
		this.tb_board_num = tb_board_num;
		this.tb_writer = tb_writer;
		this.tb_content = tb_content;
		this.tb_regDate = tb_regDate;
	}

	public int getTb_comment_num() {
		return tb_comment_num;
	}

	public void setTb_comment_num(int tb_comment_num) {
		this.tb_comment_num = tb_comment_num;
	}

	public int getTb_board_num() {
		return tb_board_num;
	}

	public void setTb_board_num(int tb_board_num) {
		this.tb_board_num = tb_board_num;
	}

	public String getTb_writer() {
		return tb_writer;
	}

	public void setTb_writer(String tb_writer) {
		this.tb_writer = tb_writer;
	}

	public String getTb_content() {
		return tb_content;
	}

	public void setTb_content(String tb_content) {
		this.tb_content = tb_content;
	}

	public Date getTb_regDate() {
		return tb_regDate;
	}

	public void setTb_regDate(Date tb_regDate) {
		this.tb_regDate = tb_regDate;
	}

	@Override
	public String toString() {
		return "travelBoardCommentDTO [tb_comment_num=" + tb_comment_num + ", tb_board_num=" + tb_board_num
				+ ", tb_writer=" + tb_writer + ", tb_content=" + tb_content + ", tb_regDate=" + tb_regDate + "]";
	}
}
//TB_COMMENT_NUM NUMBER(7) PRIMARY KEY,				
//TB_BOARD_NUM NUMBER(7) REFERENCES TRAVEL_BOARD_TBL(TB_NUM),				
//TB_WRITER VARCHAR2(30) NOT NULL,				
//TB_CONTENT CLOB NOT NULL,				
//TB_REGDATE DATE DEFAULT SYSDATE	
package test.team.team_pj_lingo.shareInfo.travel;

import java.sql.Date;

public class travelBoardDTO {
	
	private int tb_num;
	private String tb_title;
	private String tb_content;
	private String tb_writer;
	private String tb_password;
	private int tb_readCnt;
	private Date tb_regDate;
	private int tb_comment_count;
	private String tb_img;
	private String tb_category;
	private String tb_show;
	
	public travelBoardDTO() {
		super();
	}

	public travelBoardDTO(int tb_num, String tb_title, String tb_content, String tb_writer, String tb_password,
			int tb_readCnt, Date tb_regDate, int tb_comment_count, String tb_img, String tb_category, String tb_show) {
		super();
		this.tb_num = tb_num;
		this.tb_title = tb_title;
		this.tb_content = tb_content;
		this.tb_writer = tb_writer;
		this.tb_password = tb_password;
		this.tb_readCnt = tb_readCnt;
		this.tb_regDate = tb_regDate;
		this.tb_comment_count = tb_comment_count;
		this.tb_img = tb_img;
		this.tb_category = tb_category;
		this.tb_show = tb_show;
	}

	public int getTb_num() {
		return tb_num;
	}

	public void setTb_num(int tb_num) {
		this.tb_num = tb_num;
	}

	public String getTb_title() {
		return tb_title;
	}

	public void setTb_title(String tb_title) {
		this.tb_title = tb_title;
	}

	public String getTb_content() {
		return tb_content;
	}

	public void setTb_content(String tb_content) {
		this.tb_content = tb_content;
	}

	public String getTb_writer() {
		return tb_writer;
	}

	public void setTb_writer(String tb_writer) {
		this.tb_writer = tb_writer;
	}

	public String getTb_password() {
		return tb_password;
	}

	public void setTb_password(String tb_password) {
		this.tb_password = tb_password;
	}

	public int getTb_readCnt() {
		return tb_readCnt;
	}

	public void setTb_readCnt(int tb_readCnt) {
		this.tb_readCnt = tb_readCnt;
	}

	public Date getTb_regDate() {
		return tb_regDate;
	}

	public void setTb_regDate(Date tb_regDate) {
		this.tb_regDate = tb_regDate;
	}

	public int getTb_comment_count() {
		return tb_comment_count;
	}

	public void setTb_comment_count(int tb_comment_count) {
		this.tb_comment_count = tb_comment_count;
	}

	public String getTb_img() {
		return tb_img;
	}

	public void setTb_img(String tb_img) {
		this.tb_img = tb_img;
	}

	public String getTb_category() {
		return tb_category;
	}

	public void setTb_category(String tb_category) {
		this.tb_category = tb_category;
	}

	public String getTb_show() {
		return tb_show;
	}

	public void setTb_show(String tb_show) {
		this.tb_show = tb_show;
	}

	@Override
	public String toString() {
		return "travelBoardDTO [tb_num=" + tb_num + ", tb_title=" + tb_title + ", tb_content=" + tb_content
				+ ", tb_writer=" + tb_writer + ", tb_password=" + tb_password + ", tb_readCnt=" + tb_readCnt
				+ ", tb_regDate=" + tb_regDate + ", tb_comment_count=" + tb_comment_count + ", tb_img=" + tb_img
				+ ", tb_category=" + tb_category + ", tb_show=" + tb_show + "]";
	}
}
//TB_NUM      NUMBER PRIMARY KEY,
//TB_TITLE    VARCHAR2(50) NOT NULL,
//TB_CONTENT  CLOB NOT NULL,
//TB_WRITER   VARCHAR2(30) NOT NULL references MEMBER_TBL(MEM_ID),	 --작성자(FK)
//TB_PASSWORD VARCHAR2(30) NOT NULL,
//TB_READCNT  NUMBER(5) DEFAULT 0,
//TB_REGDATE  DATE DEFAULT SYSDATE,
//TB_COMMENT_COUNT NUMBER(6) DEFAULT 0,
//TB_IMG      VARCHAR2(100),
//TB_CATEGORY VARCHAR2(30),
//TB_SHOW varchar2(1) default 'Y')
package test.team.team_pj_lingo.shareInfo.low;

import java.sql.Date;

public class LowInfoDTO {
	
	private int slboard_num;				// 글번호
	private String slboard_content;		// 글내용
	private String slboard_writer; 		// 작성자
	private int slboard_readCnt; 		// 조회수
	private Date slboard_regDate; 		// 작성일
	private int slboard_comment_count; 	// 댓글갯수
	private String slboard_img;

	public LowInfoDTO() {
		super();
	}

	public LowInfoDTO(int slboard_num, String slboard_content, String slboard_writer, int slboard_readCnt,
			Date slboard_regDate, int slboard_comment_count, String slboard_img) {
		super();
		this.slboard_num = slboard_num;
		this.slboard_content = slboard_content;
		this.slboard_writer = slboard_writer;
		this.slboard_readCnt = slboard_readCnt;
		this.slboard_regDate = slboard_regDate;
		this.slboard_comment_count = slboard_comment_count;
		this.slboard_img = slboard_img;
	}

	public String getSlboard_img() {
		return slboard_img;
	}

	public void setSlboard_img(String slboard_img) {
		this.slboard_img = slboard_img;
	}

	public int getSlboard_num() {
		return slboard_num;
	}

	public void setSlboard_num(int slboard_num) {
		this.slboard_num = slboard_num;
	}

	public String getSlboard_content() {
		return slboard_content;
	}

	public void setSlboard_content(String slboard_content) {
		this.slboard_content = slboard_content;
	}

	public String getSlboard_writer() {
		return slboard_writer;
	}

	public void setSlboard_writer(String slboard_writer) {
		this.slboard_writer = slboard_writer;
	}

	public int getSlboard_readCnt() {
		return slboard_readCnt;
	}

	public void setSlboard_readCnt(int slboard_readCnt) {
		this.slboard_readCnt = slboard_readCnt;
	}

	public Date getSlboard_regDate() {
		return slboard_regDate;
	}

	public void setSlboard_regDate(Date slboard_regDate) {
		this.slboard_regDate = slboard_regDate;
	}

	public int getSlboard_comment_count() {
		return slboard_comment_count;
	}

	public void setSlboard_comment_count(int slboard_comment_count) {
		this.slboard_comment_count = slboard_comment_count;
	}

	@Override
	public String toString() {
		return "LowInfoDTO [slboard_num=" + slboard_num + ", slboard_content=" + slboard_content + ", slboard_writer="
				+ slboard_writer + ", slboard_readCnt=" + slboard_readCnt + ", slboard_regDate=" + slboard_regDate
				+ ", slboard_comment_count=" + slboard_comment_count + ", slboard_img=" + slboard_img + "]";
	}

	

}

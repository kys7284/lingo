package test.team.team_pj_lingo.shareInfo.low;

import java.sql.Date;

public class LowInfoCommentDTO {
	
	private int slcomment_num;	// PK, 댓글 일련번호
	private int slboard_num_fk; 	// FK, 게시글 번호
	private String slcomment_writer;	// 작성자
	private String slcomment_content;	// 글내용
	private Date slcomment_regDate;		// 작성일
	
	public LowInfoCommentDTO() {
		super();
	}

	public LowInfoCommentDTO(int slcomment_num, int slboard_num_fk, String slcomment_writer, String slcomment_content,
			Date slcomment_regDate) {
		super();
		this.slcomment_num = slcomment_num;
		this.slboard_num_fk = slboard_num_fk;
		this.slcomment_writer = slcomment_writer;
		this.slcomment_content = slcomment_content;
		this.slcomment_regDate = slcomment_regDate;
	}

	public int getSlcomment_num() {
		return slcomment_num;
	}

	public void setSlcomment_num(int slcomment_num) {
		this.slcomment_num = slcomment_num;
	}

	public int getSlboard_num_fk() {
		return slboard_num_fk;
	}

	public void setSlboard_num_fk(int slboard_num_fk) {
		this.slboard_num_fk = slboard_num_fk;
	}

	public String getSlcomment_writer() {
		return slcomment_writer;
	}

	public void setSlcomment_writer(String slcomment_writer) {
		this.slcomment_writer = slcomment_writer;
	}

	public String getSlcomment_content() {
		return slcomment_content;
	}

	public void setSlcomment_content(String slcomment_content) {
		this.slcomment_content = slcomment_content;
	}

	public Date getSlcomment_regDate() {
		return slcomment_regDate;
	}

	public void setSlcomment_regDate(Date slcomment_regDate) {
		this.slcomment_regDate = slcomment_regDate;
	}

	@Override
	public String toString() {
		return "LowInfoCommentDTO [slcomment_num=" + slcomment_num + ", slboard_num_fk=" + slboard_num_fk
				+ ", slcomment_writer=" + slcomment_writer + ", slcomment_content=" + slcomment_content
				+ ", slcomment_regDate=" + slcomment_regDate + "]";
	}

}

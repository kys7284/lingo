package test.team.team_pj_lingo.member;

import java.sql.Date;
import java.sql.Timestamp;

public class MemberDTO {
		
	private int mem_no;
	private String mem_id;
	private String mem_pwd;
	private String mem_name;
	private String mem_country;
	private Date mem_birthday;
	private String mem_address;
	private String mem_hp;
	private int mem_rank;
	private String mem_email;
	private String mem_comment;
	private Timestamp mem_regdate;
	private String mem_status;
	private int rn;
	private int member_reportCnt;
	


	public MemberDTO() {
		super();
	}
	
	public MemberDTO(int mem_no, String mem_id, String mem_pwd, String mem_name, String mem_country, Date mem_birthday,
			String mem_address, String mem_hp, int mem_rank, String mem_email, String mem_comment,int member_reportCnt,
			Timestamp mem_regdate, String mem_status,int rn) {
		super();
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
		this.mem_name = mem_name;
		this.mem_country = mem_country;
		this.mem_birthday = mem_birthday;
		this.mem_address = mem_address;
		this.mem_hp = mem_hp;
		this.mem_rank = mem_rank;
		this.mem_email = mem_email;
		this.mem_comment = mem_comment;
		this.mem_regdate = mem_regdate;
		this.mem_status = mem_status;
		this.rn = rn;
		this.member_reportCnt = member_reportCnt;
	}




	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pwd() {
		return mem_pwd;
	}

	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public String getMem_country() {
		return mem_country;
	}

	public void setMem_country(String mem_country) {
		this.mem_country = mem_country;
	}

	public Date getMem_birthday() {
		return mem_birthday;
	}

	public void setMem_birthday(Date mem_birthday) {
		this.mem_birthday = mem_birthday;
	}

	public String getMem_address() {
		return mem_address;
	}

	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}

	public String getMem_hp() {
		return mem_hp;
	}

	public void setMem_hp(String mem_hp) {
		this.mem_hp = mem_hp;
	}

	public int getMem_rank() {
		return mem_rank;
	}

	public void setMem_rank(int mem_rank) {
		this.mem_rank = mem_rank;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_comment() {
		return mem_comment;
	}

	public void setMem_comment(String mem_comment) {
		this.mem_comment = mem_comment;
	}

	public Timestamp getMem_regdate() {
		return mem_regdate;
	}

	public void setMem_regdate(Timestamp mem_regdate) {
		this.mem_regdate = mem_regdate;
	}
	
	public String getMem_status() {
		return mem_status;
	}

	public void setMem_status(String mem_status) {
		this.mem_status = mem_status;
	}

	public int getMember_reportCnt() {
		return member_reportCnt;
	}

	public void setMember_reportCnt(int member_reportCnt) {
		this.member_reportCnt = member_reportCnt;
	}

	@Override
	public String toString() {
		return "MemberDTO [mem_no=" + mem_no + ", mem_id=" + mem_id + ", mem_pwd=" + mem_pwd + ", mem_name=" + mem_name
				+ ", mem_country=" + mem_country + ", mem_birthday=" + mem_birthday + ", mem_address=" + mem_address
				+ ", mem_hp=" + mem_hp + ", mem_rank=" + mem_rank + ", mem_email=" + mem_email + ", mem_comment="
				+ mem_comment + ", mem_regdate=" + mem_regdate + ", mem_status=" + mem_status + ", rn=" + rn
				+ ", member_reportCnt=" + member_reportCnt + "]";
	}

	

	
	
	

	
	
}

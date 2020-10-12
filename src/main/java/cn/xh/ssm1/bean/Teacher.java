package cn.xh.ssm1.bean;

import javax.validation.constraints.NotBlank;

public class Teacher {

	private Integer tid;
	@NotBlank
	private String tnum;
	@NotBlank
	private String tpwd;
	private String tname;
	private String tgender;
	private String tidcard;
	private Integer tage;

	@Override
	public String toString() {
		return "Teacher [tid=" + tid + ", tnum=" + tnum + ", tpwd=" + tpwd + ", tname=" + tname + ", tgender=" + tgender
				+ ", tidcard=" + tidcard + ", tage=" + tage + "]";
	}

	public Teacher(Integer tid, String tnum, String tpwd, String tname, String tgender, String tidcard, Integer tage) {
		super();
		this.tid = tid;
		this.tnum = tnum;
		this.tpwd = tpwd;
		this.tname = tname;
		this.tgender = tgender;
		this.tidcard = tidcard;
		this.tage = tage;
	}

	public Teacher() {
		super();
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getTnum() {
		return tnum;
	}

	public void setTnum(String tnum) {
		this.tnum = tnum;
	}

	public String getTpwd() {
		return tpwd;
	}

	public void setTpwd(String tpwd) {
		this.tpwd = tpwd;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTgender() {
		return tgender;
	}

	public void setTgender(String tgender) {
		this.tgender = tgender;
	}

	public String getTidcard() {
		return tidcard;
	}

	public void setTidcard(String tidcard) {
		this.tidcard = tidcard;
	}

	public Integer getTage() {
		return tage;
	}

	public void setTage(Integer tage) {
		this.tage = tage;
	}

}

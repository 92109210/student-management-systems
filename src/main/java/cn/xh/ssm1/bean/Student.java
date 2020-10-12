package cn.xh.ssm1.bean;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer sid;
	@NotBlank
	private String snum;
	@NotBlank
	private String spwd;
	private String sname;
	private String sgender;
	private String sidcard;
	private Integer sage;
	private String scoll;
	private String spro;

	@Override
	public String toString() {
		return "Student [sid=" + sid + ", snum=" + snum + ", spwd=" + spwd + ", sname=" + sname + ", sgender=" + sgender
				+ ", sidcard=" + sidcard + ", sage=" + sage + ", scoll=" + scoll + ", spro=" + spro + "]";
	}

	public Student(Integer sid, String snum, String spwd, String sname, String sgender, String sidcard, Integer sage,
			String scoll, String spro) {
		super();
		this.sid = sid;
		this.snum = snum;
		this.spwd = spwd;
		this.sname = sname;
		this.sgender = sgender;
		this.sidcard = sidcard;
		this.sage = sage;
		this.scoll = scoll;
		this.spro = spro;
	}

	public Student() {
		super();
	}

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getSnum() {
		return snum;
	}

	public void setSnum(String snum) {
		this.snum = snum;
	}

	public String getSpwd() {
		return spwd;
	}

	public void setSpwd(String spwd) {
		this.spwd = spwd;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSgender() {
		return sgender;
	}

	public void setSgender(String sgender) {
		this.sgender = sgender;
	}

	public String getSidcard() {
		return sidcard;
	}

	public void setSidcard(String sidcard) {
		this.sidcard = sidcard;
	}

	public Integer getSage() {
		return sage;
	}

	public void setSage(Integer sage) {
		this.sage = sage;
	}

	public String getScoll() {
		return scoll;
	}

	public void setScoll(String scoll) {
		this.scoll = scoll;
	}

	public String getSpro() {
		return spro;
	}

	public void setSpro(String spro) {
		this.spro = spro;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}

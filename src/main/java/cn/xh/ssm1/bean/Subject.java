package cn.xh.ssm1.bean;

import javax.validation.constraints.NotBlank;

public class Subject {

	private Integer subid;
	@NotBlank
	private String subname;
	private String subintro;
	private String subtype;
	private String subcoll;
	private String subpro;

	@Override
	public String toString() {
		return "Subject [subid=" + subid + ", subname=" + subname + ", subintro=" + subintro + ", subtype=" + subtype
				+ ", subcoll=" + subcoll + ", subpro=" + subpro + "]";
	}

	public Subject(Integer subid, String subname, String subintro, String subtype, String subcoll, String subpro) {
		super();
		this.subid = subid;
		this.subname = subname;
		this.subintro = subintro;
		this.subtype = subtype;
		this.subcoll = subcoll;
		this.subpro = subpro;
	}

	public Subject() {
		super();
	}

	public Integer getSubid() {
		return subid;
	}

	public void setSubid(Integer subid) {
		this.subid = subid;
	}

	public String getSubname() {
		return subname;
	}

	public void setSubname(String subname) {
		this.subname = subname;
	}

	public String getSubintro() {
		return subintro;
	}

	public void setSubintro(String subintro) {
		this.subintro = subintro;
	}

	public String getSubtype() {
		return subtype;
	}

	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}

	public String getSubcoll() {
		return subcoll;
	}

	public void setSubcoll(String subcoll) {
		this.subcoll = subcoll;
	}

	public String getSubpro() {
		return subpro;
	}

	public void setSubpro(String subpro) {
		this.subpro = subpro;
	}

}

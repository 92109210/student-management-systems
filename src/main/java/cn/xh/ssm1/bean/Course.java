package cn.xh.ssm1.bean;

import javax.validation.constraints.NotBlank;

public class Course {

	private Integer couid;
	@NotBlank
	private Subject subject;
	@NotBlank
	private Teacher teacher;
	private String coutime;
	private String couweek;
	private String couroom;
	private Integer credits;
	private Integer period;
	private Integer totalnum;

	@Override
	public String toString() {
		return "Course [couid=" + couid + ", subject=" + subject + ", teacher=" + teacher + ", coutime=" + coutime
				+ ", couweek=" + couweek + ", couroom=" + couroom + ", credits=" + credits + ", period=" + period
				+ ", totalnum=" + totalnum + "]";
	}

	public Course(Integer couid, @NotBlank Subject subject, @NotBlank Teacher teacher, String coutime, String couweek,
			String couroom, Integer credits, Integer period, Integer totalnum) {
		super();
		this.couid = couid;
		this.subject = subject;
		this.teacher = teacher;
		this.coutime = coutime;
		this.couweek = couweek;
		this.couroom = couroom;
		this.credits = credits;
		this.period = period;
		this.totalnum = totalnum;
	}

	public Course() {
		super();
	}

	public Integer getCouid() {
		return couid;
	}

	public void setCouid(Integer couid) {
		this.couid = couid;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getCoutime() {
		return coutime;
	}

	public void setCoutime(String coutime) {
		this.coutime = coutime;
	}

	public String getCouweek() {
		return couweek;
	}

	public void setCouweek(String couweek) {
		this.couweek = couweek;
	}

	public String getCouroom() {
		return couroom;
	}

	public void setCouroom(String couroom) {
		this.couroom = couroom;
	}

	public Integer getCredits() {
		return credits;
	}

	public void setCredits(Integer credits) {
		this.credits = credits;
	}

	public Integer getPeriod() {
		return period;
	}

	public void setPeriod(Integer period) {
		this.period = period;
	}

	public Integer getTotalnum() {
		return totalnum;
	}

	public void setTotalnum(Integer totalnum) {
		this.totalnum = totalnum;
	}

}

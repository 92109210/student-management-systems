package cn.xh.ssm1.bean;

import javax.validation.constraints.NotBlank;

public class Sc {

	private Integer scid;
	@NotBlank
	private Student student;
	@NotBlank
	private Course course;

	@Override
	public String toString() {
		return "Sc [scid=" + scid + ", student=" + student + ", course=" + course + "]";
	}

	public Sc(Integer scid, @NotBlank Student student, @NotBlank Course course) {
		super();
		this.scid = scid;
		this.student = student;
		this.course = course;
	}

	public Sc() {
		super();
	}

	public Integer getScid() {
		return scid;
	}

	public void setScid(Integer scid) {
		this.scid = scid;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

}

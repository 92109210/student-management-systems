package cn.xh.ssm1.service;

import cn.xh.ssm1.bean.Student;

public interface StudentService {

	////检查学生账号合法性
	Student check(Student inputStudent);
	
	//学生修改密码
	public Student changeStupwd(Student before, String afterpwd);

	//学生选课
	Boolean addCou(Student student, Integer couid);

	//退选
	Boolean reback(Student student, Integer scid);

}

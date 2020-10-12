package cn.xh.ssm1.service;

import java.util.List;

import cn.xh.ssm1.bean.Course;
import cn.xh.ssm1.bean.Teacher;

public interface TeacherService {
	
	////检查教师账号合法性
	Teacher check(Teacher inputTeacher);

	//修改密码
	Teacher changeTeapwd(Teacher before, String after);

	//删除课程
	Boolean delCouById(Integer couid);

	//根据教师的id查询课程
	List<Course> getTeaCouInfo(Teacher teacher);

	//根据id查询课程
	Course getCouById(Integer couid);

	//修改课程信息
	Boolean changeCouInfo(Course course);

	//添加课程
	Boolean addCourse(Course course);

}

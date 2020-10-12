package cn.xh.ssm1.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import cn.xh.ssm1.bean.Course;
import cn.xh.ssm1.bean.Teacher;
import cn.xh.ssm1.mapper.CourseMapper;
import cn.xh.ssm1.mapper.TeacherMapper;
import cn.xh.ssm1.service.TeacherService;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	TeacherMapper teacherMapper;

	@Autowired
	CourseMapper courseMapper;
	

	// 检查教师账号合法性
	@Override
	public Teacher check(Teacher inputTeacher) {
		System.out.println(inputTeacher.getTnum());
		System.out.println(inputTeacher.getTpwd());
		List<Teacher> list = teacherMapper.getTeaInfo(inputTeacher);
		System.out.println(list.size());
		if (list.size() == 1) {
			System.out.println("Service return true");
			return list.get(0);
		} else {
			System.out.println("Service return null");
			return null;
		}
	}

	// 修改密码
	@Override
	public Teacher changeTeapwd(Teacher before, String afterpwd) {
		System.out.println("这里是教师修改密码业务层");
		Teacher after = new Teacher();
		after.setTpwd(afterpwd);
		Integer acount = teacherMapper.updTeacher(before, after);
		if (acount == 1) {
			before.setTpwd(afterpwd);
			return before;
		} else {
			return null;
		}

	}

	@Override
	public Boolean delCouById(Integer couid) {
		Course course = new Course();
		course.setCouid(couid);
		Integer result = courseMapper.delCourse(course);
		if (result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}

	}

	@Override
	public List<Course> getTeaCouInfo(Teacher teacher) {
		Course course = new Course();
		course.setTeacher(teacher);
		List<Course> coursesList = courseMapper.getCouInfo(course);
		return coursesList;
	}

	@Override
	public Course getCouById(Integer couid) {
		Course course = new Course();
		course.setCouid(couid);
		List<Course> coursesList = courseMapper.getCouInfo(course);
		if (coursesList.size()==1) {
			return coursesList.get(0);
		}else {
			return null;
		}
	}

	@Override
	public Boolean changeCouInfo(Course course) {
		Course before = new Course();
		before.setCouid(course.getCouid());
		
		Integer result =  courseMapper.updCourse(before, course);
		if (result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Boolean addCourse(Course course) {
		Integer result =  courseMapper.addCourse(course);
		System.out.println(result);
		if (result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

}

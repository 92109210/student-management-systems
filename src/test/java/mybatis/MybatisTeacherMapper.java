package mybatis;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import cn.xh.ssm1.bean.Teacher;
import cn.xh.ssm1.mapper.TeacherMapper;


public class MybatisTeacherMapper {
	
	@Test
	@Transactional
	public void addTeacher() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		TeacherMapper TeacherMapper = (TeacherMapper) ac.getBean("teacherMapper");
		Teacher teacher = new Teacher();
		teacher.setTnum("1471559578");
		teacher.setTpwd("123000");
		teacher.setTgender("男");

		TeacherMapper.addTeacher(teacher);

	}
	
	@Test
	@Transactional
	public void getStuInfo() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		TeacherMapper TeacherMapper = (TeacherMapper) ac.getBean("teacherMapper");
		Teacher teacher = new Teacher();
		teacher.setTnum("1471559578");
		teacher.setTpwd("123000");
		teacher.setTgender("男");
		
		List<Teacher> list = TeacherMapper.getTeaInfo(teacher);
		
		for(Teacher teacher1: list) {
			System.out.println(teacher1);
		}

	}
	
	@Test
	@Transactional
	public void delTeacher() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		TeacherMapper TeacherMapper = (TeacherMapper) ac.getBean("teacherMapper");
		Teacher teacher = new Teacher();
		teacher.setTnum("1471559578");
		teacher.setTpwd("123000");
		teacher.setTgender("男");
		
		Integer num = TeacherMapper.delTeacher(teacher);
		
		System.out.println(num);
		
	}
	
	@Test
	@Transactional
	public void updTeacher() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		TeacherMapper TeacherMapper = (TeacherMapper) ac.getBean("teacherMapper");
		Teacher before = new Teacher();
		before.setTnum("1471559578");
		before.setTpwd("123000");
		before.setTgender("男");
		
		Teacher after = new Teacher();
		after.setTname("晓辉");
		
		Integer num = TeacherMapper.updTeacher(before, after);
		
		System.out.println(num);
		
	}

}

package mybatis;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.mapper.StudentMapper;


public class MybatisSutdentMapper {
	
	@Test
	@Transactional
	public void addStudent() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentMapper studentMapper = (StudentMapper) ac.getBean("studentMapper");
		Student student = new Student();
		student.setSnum("1720502124");
		student.setSpwd("123456");
		student.setSname("小李");
		
		studentMapper.addStudent(student);

	}
	
	@Test
	@Transactional
	public void getStuInfo() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentMapper studentMapper = (StudentMapper) ac.getBean("studentMapper");
		Student student = new Student();
		student.setSnum("1720502124");
		student.setSpwd("123456");
		student.setSname("小李");
		
		List<Student> list = studentMapper.getStuInfo(student);
		
		for(Student student1: list) {
			System.out.println(student1);
		}

	}
	
	@Test
	@Transactional
	public void delStudent() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentMapper studentMapper = (StudentMapper) ac.getBean("studentMapper");
		Student student = new Student();
		student.setSnum("1720502124");
		student.setSpwd("123456");
		student.setSname("小李");
		
		Integer num = studentMapper.delStudent(student);
		
		System.out.println(num);
		
	}
	
	@Test
	@Transactional
	public void updStudent() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentMapper studentMapper = (StudentMapper) ac.getBean("studentMapper");
		Student before = new Student();
		before.setSnum("1720502124");
		before.setSpwd("123456");
		before.setSname("小李");
		
		Student after = new Student();
		after.setSname("晓辉");
		
		
		
		Integer num = studentMapper.updStudent(before, after);
		
		System.out.println(num);
		
	}

}

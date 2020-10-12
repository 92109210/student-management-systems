package mybatis;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import cn.xh.ssm1.bean.Course;
import cn.xh.ssm1.bean.Sc;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.mapper.ScMapper;


public class MybatisScMapper {
	
	@Test
	@Transactional
	public void addSc() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ScMapper ScMapper = (ScMapper) ac.getBean("scMapper");
		Sc sc = new Sc();
		Student student = new Student();
		student.setSid(107);
		Course course = new Course();
		course.setCouid(6);
		
		sc.setStudent(student);
		sc.setCourse(course);
		
		ScMapper.addSc(sc);

	}
	
	@Test
	@Transactional
	public void getScInfo() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ScMapper ScMapper = (ScMapper) ac.getBean("scMapper");
		Sc sc = new Sc();
		Student student = new Student();
		student.setSid(107);
		Course course = new Course();
		//course.setCouid(6);
		
		
		sc.setStudent(null);
		sc.setCourse(course);
		
		List<Sc> list = ScMapper.getScInfo(sc);
		
		for(Sc sc1: list) {
			System.out.println(sc1);
		}

	}
	
	@Test
	@Transactional
	public void delSc() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ScMapper ScMapper = (ScMapper) ac.getBean("scMapper");
		Sc sc = new Sc();
		Student student = new Student();
		student.setSid(107);
		Course course = new Course();
		course.setCouid(6);
		
		sc.setStudent(student);
		sc.setCourse(course);
		
		Integer num = ScMapper.delSc(sc);
		
		System.out.println(num);
		
	}
	
	@Test
	@Transactional
	public void updSc() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ScMapper ScMapper = (ScMapper) ac.getBean("scMapper");
		Sc before = new Sc();
		Student student = new Student();
		student.setSid(107);
		Course course = new Course();
		course.setCouid(6);
		
		before.setStudent(student);
		before.setCourse(course);
		
		Sc after = new Sc();
		Student student1 = new Student();
		student1.setSid(108);
		/*
		 * Course course1 = new Course(); course1.setCouid(5);
		 */
		
		after.setStudent(student1);
		
		Integer num = ScMapper.updSc(before, after);
		
		System.out.println(num);
		
	}
	
	
	@Test
	@Transactional
	public void getScSomeInfo() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ScMapper ScMapper = (ScMapper) ac.getBean("scMapper");
		Sc sc = new Sc();
		List<Sc> list = ScMapper.getScInfo(sc);
		for(Sc sc1: list) {
			System.out.println(sc1);
		}

	}

}

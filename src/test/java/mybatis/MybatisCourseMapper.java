package mybatis;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import cn.xh.ssm1.bean.Course;
import cn.xh.ssm1.bean.Subject;
import cn.xh.ssm1.bean.Teacher;
import cn.xh.ssm1.mapper.CourseMapper;


public class MybatisCourseMapper {
	
	@Test
	@Transactional
	public void addCourse() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		CourseMapper CourseMapper = (CourseMapper) ac.getBean("courseMapper");
		Course course = new Course();
		Subject subject = new Subject();
		subject.setSubid(454);
		Teacher teacher =new Teacher();
		teacher.setTid(2012);
		course.setSubject(subject);
		course.setTeacher(teacher);
		course.setCoutime("setCoutime");
		course.setCouweek("setCouweek");
		course.setCouroom("setCouroom");
		course.setCredits(1);
		course.setPeriod(2);
		course.setTotalnum(3);

		CourseMapper.addCourse(course);

	}
	
	@Test
	@Transactional
	public void getCouInfo() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		CourseMapper CourseMapper = (CourseMapper) ac.getBean("courseMapper");
		Course course = new Course();
		Subject subject = new Subject();
		subject.setSubid(454);
		Teacher teacher =new Teacher();
		teacher.setTid(2012);
		course.setSubject(subject);
		course.setTeacher(teacher);
		course.setCoutime("setCoutime");
		course.setCouweek("setCouweek");
		course.setCouroom("setCouroom");
		course.setCredits(1);
		course.setPeriod(2);
		course.setTotalnum(3);
		
		List<Course> list = CourseMapper.getCouInfo(course);
		
		for(Course course1: list) {
			System.out.println(course1);
		}

	}
	
	@Test
	@Transactional
	public void delCourse() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		CourseMapper CourseMapper = (CourseMapper) ac.getBean("courseMapper");
		Course course = new Course();
		Subject subject = new Subject();
		subject.setSubid(454);
		Teacher teacher =new Teacher();
		teacher.setTid(2012);
		course.setSubject(subject);
		course.setTeacher(teacher);
		course.setCoutime("setCoutime");
		course.setCouweek("setCouweek");
		course.setCouroom("setCouroom");
		course.setCredits(1);
		course.setPeriod(2);
		course.setTotalnum(3);
		
		Integer num = CourseMapper.delCourse(course);
		
		System.out.println(num);
		
	}
	
	@Test
	@Transactional
	public void updCourse() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		CourseMapper CourseMapper = (CourseMapper) ac.getBean("courseMapper");
		Course before = new Course();
		Subject subject = new Subject();
		subject.setSubid(454);
		Teacher teacher =new Teacher();
		teacher.setTid(2012);
		before.setSubject(subject);
		before.setTeacher(teacher);
		before.setCoutime("setCoutime");
		before.setCouweek("setCouweek");
		before.setCouroom("setCouroom");
		before.setCredits(1);
		before.setPeriod(2);
		before.setTotalnum(3);
		
		Course after = new Course();
		after.setCoutime("setCoutimeafter");
		after.setCouweek("setCouweekafter");
		after.setCouroom("setCouroomafter");
		after.setCredits(11);
		after.setPeriod(22);
		after.setTotalnum(33);
		
		Integer num = CourseMapper.updCourse(before, after);
		
		System.out.println(num);
		
	}
	
	@Test
	@Transactional
	public void getInfo() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		CourseMapper CourseMapper = (CourseMapper) ac.getBean("courseMapper");
		Course course = new Course();
		List<Course> list = CourseMapper.getCouInfo(course);
		for(Course course1: list) {
			System.out.println(course1);
		}

	}

}

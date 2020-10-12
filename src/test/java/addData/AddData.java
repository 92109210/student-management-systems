package addData;

import java.util.List;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.xh.ssm1.bean.Admin;
import cn.xh.ssm1.bean.Course;
import cn.xh.ssm1.bean.Sc;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.bean.Subject;
import cn.xh.ssm1.bean.Teacher;
import cn.xh.ssm1.mapper.AdminMapper;
import cn.xh.ssm1.mapper.CourseMapper;
import cn.xh.ssm1.mapper.ScMapper;
import cn.xh.ssm1.mapper.StudentMapper;
import cn.xh.ssm1.mapper.SubjectMapper;
import cn.xh.ssm1.mapper.TeacherMapper;

public class AddData {

	// 创建学生
	@Test
	public void createStudent() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SqlSession sqlSession = (SqlSession) ac.getBean("sqlSession");
		StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
//		TeacherMapper teacherMapper = sqlSession.getMapper(TeacherMapper.class);
//		AdminMapper adminMapper = sqlSession.getMapper(AdminMapper.class);
//		SubjectMapper subjectMapper = sqlSession.getMapper(SubjectMapper.class);
//		CourseMapper courseMapper = sqlSession.getMapper(CourseMapper.class);
//		ScMapper scMapper = sqlSession.getMapper(ScMapper.class);

		Student student = new Student();
//		Teacher teacher = new Teacher();
//		Admin admin = new Admin();
//		Subject subject = new Subject();
//		Course course = new Course();
//		Sc sc = new Sc();
		for (int i = 0; i < 100; i++) {
			student.setSid(i);
			student.setSnum(String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			student.setSpwd(String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			student.setSage(Integer.valueOf((int) (Math.random() * 100)));
			student.setSname(UUID.randomUUID().toString().substring(0, 5) + "名字");
			student.setSgender((int)(Math.random() * 2) == 0 ? "男" : "女");
			student.setSidcard(String.format("%06d", (int) (Math.random() * 1000000 + 1))
					+ String.format("%06d", (int) (Math.random() * 1000000 + 1))
					+ String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			student.setScoll(UUID.randomUUID().toString().substring(0, 5) + "学院");
			student.setSpro(UUID.randomUUID().toString().substring(0, 5) + "专业");
			studentMapper.addStudent(student);

		}
		student.setSname("学生测试");
		student.setSnum("student");
		student.setSpwd("student");
		studentMapper.addStudent(student);
	}

	// 创建教师
	@Test
	public void createTeacher() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SqlSession sqlSession = (SqlSession) ac.getBean("sqlSession");
		TeacherMapper teacherMapper = sqlSession.getMapper(TeacherMapper.class);
		Teacher teacher = new Teacher();
		for (int i = 0; i < 100; i++) {
			teacher.setTid(i);
			teacher.setTnum(String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			teacher.setTpwd(String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			teacher.setTage(Integer.valueOf((int) (Math.random() * 100)));
			teacher.setTname(UUID.randomUUID().toString().substring(0, 5) + "名字");
			teacher.setTgender((int)(Math.random() * 2) == 0 ? "男" : "女");
			teacher.setTidcard(String.format("%06d", (int) (Math.random() * 1000000 + 1))
					+ String.format("%06d", (int) (Math.random() * 1000000 + 1))
					+ String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			teacherMapper.addTeacher(teacher);

		}
		teacher.setTname("教师测试");
		teacher.setTnum("teacher");
		teacher.setTpwd("teacher");
		teacherMapper.addTeacher(teacher);
	}
	
	// 创建管理员
	@Test
	public void createAdmin() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SqlSession sqlSession = (SqlSession) ac.getBean("sqlSession");
		AdminMapper adminMapper = sqlSession.getMapper(AdminMapper.class);
		Admin admin = new Admin();
		for (int i = 0; i < 100; i++) {
			admin.setAid(i);
			admin.setAnum(String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			admin.setApwd(String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			admin.setAage(Integer.valueOf((int) (Math.random() * 100)));
			admin.setAname(UUID.randomUUID().toString().substring(0, 5) + "名字");
			admin.setAgender((int)(Math.random() * 2) == 0 ? "男" : "女");
			admin.setAidcard(String.format("%06d", (int) (Math.random() * 1000000 + 1))
					+ String.format("%06d", (int) (Math.random() * 1000000 + 1))
					+ String.format("%06d", (int) (Math.random() * 1000000 + 1)));
			adminMapper.addAdmin(admin);

		}
		admin.setAname("管理员测试");
		admin.setAnum("admin");
		admin.setApwd("admin");
		adminMapper.addAdmin(admin);
	}
	
	// 创建科目表
	@Test
	public void createSubject() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SqlSession sqlSession = (SqlSession) ac.getBean("sqlSession");
		SubjectMapper subjectMapper = sqlSession.getMapper(SubjectMapper.class);
		Subject subject = new Subject();
		for (int i = 0; i < 100; i++) {
			subject.setSubname(UUID.randomUUID().toString().substring(0, 5) + "名字");
			subject.setSubintro(UUID.randomUUID().toString().substring(0, 10) + "介绍");
			subject.setSubtype((int)(Math.random() * 2) == 0 ? "必修" : "选修");
			subject.setSubcoll(UUID.randomUUID().toString().substring(0, 5) + "学院");
			subject.setSubpro(UUID.randomUUID().toString().substring(0, 5) + "专业");
			subjectMapper.addSubject(subject);

		}
		subject.setSubname("科目表测试");
		subjectMapper.addSubject(subject);
	}
	
	// 创建课程表
	@Test
	public void createCourse() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SqlSession sqlSession = (SqlSession) ac.getBean("sqlSession");
		CourseMapper courseMapper = sqlSession.getMapper(CourseMapper.class);
		TeacherMapper teacherMapper = sqlSession.getMapper(TeacherMapper.class);
		SubjectMapper subjectMapper = sqlSession.getMapper(SubjectMapper.class);
		Course course = new Course();
		Teacher teacher = new Teacher();
		Subject subject = new Subject();
		
		
		
		for (int i = 0; i < 100; i++) {
			subject.setSubid((int) (Math.random() * 101 + 1));
			teacher.setTid((int) (Math.random() * 101 + 1));
			course.setSubject(subject);
			course.setTeacher(teacher);
			course.setCoutime(UUID.randomUUID().toString().substring(0, 5) + "上课时间");
			course.setCouweek(UUID.randomUUID().toString().substring(0, 5) + "上课周数");
			course.setCouroom(String.format("%03d", (int) (Math.random() * 1000 + 1)));
			course.setCredits((int) (Math.random() * 2 + 1));
			course.setPeriod((int) (Math.random() * 30 + 1));
			course.setTotalnum(((int) (Math.random() * 10 + 1))*10);
			courseMapper.addCourse(course);

		}
		Teacher teacher1 = new Teacher();
		Subject subject1 = new Subject();
		teacher1.setTnum("teacher");
		subject1.setSubname("科目表测试");
		List<Teacher> tList = teacherMapper.getTeaInfo(teacher1);
		List<Subject> sList = subjectMapper.getSubInfo(subject1);
		course.setTeacher(tList.get(0));
		course.setSubject(sList.get(0));
		courseMapper.addCourse(course);
	}
	
	// 创建学生选课表
	@Test
	public void createSc() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SqlSession sqlSession = (SqlSession) ac.getBean("sqlSession");
		ScMapper scMapper = sqlSession.getMapper(ScMapper.class);
		StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
		
		Sc sc = new Sc();
		Student student = new Student();
		Course course = new Course();
		for (int i = 0; i < 100; i++) {
			student.setSid((int) (Math.random() * 101 + 1));
			course.setCouid((int) (Math.random() * 101 + 1));
			sc.setStudent(student);
			sc.setCourse(course);
			scMapper.addSc(sc);

		}
		Student student1 = new Student();
		student1.setSnum("student");
		List<Student> sList = studentMapper.getStuInfo(student1);
		course.setCouid((int) (Math.random() * 101 + 1));
		sc.setStudent(sList.get(0));
		sc.setCourse(course);
		scMapper.addSc(sc);
	}

}

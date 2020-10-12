package mybatis;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import cn.xh.ssm1.bean.Subject;
import cn.xh.ssm1.mapper.SubjectMapper;


public class MybatisSubjectMapper {
	
	@Test
	@Transactional
	public void addSubject() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SubjectMapper SubjectMapper = (SubjectMapper) ac.getBean("subjectMapper");
		Subject subject = new Subject();
		subject.setSubname("高等数学");
		subject.setSubcoll("数学基础学院");
		subject.setSubpro("数学专业");

		SubjectMapper.addSubject(subject);

	}
	
	@Test
	@Transactional
	public void getStuInfo() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SubjectMapper SubjectMapper = (SubjectMapper) ac.getBean("subjectMapper");
		Subject subject = new Subject();
		subject.setSubname("高等数学");
		subject.setSubcoll("数学基础学院");
		subject.setSubpro("数学专业");
		
		List<Subject> list = SubjectMapper.getSubInfo(subject);
		
		for(Subject subject1: list) {
			System.out.println(subject1);
		}

	}
	
	@Test
	@Transactional
	public void delSubject() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SubjectMapper SubjectMapper = (SubjectMapper) ac.getBean("subjectMapper");
		Subject subject = new Subject();
		subject.setSubname("高等数学");
		subject.setSubcoll("数学基础学院");
		subject.setSubpro("数学专业");
		
		Integer num = SubjectMapper.delSubject(subject);
		
		System.out.println(num);
		
	}
	
	@Test
	@Transactional
	public void updSubject() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SubjectMapper SubjectMapper = (SubjectMapper) ac.getBean("subjectMapper");
		Subject before = new Subject();
		before.setSubname("高等数学");
		before.setSubcoll("数学基础学院");
		before.setSubpro("数学专业");
		
		Subject after = new Subject();
		after.setSubname("晓辉");
		
		Integer num = SubjectMapper.updSubject(before, after);
		
		System.out.println(num);
		
	}

}

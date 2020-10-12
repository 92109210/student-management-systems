package cn.xh.ssm1.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import cn.xh.ssm1.bean.Course;
import cn.xh.ssm1.bean.Sc;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.mapper.ScMapper;
import cn.xh.ssm1.mapper.StudentMapper;
import cn.xh.ssm1.service.StudentService;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentMapper studentMapper;

	@Autowired
	ScMapper scMapper;

	// 检查学生账号合法性
	@Override
	public Student check(Student inputStudent) {
		System.out.println(inputStudent.getSnum());
		System.out.println(inputStudent.getSpwd());
		List<Student> list = studentMapper.getStuInfo(inputStudent);
		System.out.println(list.size());
		if (list.size() == 1) {
			System.out.println("Service return true");
			return list.get(0);
		} else {
			System.out.println("Service return null");
			return null;
		}
	}

	// 学生修改密码
	public Student changeStupwd(Student before, String afterpwd) {
		System.out.println("这里是学生修改密码业务层");
		Student after = new Student();
		after.setSpwd(afterpwd);
		Integer acount = studentMapper.updStudent(before, after);
		if (acount == 1) {
			before.setSpwd(afterpwd);
			return before;
		} else {
			return null;
		}
	}

	@Override
	public Boolean addCou(Student student, Integer couid) {
		Sc sc = new Sc();
		sc.setStudent(student);
		Course course = new Course();
		course.setCouid(couid);
		sc.setCourse(course);
		Integer result = scMapper.addSc(sc);
		if (result == 1) {
			return true;
		} else {
			// 回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Boolean reback(Student student, Integer scid) {
		Sc sc = new Sc();
		sc.setScid(scid);
		Integer result = scMapper.delSc(sc);
		if (result == 1) {
			return true;
		} else {
			System.out.println("result大于1，回滚：result="+result);
			// 回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

}

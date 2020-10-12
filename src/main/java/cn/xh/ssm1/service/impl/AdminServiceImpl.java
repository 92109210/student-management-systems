package cn.xh.ssm1.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import cn.xh.ssm1.bean.Admin;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.bean.Subject;
import cn.xh.ssm1.bean.Teacher;
import cn.xh.ssm1.mapper.AdminMapper;
import cn.xh.ssm1.mapper.StudentMapper;
import cn.xh.ssm1.mapper.SubjectMapper;
import cn.xh.ssm1.mapper.TeacherMapper;
import cn.xh.ssm1.service.AdminService;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminMapper adminMapper;
	
	@Autowired
	StudentMapper studentMapper;
	
	@Autowired
	TeacherMapper teacherMapper;
	
	@Autowired
	SubjectMapper subjectMapper;

	////检查管理员账号合法性
	@Override
	public Admin check(Admin inputAdmin) {
		System.out.println(inputAdmin.getAnum());
		System.out.println(inputAdmin.getApwd());
		List<Admin> list = adminMapper.getAdmInfo(inputAdmin);
		System.out.println(list.size());
		if(list.size()==1) {
			System.out.println("Service return true");
			return list.get(0);
		}else {
			System.out.println("Service return null");
			return null;
		}
	}

	//管理员获取所有学生信息
	@Override
	public List<Student> getAllStudentInfo() {
		return studentMapper.getStuInfo(null);

	}

	//管理员通过id删除学生信息
	@Override
	public Boolean delStuById(Integer sid) {
		Student student = new Student();
		student.setSid(sid);
		Integer result = studentMapper.delStudent(student);
		if(result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	//管理员通过id查询学生信息
	@Override
	public Student getStuById(Integer sid) {
		Student student = new Student();
		student.setSid(sid);
		List<Student> sList = studentMapper.getStuInfo(student);
		if(sList.size()==1) {
			return sList.get(0);
		}else {
			return null;
		}
	}

	//管理员通过id修改学生信息
	@Override
	public Boolean changeStuInfo(Student student) {
		Student before = new Student();
		before.setSid(student.getSid());
		Integer result = studentMapper.updStudent(before, student);
		if(result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}
	
	//==========教师相关========================

	//管理员获取所有教师信息
	@Override
	public List<Teacher> getAllTeacherInfo() {
		return teacherMapper.getTeaInfo(null);
	}

	@Override
	public Boolean delTeaById(Integer tid) {
		Teacher teacher = new Teacher();
		teacher.setTid(tid);
		Integer result = teacherMapper.delTeacher(teacher);
		if(result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Teacher getTeaById(Integer tid) {
		Teacher teacher = new Teacher();
		teacher.setTid(tid);
		List<Teacher> tList = teacherMapper.getTeaInfo(teacher);
		if(tList.size()==1) {
			return tList.get(0);
		}else {
			return null;
		}
	}

	@Override
	public Boolean changeTeaInfo(Teacher teacher) {
		Teacher before = new Teacher();
		before.setTid(teacher.getTid());
		Integer result = teacherMapper.updTeacher(before, teacher);
		if(result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}
	
	//===============管理员相关============================

	@Override
	public List<Admin> getAllAdminInfo() {
		return adminMapper.getAdmInfo(null);
	}

	@Override
	public Boolean delAdmById(Integer aid) {
		Admin admin = new Admin();
		admin.setAid(aid);
		Integer result = adminMapper.delAdmin(admin);
		if(result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Admin getAdmById(Integer aid) {
		Admin admin = new Admin();
		admin.setAid(aid);
		List<Admin> aList = adminMapper.getAdmInfo(admin);
		if(aList.size()==1) {
			return aList.get(0);
		}else {
			return null;
		}
	}

	@Override
	public Boolean changeAdmInfo(Admin admin) {
		Admin before = new Admin();
		before.setAid(admin.getAid());
		Integer result = adminMapper.updAdmin(before, admin);
		if(result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}
	
	//===============科目表相关============================

	@Override
	public List<Subject> getAllSubjectInfo() {
		return subjectMapper.getSubInfo(null);
	}

	@Override
	public Boolean delSubById(Integer subid) {
		Subject subject = new Subject();
		subject.setSubid(subid);
		Integer result = subjectMapper.delSubject(subject);
		if(result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Subject getSubById(Integer subid) {
		Subject subject = new Subject();
		subject.setSubid(subid);
		List<Subject> aList = subjectMapper.getSubInfo(subject);
		if(aList.size()==1) {
			return aList.get(0);
		}else {
			return null;
		}
	}

	@Override
	public Boolean changeSubInfo(Subject subject) {
		Subject before = new Subject();
		before.setSubid(subject.getSubid());
		Integer result = subjectMapper.updSubject(before, subject);
		if(result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Boolean addStuInfo(Student student) {
		Integer result = studentMapper.addStudent(student);
		if (result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Boolean addTeaInfo(Teacher teacher) {
		Integer result = teacherMapper.addTeacher(teacher);
		if (result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Boolean addAdmInfo(Admin admin) {
		Integer result = adminMapper.addAdmin(admin);
		if (result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}

	@Override
	public Boolean addSubInfo(Subject subject) {
		Integer result = subjectMapper.addSubject(subject);
		if (result==1) {
			return true;
		}else {
			//回滚
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return false;
		}
	}
	
	

}

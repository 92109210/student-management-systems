package cn.xh.ssm1.service;

import java.util.List;

import cn.xh.ssm1.bean.Admin;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.bean.Subject;
import cn.xh.ssm1.bean.Teacher;

public interface AdminService {

	// 检查管理员账号合法性
	Admin check(Admin inputAdmin);

	// 管理员获取所有学生信息
	List<Student> getAllStudentInfo();

	// 管理员通过id删除学生信息
	Boolean delStuById(Integer sid);

	// 管理员通过id查询学生信息
	Student getStuById(Integer sid);

	// 管理员通过id修改学生信息
	Boolean changeStuInfo(Student student);

	// 管理员添加学生信息
	Boolean addStuInfo(Student student);

	// ==============教师相关====================

	// 管理员获取所有教师信息
	List<Teacher> getAllTeacherInfo();

	// 管理员通过id删除教师信息
	Boolean delTeaById(Integer tid);

	// 管理员通过id查询教师信息
	Teacher getTeaById(Integer tid);

	// 管理员通过id修改教师信息
	Boolean changeTeaInfo(Teacher teacher);

	// 管理员添加教师信息
	Boolean addTeaInfo(Teacher teacher);

	// ==============管理员相关====================

	// 管理员获取所有管理员信息
	List<Admin> getAllAdminInfo();

	// 管理员通过id删除管理员信息
	Boolean delAdmById(Integer aid);

	// 管理员通过id查询管理员信息
	Admin getAdmById(Integer aid);

	// 管理员通过id修改管理员信息
	Boolean changeAdmInfo(Admin admin);

	// 管理员添加管理员信息
	Boolean addAdmInfo(Admin admin);

	// ==============科目表相关====================

	// 管理员获取所有科目表信息
	List<Subject> getAllSubjectInfo();

	// 管理员通过id删除科目表信息
	Boolean delSubById(Integer subid);

	// 管理员通过id查询科目表信息
	Subject getSubById(Integer subid);

	// 管理员通过id修改科目表信息
	Boolean changeSubInfo(Subject subject);

	// 管理员添加科目表信息
	Boolean addSubInfo(Subject subject);
}

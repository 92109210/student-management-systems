package cn.xh.ssm1.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xh.ssm1.service.StudentService;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.service.TeacherService;
import cn.xh.ssm1.bean.Teacher;
import cn.xh.ssm1.service.AdminService;
import cn.xh.ssm1.bean.Admin;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	StudentService studentService;

	@Autowired
	TeacherService teacherService;

	@Autowired
	AdminService adminService;

	// 学生登录
	@RequestMapping("/studentlogin")
	public String logicStudent(@Valid Student inputStudent, BindingResult bindingResult, HttpSession session) {
		// 校验前端账号密码输入不为空
		List<ObjectError> allError = bindingResult.getAllErrors();
		if (allError.size() > 0) {
			System.out.println("Controll input error");
			return "redirect:/jsp/fail.jsp";
		}
		Student student = studentService.check(inputStudent);
		System.out.println("Controller student:" + student);
		if (student != null) {
			System.out.println(student);
			session.setAttribute("student", student);
			return "redirect:/jsp/student/studentFace.jsp";
		} else {
			return "redirect:/jsp/fail.jsp";
			
		}
	}

	// 教师登录
	@RequestMapping("/teacherlogin")
	public String logicTeacher(@Valid Teacher inputTeacher, BindingResult bindingResult, HttpSession session) {
		// 校验前端账号密码输入不为空
		List<ObjectError> allError = bindingResult.getAllErrors();
		if (allError.size() > 0) {
			System.out.println("Controll input error");
			return "redirect:/jsp/fail.jsp";
		}
		Teacher teacher = teacherService.check(inputTeacher);
		System.out.println("Controller teacher:" + teacher);
		if (teacher != null) {
			System.out.println(teacher);
			session.setAttribute("teacher", teacher);
			return "redirect:/jsp/teacher/teacherFace.jsp";
		} else {
			return "redirect:/jsp/fail.jsp";
		}
	}
	
	// 管理员登录
	@RequestMapping("/adminlogin")
	public String logicAdmin(@Valid Admin inputAdmin, BindingResult bindingResult, HttpSession session) {
		// 校验前端账号密码输入不为空
		List<ObjectError> allError = bindingResult.getAllErrors();
		if (allError.size() > 0) {
			System.out.println("Controll input error");
			return "redirect:/jsp/fail.jsp";
		}
		Admin admin = adminService.check(inputAdmin);
		System.out.println("Controller admin:" + admin);
		if (admin != null) {
			System.out.println(admin);
			session.setAttribute("admin", admin);
			return "redirect:/jsp/admin/adminFace.jsp";
		} else {
			return "redirect:/jsp/fail.jsp";
		}
	}

}

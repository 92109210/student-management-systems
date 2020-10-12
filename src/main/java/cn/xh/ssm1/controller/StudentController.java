package cn.xh.ssm1.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.xh.ssm1.bean.Course;
import cn.xh.ssm1.bean.Msg;
import cn.xh.ssm1.bean.Sc;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.service.CourseService;
import cn.xh.ssm1.service.ScService;
import cn.xh.ssm1.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	StudentService StudentService;

	@Autowired
	CourseService courseService;

	@Autowired
	ScService scService;

	// 学生修改登录密码
	@RequestMapping("/changeStupwd")
	public String changeStupwd(@Param("spwdold") String spwdold, @Param("spwdnew") String spwdnew,
			HttpSession session) {
		// 比对旧密码与session中的密码是否一致
		Student sessionStudent = (Student) session.getAttribute("student");
		System.out.println(sessionStudent);
		System.out.println(spwdold);
		System.out.println(spwdnew);
		if (spwdnew == null || !sessionStudent.getSpwd().equals(spwdold)) {
			return "fail";
		}
		Student student = StudentService.changeStupwd(sessionStudent, spwdnew);
		if (student == null) {
			return "fail";
		} else {
			// 不用set应该也会更新
			System.out.println("控制层没有更新session");
			// session.setAttribute("student", student);
			return "success";
		}
	}

	// 查询课程信息

	@RequestMapping("/selectCourse")
	@ResponseBody
	public Msg selectCourse(@RequestParam(defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Course> couList = courseService.getAllCouInfo();
		PageInfo<Course> page = new PageInfo<Course>(couList, 5);
		return Msg.success().add("pageInfo", page);
	}

	// 查询学生选课结果
	@RequestMapping("/selectResult")
	@ResponseBody
	public Msg selectResult(@RequestParam(defaultValue = "1") Integer pn, HttpSession session) {
		Student student = (Student) session.getAttribute("student");
		PageHelper.startPage(pn, 10);
		List<Sc> sc = scService.getScByStudent(student);
		PageInfo<Sc> page = new PageInfo<Sc>(sc, 5);
		return Msg.success().add("pageInfo", page);
	}

	// 查询学生选课结果
	@RequestMapping("/quit")
	public String quit(HttpSession session) {
		session.removeAttribute("student");
		return "login";

	}

	// 选课
	@RequestMapping("/addCou")
	@ResponseBody
	public Msg addCou(Integer couid, HttpSession session) {
		Student student = (Student) session.getAttribute("student");
		Boolean result = StudentService.addCou(student, couid);
		if (result) {
			return Msg.success();
		} else {
			return Msg.fail();
		}
	}
	
	// 退选
	@RequestMapping("/reback")
	@ResponseBody
	public Msg reback(Integer scid, HttpSession session) {
		Student student = (Student) session.getAttribute("student");
		Boolean result = StudentService.reback(student, scid);
		if (result) {
			return Msg.success();
		} else {
			return Msg.fail();
		}

	}

}

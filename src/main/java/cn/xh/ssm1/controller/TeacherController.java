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
import cn.xh.ssm1.bean.Teacher;
import cn.xh.ssm1.service.TeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	@Autowired
	TeacherService teacherService;
	
	
	
//	@RequestMapping("changeTeapwd")
//	public 
	
	// 教师修改登录密码
	@RequestMapping("/changeTeapwd")
	public String changeTeapwd(@Param("tpwdold") String tpwdold, @Param("tpwdnew") String tpwdnew,
			HttpSession session) {
		// 比对旧密码与session中的密码是否一致
		Teacher sessionTeacher = (Teacher) session.getAttribute("teacher");
		System.out.println(sessionTeacher);
		System.out.println(tpwdold);
		System.out.println(tpwdnew);
		if (tpwdnew == null || !sessionTeacher.getTpwd().equals(tpwdold)) {
			return "fail";
		}
		Teacher teacher = teacherService.changeTeapwd(sessionTeacher, tpwdnew);
		if (teacher == null) {
			return "fail";
		} else {
			// 不用set应该也会更新
			System.out.println("控制层没有更新session");
			// session.setAttribute("teacher", teacher);
			return "success";
		}
	}
	
	
	// 教师通过id删除课程信息
	@RequestMapping("/delCouById")
	@ResponseBody
	public Msg delStuById(@RequestParam(defaultValue = "0") Integer couid) {
		System.out.println("即将删除" + couid);
		Boolean result = teacherService.delCouById(couid);
		if (result) {
			System.out.println("成功删除" + couid);
			return Msg.success();
		} else {
			System.out.println("失败删除" + couid);
			return Msg.fail();
		}

	}
	
	// 教师通过id查询课程信息
	@RequestMapping("/getTeaCouInfo")
	@ResponseBody
	public Msg getTeaCouInfo(@RequestParam(defaultValue = "0") Integer pn, HttpSession session) {
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		PageHelper.startPage(pn, 10);
		List<Course> courseList = teacherService.getTeaCouInfo(teacher);
		PageInfo<Course> page = new PageInfo<Course>(courseList, 5);
		return Msg.success().add("pageInfo", page);

	}
	
	// 教师通过id获取课程信息
	@RequestMapping("/getCouById")
	@ResponseBody
	public Msg getCouById(@RequestParam(defaultValue = "0") Integer couid) {
		System.out.println("即将查询" + couid);
		Course course = teacherService.getCouById(couid);
		if (course!=null) {
			System.out.println("成功查询" + couid);
			return Msg.success().add("course", course);
		} else {
			System.out.println("失败查询" + couid);
			return Msg.fail();
		}

	}
	
	// 教师通过id获取课程信息
	@RequestMapping("/changeCouInfo")
	@ResponseBody
	public Msg changeCouInfo(Course course) {
		System.out.println("即将修改" + course);
		Boolean result = teacherService.changeCouInfo(course);
		if (result) {
			System.out.println("成功修改" + course);
			return Msg.success();
		} else {
			System.out.println("失败修改" + course);
			return Msg.fail();
		}

	}
	
	
	
	// 教师添加课程信息
	@RequestMapping("/addCourse")
	@ResponseBody
	public Msg addCourse(Course course,HttpSession session) {
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		course.setTeacher(teacher);
		System.out.println("即将添加" + course);
		Boolean result = teacherService.addCourse(course);
		if (result) {
			System.out.println("成功添加" + course);
			return Msg.success();
		} else {
			System.out.println("失败添加" + course);
			return Msg.fail();
		}

	}
	
	
	

}

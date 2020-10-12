package cn.xh.ssm1.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.xh.ssm1.bean.Admin;
import cn.xh.ssm1.bean.Msg;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.bean.Subject;
import cn.xh.ssm1.bean.Teacher;
import cn.xh.ssm1.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    // 管理员查询所有学生信息
    @RequestMapping("/getAllStudentInfo")
    @ResponseBody
    public Msg getAllStudentInfo(@RequestParam(defaultValue = "1") Integer pn) {
        PageHelper.startPage(pn, 10);
        List<Student> studentList = adminService.getAllStudentInfo();
        PageInfo<Student> page = new PageInfo<Student>(studentList, 5);
        return Msg.success().add("pageInfo", page);
    }

    // 管理员通过id删除学生信息
    @RequestMapping("/delStuById")
    @ResponseBody
    public Msg delStuById(@RequestParam(defaultValue = "0") Integer sid) {
        System.out.println("即将删除" + sid);
        Boolean result = adminService.delStuById(sid);
        if (result) {
            System.out.println("成功删除" + sid);
            return Msg.success();
        } else {
            System.out.println("失败删除" + sid);
            return Msg.fail();
        }

    }

    // 管理员通过id查询学生信息
    @RequestMapping("/getStuById")
    @ResponseBody
    public Msg getStuById(@RequestParam(defaultValue = "0") Integer sid) {
        System.out.println("即将查询" + sid);
        Student student = adminService.getStuById(sid);
        if (student != null) {
            System.out.println("成功查询" + sid);
            return Msg.success().add("student", student);
        } else {
            System.out.println("失败查询" + sid);
            return Msg.fail();
        }

    }

    // 管理员修改学生信息
    @RequestMapping("/changeStuInfo")
    @ResponseBody
    public Msg changeStuInfo(Student student) {
        System.out.println("即将修改" + student);
        Boolean result = adminService.changeStuInfo(student);
        if (result == true) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    // 管理员添加学生信息
    @RequestMapping("/addStudent")
    @ResponseBody
    public Msg addStudent(@Valid Student student, BindingResult bindingResult) {
        System.out.println("即将添加" + student);
        // 校验前端账号密码输入不为空
        List<ObjectError> allError = bindingResult.getAllErrors();
        if (allError.size() > 0) {
            return Msg.fail();
        }
        Boolean result = adminService.addStuInfo(student);
        if (result == true) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    // =========================教师相关================================================

    // 管理员查询所有学生信息
    @RequestMapping("/getAllTeacherInfo")
    @ResponseBody
    public Msg getAllTeacherInfo(@RequestParam(defaultValue = "1") Integer pn) {
        PageHelper.startPage(pn, 10);
        List<Teacher> teacherList = adminService.getAllTeacherInfo();
        PageInfo<Teacher> page = new PageInfo<Teacher>(teacherList, 5);
        return Msg.success().add("pageInfo", page);
    }

    // 管理员通过id删除教师信息
    @RequestMapping("/delTeaById")
    @ResponseBody
    public Msg delTeaById(@RequestParam(defaultValue = "0") Integer tid) {
        System.out.println("即将删除" + tid);
        Boolean result = adminService.delTeaById(tid);
        if (result) {
            System.out.println("成功删除" + tid);
            return Msg.success();
        } else {
            System.out.println("失败删除" + tid);
            return Msg.fail();
        }

    }

    // 管理员通过id查询教师信息
    @RequestMapping("/getTeaById")
    @ResponseBody
    public Msg getTeaById(@RequestParam(defaultValue = "0") Integer tid) {
        System.out.println("即将查询" + tid);
        Teacher teacher = adminService.getTeaById(tid);
        if (teacher != null) {
            System.out.println("成功查询" + tid);
            return Msg.success().add("teacher", teacher);
        } else {
            System.out.println("失败查询" + tid);
            return Msg.fail();
        }

    }

    // 管理员修改教师信息
    @RequestMapping("/changeTeaInfo")
    @ResponseBody
    public Msg changeTeaInfo(Teacher teacher) {
        System.out.println("即将修改" + teacher);
        Boolean result = adminService.changeTeaInfo(teacher);
        if (result == true) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    // 管理员添加教师信息
    @RequestMapping("/addTeacher")
    @ResponseBody
    public Msg addTeacher(@Valid Teacher teacher, BindingResult bindingResult) {
        System.out.println("即将添加" + teacher);
        // 校验前端账号密码输入不为空
        List<ObjectError> allError = bindingResult.getAllErrors();
        if (allError.size() > 0) {
            return Msg.fail();
        }
        Boolean result = adminService.addTeaInfo(teacher);
        if (result == true) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    // =========================管理员相关================================================

    // 管理员查询所有管理员信息
    @RequestMapping("/getAllAdminInfo")
    @ResponseBody
    public Msg getAllAdminInfo(@RequestParam(defaultValue = "1") Integer pn) {
        PageHelper.startPage(pn, 10);
        List<Admin> adminList = adminService.getAllAdminInfo();
        PageInfo<Admin> page = new PageInfo<Admin>(adminList, 5);
        return Msg.success().add("pageInfo", page);
    }

    // 管理员通过id删除管理员信息
    @RequestMapping("/delAdmById")
    @ResponseBody
    public Msg delAdmById(@RequestParam(defaultValue = "0") Integer aid) {
        System.out.println("即将删除" + aid);
        Boolean result = adminService.delAdmById(aid);
        if (result) {
            System.out.println("成功删除" + aid);
            return Msg.success();
        } else {
            System.out.println("失败删除" + aid);
            return Msg.fail();
        }

    }

    // 管理员通过id查询管理员信息
    @RequestMapping("/getAdmById")
    @ResponseBody
    public Msg getAdmById(@RequestParam(defaultValue = "0") Integer aid) {
        System.out.println("即将查询" + aid);
        Admin admin = adminService.getAdmById(aid);
        if (admin != null) {
            System.out.println("成功查询" + aid);
            return Msg.success().add("admin", admin);
        } else {
            System.out.println("失败查询" + aid);
            return Msg.fail();
        }

    }

    // 管理员修改管理员信息
    @RequestMapping("/changeAdmInfo")
    @ResponseBody
    public Msg changeAdmInfo(Admin admin) {
        System.out.println("即将修改" + admin);
        Boolean result = adminService.changeAdmInfo(admin);
        if (result == true) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    // 管理员添加管理员信息
    @RequestMapping("/addAdmin")
    @ResponseBody
    public Msg addAdmin(@Valid Admin admin, BindingResult bindingResult) {
        System.out.println("即将添加" + admin);
        // 校验前端账号密码输入不为空
        List<ObjectError> allError = bindingResult.getAllErrors();
        if (allError.size() > 0) {
            return Msg.fail();
        }
        Boolean result = adminService.addAdmInfo(admin);
        if (result == true) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    // =========================科目表相关================================================

    // 管理员查询所有科目表信息
    @RequestMapping("/getAllSubjectInfo")
    @ResponseBody
    public Msg getAllSubjectInfo(@RequestParam(defaultValue = "1") Integer pn) {
        PageHelper.startPage(pn, 10);
        List<Subject> subjectList = adminService.getAllSubjectInfo();
        PageInfo<Subject> page = new PageInfo<Subject>(subjectList, 5);
        return Msg.success().add("pageInfo", page);
    }

    // 管理员通过id删除科目表信息
    @RequestMapping("/delSubById")
    @ResponseBody
    public Msg delSubById(@RequestParam(defaultValue = "0") Integer subid) {
        System.out.println("即将删除" + subid);
        Boolean result = adminService.delSubById(subid);
        if (result) {
            System.out.println("成功删除" + subid);
            return Msg.success();
        } else {
            System.out.println("失败删除" + subid);
            return Msg.fail();
        }

    }

    // 管理员通过id查询科目表信息
    @RequestMapping("/getSubById")
    @ResponseBody
    public Msg getSubById(@RequestParam(defaultValue = "0") Integer subid) {
        System.out.println("即将查询" + subid);
        Subject subject = adminService.getSubById(subid);
        if (subject != null) {
            System.out.println("成功查询" + subid);
            return Msg.success().add("subject", subject);
        } else {
            System.out.println("失败查询" + subid);
            return Msg.fail();
        }

    }

    // 管理员修改科目表信息
    @RequestMapping("/changeSubInfo")
    @ResponseBody
    public Msg changeSubInfo(Subject subject) {
        System.out.println("即将修改" + subject);
        Boolean result = adminService.changeSubInfo(subject);
        if (result == true) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    // 管理员添加科目表信息
    @RequestMapping("/addSubject")
    @ResponseBody
    public Msg addSubject(@Valid Subject subject, BindingResult bindingResult) {
        System.out.println("即将添加" + subject);
        // 校验前端账号密码输入不为空
        List<ObjectError> allError = bindingResult.getAllErrors();
        if (allError.size() > 0) {
            return Msg.fail();
        }
        Boolean result = adminService.addSubInfo(subject);
        if (result == true) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

}

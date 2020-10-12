package cn.xh.ssm1.service;

import java.util.List;

import cn.xh.ssm1.bean.Sc;
import cn.xh.ssm1.bean.Student;

public interface ScService {
	
	
	//查询指定学生选课情况
	public List<Sc> getScByStudent(Student student);


}

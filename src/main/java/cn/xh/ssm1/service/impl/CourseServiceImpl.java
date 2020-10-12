package cn.xh.ssm1.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xh.ssm1.bean.Course;
import cn.xh.ssm1.mapper.CourseMapper;
import cn.xh.ssm1.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	CourseMapper courseMapper;

	//获取所有课程信息
	@Override
	public List<Course> getAllCouInfo() {
		List<Course> list = courseMapper.getCouInfo(null);
		return list;
	}
	

}

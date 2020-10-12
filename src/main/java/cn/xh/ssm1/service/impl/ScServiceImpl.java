package cn.xh.ssm1.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xh.ssm1.bean.Sc;
import cn.xh.ssm1.bean.Student;
import cn.xh.ssm1.mapper.ScMapper;
import cn.xh.ssm1.service.ScService;

@Service
public class ScServiceImpl implements ScService{
	
	@Autowired
	ScMapper scMapper;

	//查看指定学生选课情况
	@Override
	public List<Sc> getScByStudent(Student student) {
		Sc sc = new Sc();
		sc.setStudent(student);
		List<Sc> scList = scMapper.getScInfo(sc);
		return scList;
	}
	

}

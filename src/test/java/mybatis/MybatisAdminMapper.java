package mybatis;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import cn.xh.ssm1.bean.Admin;
import cn.xh.ssm1.mapper.AdminMapper;


public class MybatisAdminMapper {
	
	@Test
	@Transactional
	public void addAdmin() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		AdminMapper AdminMapper = (AdminMapper) ac.getBean("adminMapper");
		Admin admin = new Admin();
		admin.setAnum("root");
		admin.setApwd("admin");
		admin.setAname("小明");

		AdminMapper.addAdmin(admin);

	}
	
	@Test
	@Transactional
	public void getStuInfo() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		AdminMapper AdminMapper = (AdminMapper) ac.getBean("adminMapper");
		Admin admin = new Admin();
		admin.setAnum("root");
		admin.setApwd("admin");
		admin.setAname("小明");
		
		List<Admin> list = AdminMapper.getAdmInfo(admin);
		
		for(Admin admin1: list) {
			System.out.println(admin1);
		}

	}
	
	@Test
	@Transactional
	public void delAdmin() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		AdminMapper AdminMapper = (AdminMapper) ac.getBean("adminMapper");
		Admin admin = new Admin();
		admin.setAnum("root");
		admin.setApwd("admin");
		admin.setAname("小明");
		
		Integer num = AdminMapper.delAdmin(admin);
		
		System.out.println(num);
		
	}
	
	@Test
	@Transactional
	public void updAdmin() {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		AdminMapper AdminMapper = (AdminMapper) ac.getBean("adminMapper");
		Admin before = new Admin();
		before.setAnum("root");
		before.setApwd("admin");
		before.setAname("小明");
		
		Admin after = new Admin();
		after.setAname("晓辉");
		
		Integer num = AdminMapper.updAdmin(before, after);
		
		System.out.println(num);
		
	}

}

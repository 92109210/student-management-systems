package cn.xh.ssm1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.xh.ssm1.bean.Admin;

public interface AdminMapper {

	/**
	 * 获取管理员信息
	 * 
	 * @param admin
	 * @return
	 */
	public List<Admin> getAdmInfo(Admin admin);

	/**
	 * 添加管理员信息
	 * 
	 * @param admin
	 * @return
	 */
	public Integer addAdmin(Admin admin);

	/**
	 * 删除管理员信息
	 * 
	 * @param admin
	 * @return
	 */
	public Integer delAdmin(Admin admin);

	/**
	 * 修改管理员信息
	 * 
	 * @param before
	 * @param after
	 * @return
	 */
	public Integer updAdmin(@Param("before") Admin before, @Param("after") Admin after);

}

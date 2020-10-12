package cn.xh.ssm1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.xh.ssm1.bean.Sc;

public interface ScMapper {

	/**
	 * 获取学生选课表信息
	 * 
	 * @param sc
	 * @return
	 */
	public List<Sc> getScInfo(Sc sc);

	/**
	 * 添加学生选课表信息
	 * 
	 * @param sc
	 * @return
	 */
	public Integer addSc(Sc sc);

	/**
	 * 删除学生选课表信息
	 * 
	 * @param sc
	 * @return
	 */
	public Integer delSc(Sc sc);

	/**
	 * 修改学生选课表信息
	 * 
	 * @param before
	 * @param after
	 * @return
	 */
	public Integer updSc(@Param("before") Sc before, @Param("after") Sc after);

}

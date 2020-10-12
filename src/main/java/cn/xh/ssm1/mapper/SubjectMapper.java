package cn.xh.ssm1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.xh.ssm1.bean.Subject;

public interface SubjectMapper {
	
	/**
	 * 获取科目信息
	 * 
	 * @param subject
	 * @return
	 */
	public List<Subject> getSubInfo(Subject subject);

	/**
	 * 添加科目信息
	 * 
	 * @param subject
	 * @return
	 */
	public Integer addSubject(Subject subject);

	/**
	 * 删除科目信息
	 * 
	 * @param subject
	 * @return
	 */
	public Integer delSubject(Subject subject);

	/**
	 * 修改科目信息
	 * 
	 * @param before
	 * @param after
	 * @return
	 */
	public Integer updSubject(@Param("before") Subject before, @Param("after") Subject after);

}

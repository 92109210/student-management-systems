package cn.xh.ssm1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.xh.ssm1.bean.Teacher;

public interface TeacherMapper {

	/**
	 * 获取教师信息
	 * 
	 * @param teacher
	 * @return
	 */
	public List<Teacher> getTeaInfo(Teacher teacher);

	/**
	 * 添加教师信息
	 * 
	 * @param teacher
	 * @return
	 */
	public Integer addTeacher(Teacher teacher);

	/**
	 * 删除教师信息
	 * 
	 * @param teacher
	 * @return
	 */
	public Integer delTeacher(Teacher teacher);

	/**
	 * 修改教师信息
	 * 
	 * @param before
	 * @param after
	 * @return
	 */
	public Integer updTeacher(@Param("before") Teacher before, @Param("after") Teacher after);

}

package cn.xh.ssm1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.xh.ssm1.bean.Student;

public interface StudentMapper {

	/**
	 * 获取学生信息
	 * 
	 * @param student
	 * @return
	 */
	public List<Student> getStuInfo(Student student);

	/**
	 * 添加学生信息
	 * 
	 * @param student
	 * @return
	 */
	public Integer addStudent(Student student);

	/**
	 * 删除学生信息
	 * 
	 * @param student
	 * @return
	 */
	public Integer delStudent(Student student);

	/**
	 * 修改学生信息
	 * 
	 * @param before
	 * @param after
	 * @return
	 */
	public Integer updStudent(@Param("before") Student before, @Param("after") Student after);

}

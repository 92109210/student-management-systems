package cn.xh.ssm1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.xh.ssm1.bean.Course;

public interface CourseMapper {

	/**
	 * 获取课程表信息
	 * 
	 * @param course
	 * @return
	 */
	public List<Course> getCouInfo(Course course);

	/**
	 * 添加课程表信息
	 * 
	 * @param course
	 * @return
	 */
	public Integer addCourse(Course course);

	/**
	 * 删除课程表信息
	 * 
	 * @param course
	 * @return
	 */
	public Integer delCourse(Course course);

	/**
	 * 修改课程表信息
	 * 
	 * @param before
	 * @param after
	 * @return
	 */
	public Integer updCourse(@Param("before") Course before, @Param("after") Course after);

}

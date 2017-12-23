package org.java.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface employeeMapper {

	public List<Map<String,Object>> findemployee(@Param("deptId")String deptId);
	
	public void insert(@Param("employeeId")String employeeId,@Param("name")String name,@Param("gender")String gender,@Param("age")int age,@Param("post")String post,@Param("tel")String tel,@Param("address")String address,@Param("deptId")String deptId);
	
	public void del(@Param("employeeId")String employeeId);
	
	public int count(@Param("deptId")String deptId);
	
	public void update(@Param("name")String name,@Param("gender")String gender,@Param("age")int age,@Param("post")String post,@Param("tel")String tel,@Param("address")String address,@Param("deptId")String deptId,@Param("employeeId")String employeeId);
	
	public int finddept(@Param("deptId")String deptId,@Param("name")String name);
	
	public List<Map<String, Object>> empById(String empId);
}

package org.java.service;

import java.util.List;
import java.util.Map;import java.util.Observer;


public interface employeeService {

    public List<Map<String,Object>> findemployee(String deptId);
	
	public void insert(String employeeId,String name,String gender,int age,String post,String tel,String address,String deptId);
	
	public void del(String employeeId);
	
	public void update(String name,String gender,int age,String post,String tel,String address,String deptId,String employeeId);
	
	public int finddept(String deptId,String name);
	
	public int count(String deptId);
	
	public List<Map<String, Object>> empById(String empId);
}

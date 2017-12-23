package org.java.service.impl;

import java.util.List;
import java.util.Map;

import org.java.dao.employeeMapper;
import org.java.service.employeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class employeeServiceImpl implements employeeService {

	
	@Autowired
	private employeeMapper emp;
	
	@Override
	public List<Map<String, Object>> findemployee(String deptId) {
		return emp.findemployee(deptId);
	}

	@Override
	public void insert(String employeeId, String name, String gender, int age, String post, String tel, String address,
			String deptId) {
		emp.insert(employeeId, name, gender, age, post, tel, address, deptId);
		
	}

	@Override
	public void del(String employeeId) {
		emp.del(employeeId);
		
	}

	@Override
	public void update(String name, String gender, int age, String post, String tel, String address, String deptId,
			String employeeId) {
		emp.update(name, gender, age, post, tel, address, deptId, employeeId);		
	}

	@Override
	public int finddept(String deptId, String name) {
		
		return emp.finddept(deptId, name);
	}

	@Override
	public int count(String deptId) {
		return emp.count(deptId);
	}

	@Override
	public List<Map<String, Object>> empById(String empId) {
		return emp.empById(empId);
	}

}

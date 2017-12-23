package org.java.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.java.entity.PageBean;
import org.java.service.employeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class employeeController {
    @Autowired
	private employeeService emp;
    
    private String deptid;
    private String dept;
    @RequestMapping("loadEmployee")
    public String loadEmployee(String deptId,String deptName,HttpSession ses){
    	deptid=deptId;
    	dept=deptName;
    	ses.setAttribute("deptId", deptId);
    	ses.setAttribute("dept", deptName);
    	List<Map<String, Object>> li=emp.findemployee(deptId);
    	ses.setAttribute("empList", li);
    	System.out.println(li.size());
    	return "show";
    }
    @RequestMapping("change")
    public String change(int index,HttpSession ses){
    	List<Map<String, Object>> li=(List<Map<String, Object>>) ses.getAttribute("empList");
    	Map<String, Object> ma=li.get(index);
    	ses.setAttribute("oneEmp", ma);
    	return "update";
    }
    
    @RequestMapping("update")
    public String update(String name,String gender,int age,String post,String tel,String address,String deptId,String empId,HttpSession ses){
    	emp.update(name, gender, age, post, tel, address, deptId, empId);
    	return loadEmployee(deptid,dept,ses);
    }
    @RequestMapping("insert")
    public String insert(String name,String gender,int age,String post,String tel,String address,HttpSession ses){ 
    	int sum=(int)(Math.random()*900)+100;
		String num="100";
        String empId=num+sum;
    	emp.insert(empId, name, gender, age, post, tel, address, deptid);
    	return loadEmployee(deptid,dept,ses);
    }
    @RequestMapping("del")
    public String del(String empId,HttpSession ses){
    	emp.del(empId);
    	return loadEmployee(deptid,dept,ses);
    }
    
    @RequestMapping("loademp")
    public String load(String empId,HttpSession ses){
       List<Map<String, Object>> li=emp.empById(empId);
       ses.setAttribute("empByIdlist", li);
       return "load";
    } 
}

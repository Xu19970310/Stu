package org.java.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.java.service.deptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeptController {
    @Autowired
	private deptService dept;
	
    @RequestMapping("/getDept")
	public String getDept(HttpSession ses){
		List<Map<String, Object>> list=dept.getDept();
		ses.setAttribute("list", list);
		
		return "/index";
	}
    
    
}

package org.java.service.impl;

import java.util.List;
import java.util.Map;

import org.java.dao.deptMapper;
import org.java.service.deptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class deptServiceImpl implements deptService {
	     @Autowired
         private deptMapper dept;

		@Override
		public List<Map<String, Object>> getDept() {			
			return dept.getdept();
		}
	     
	   
}

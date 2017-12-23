<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
        <table border="1px" width="60%" style="text-align: center;">
             <tr> 
               <th>部门编号</th>
               <th>部门名称</th>
               <th>查看部门详情</th>             
             </tr>       
            <c:forEach items="${sessionScope.list}" var="p" varStatus="item"> 
              <tr>
                  <td>${p.deptId }</td> 
                  <td>${p.deptName }</td>  
                  <td><a href="loadEmployee.do?deptId=${p.deptId }&deptName=${p.deptName }">查看</a></td>               
              </tr>
            </c:forEach>
        </table>
</body>
</html>
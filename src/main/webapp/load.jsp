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
         <table>
            <c:forEach items="${sessionScope.empByIdlist}" var="p">
              <tr><td>员工名称:</td><td>${p.ename}</td></tr>
              <tr><td>员工性别:</td><td>${p.egender}</td></tr>
              <tr><td>员工年级:</td><td>${p.eage}</td></tr>
              <tr><td>所属部门:</td><td>${p.post}</td></tr>
              <tr><td>职位:</td><td>${p.tel}</td></tr>
              <tr><td>电话:</td><td>${p.address}</td></tr>
              <tr><td>住址:</td><td>${p.deptId}</td></tr>
            </c:forEach>
         </table>
         <a href="loadEmployee.do?deptId=${deptId }&deptName=${deptName }">返回${dept}</a>
</body>
</html>
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
               <th>员工编号</th>
               <th>员工名称</th>
               <th>性别</th>   
               <th>查看员工详情</th>
               <th>操作</th>          
             </tr>       
            <c:forEach items="${sessionScope.empList}" var="p" varStatus="item"> 
              <tr>
                  <td>${p.eid }</td> 
                  <td>${p.ename }</td>  
                  <td>${p.egender }</td>  
                  <td><a href="loademp.do?empId=${p.eid }">查看</a></td>    
                  <td><a href="del.do?empId=${p.eid }">删除</a>&nbsp;&nbsp;<a href="change.do?index=${item.index}">修改</a></td>         
              </tr>
            </c:forEach>
        </table>
        <a href="getDept.do">返回首页</a> <a href="add.jsp">添加员工</a>
</body>
</html>
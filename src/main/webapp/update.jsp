<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function{
	$("#dept").val($(deptId));
})
</script>
</head>
<body>
         <form action="update.do" method="post">
          <table>
             <input type="hidden" value="${oneEmp.eid}" name="empId" >
              <tr>
              <td>员工名称:</td>
              <td><input type="text" value="${oneEmp.ename}" name="name" ></td>
              </tr>
              
              <tr>
              <td>员工性别:</td>
              <td><input type="text" value="${oneEmp.egender}" name="gender" ></td>
              </tr>
              
               <tr>
              <td>年龄:</td>
              <td><input type="text" value="${oneEmp.eage}" name="age" ></td>
              </tr>
               <tr>
              <td>职位:</td>
              <td><input type="text" value="${oneEmp.post}" name="post" ></td>
              </tr>
               <tr>
              <td>电话:</td>
              <td><input type="text" value="${oneEmp.tel}" name="tel" ></td>
              </tr>
              
              <tr>
              <td>部门:</td>
              <td>
              <select id="dept" name="deptId">
                 <c:forEach items="${sessionScope.list}" var="p" varStatus="item"> 
                    <option value="${p.deptId }"> ${p.deptName }</option> 
                 </c:forEach>
              </select>
              </td>
              </tr>
               <tr>
              <td>住址:</td>
              <td><input type="text" value="${oneEmp.address}" name="address" ></td>
              </tr>
          </table>
          <input type="submit" value="修改">
     </form>
</body>
</html>
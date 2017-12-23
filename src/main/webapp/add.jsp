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
     <form action="insert.do" method="post">
          <table>
              <tr>
              <td>员工名称:</td>
              <td><input type="text" name="name" ></td>
              </tr>
              
              <tr>
              <td>员工性别:</td>
              <td><input type="text" name="gender" ></td>
              </tr>
              
               <tr>
              <td>年龄:</td>
              <td><input type="text" name="age" ></td>
              </tr>
               <tr>
              <td>职位:</td>
              <td><input type="text" name="post" ></td>
              </tr>
              
               <tr>
              <td>电话:</td>
              <td><input type="text" name="tel" ></td>
              </tr>
              
               <tr>
              <td>住址:</td>
              <td><input type="text" name="address" ></td>
              </tr>

          </table>
          <input type="submit" value="新增">
     </form>
</body>
</html>
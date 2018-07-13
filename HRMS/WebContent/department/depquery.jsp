<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="人力资源管理系统" />
<title>人力资源管理系统</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link type="text/css" rel="stylesheet" href="css/css.css"  />
<style type="text/css">
  th,td{
    font-size: 15px;
  }
</style>
<script type="text/javascript"  src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
  
  
 $(document).ready(function(){
      $(".btn-danger").click(function(){
    	  	var x;
    	    var r=confirm("确认删除？");
    	    if (r==true){
    	       alert("删除成功！");
    	    }
    	    else{
    	        return false;
    	    }
    	   
      });
  });
</script>
<style type="text/css">

</style>
</head>
<body>
<div class="header">
  <div class="top"> <img class="logo" src="images/logo.jpg" />
    <ul class="nav">
      <li><a href="main.jsp">首页</a></li>
      <li><a href="person/person.jsp">个人中心</a></li>
      <li  class="seleli"><a href="#">部门管理</a></li>
      <li ><a href="employee/employee.jsp">员工管理</a></li>
      <li><a href="recruitment/recruitment.jsp">招聘管理</a></li>
      <li><a href="train/train.jsp">培训管理</a></li>
      <li><a href="rewards/rewards.jsp">奖惩管理</a></li>
      <li><a href="salary/salary.jsp">薪资管理</a></li>
      <li><a href="system/system.jsp">系统管理</a></li>
    </ul>
  </div>
</div>
 <%@include file="../left.jsp" %>
<div class="mainbody">
    <div class="currmenu">
      <ul class="rig_nav">
        <li><a href="department/depadd.jsp">添加部门</a></li>
        <li><a href="<c:url value='/DepartmentServlet?method=findAll'/>" style="color:blue">查询部门</a></li>
      </ul>
       <hr>
    </div>

 <form  class="form-inline"  style="margin-top: 5px" 
 action="<c:url value='/DepartmentServlet'/>" method="post">
<input type="hidden" name="method"  value="query"/>
  <div class="form-group">
    <input type="text" class="form-control" id="search" name="search" placeholder="请输入部门名称">
  </div>
  <button type="submit" class="btn btn-default">搜索</button>

</form>
     
   
<table class="table table-hover"  style="margin-top: 50px" >
 <tr>
    <th>部门编号</th>
    <th>部门名称</th>
    <th>部门经理</th>
    <th>部门人数</th>
    <th>部门描述</th>
    <th>操作</th>
  </tr>
  	<c:forEach items="${requestScope.depList}" var="dep">
  <tr>
    <td>${dep.did}</td>
    <td>${dep.dname}</td>
    <td>${dep.dmanager}</td>
    <td>${dep.dnumber}</td>
    <td>${dep.ddescription}</td>
    <td>
       
       <a href="<c:url value='/DepartmentServlet?method=preEdit&did=${dep.did }'/>" class="btn btn-success">修改</a>    
  	   <a href="<c:url value='/DepartmentServlet?method=delete&id=${dep.id }'/>" class="btn btn-danger">删除</a>    
 	
    </td>
  </tr>
 </c:forEach>
</table>
</div>

<div class="footer"></div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>查询管理员</title>
<script type="text/javascript"  src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css" />
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
  <div class="top"> <img class="logo" src="${pageContext.request.contextPath}/images/logo.jpg" />
    <ul class="nav">
      <li><a href="${pageContext.request.contextPath}/main.jsp">首页</a></li>
      <li><a href="${pageContext.request.contextPath}/person/person.jsp">个人中心</a></li>
      <li><a href="${pageContext.request.contextPath}/department/department.jsp">部门管理</a></li>
      <li><a href="${pageContext.request.contextPath}/employee/employee.jsp">员工管理</a></li>
      <li><a href="${pageContext.request.contextPath}/recruitment/recruitment.jsp">招聘管理</a></li>
      <li><a href="${pageContext.request.contextPath}/train/train.jsp">培训管理</a></li>
      <li><a href="${pageContext.request.contextPath}/rewards/rewards.jsp">奖惩管理</a></li>
      <li><a href="${pageContext.request.contextPath}/salary/salary.jsp">薪资管理</a></li>
      <li  class="seleli"><a href="#">系统管理</a></li>
    </ul>
  </div>
</div>

	<%@include file="../left.jsp" %>
<div class="mainbody">
    <div class="currmenu">
      <ul class="rig_nav">
         <li ><a href="<c:url value='system/sysadd.jsp'/>">添加管理员信息</a></li>
        <li><a href="#" style="color:blue" >查询管理员信息</a></li>
      </ul>
    </div>
    <hr>
    
    <form  class="form-inline"  style="margin-top: 5px" 
 action="<c:url value='/LoginServlet?method=sysquery'/>" method="post">
  <div class="form-group">
    <input type="text" class="form-control" id="search" name="search" placeholder="请输入管理员姓名">
  </div>
  <button type="submit" class="btn btn-default">搜索</button>
</form>
     
   
<table class="table table-hover"  style="margin-top: 50px" >
 <tr>
 	<th>编号</th>
    <th>管理员姓名</th>
    <th>性别</th>
    <th>电话号码</th>
    <th>邮箱</th>
    <th>操作</th>
  </tr>
  	<c:forEach items="${requestScope.sysList}" var="sys">
  <tr>
  	<td >${sys.id }</td>
    <td>${sys.user}</td>
    <td>${sys.sgender}</td>
    <td>${sys.scellphone}</td>
    <td>${sys.semail}</td>
    <td>
  	   <a href="<c:url value='/LoginServlet?method=delete&id=${sys.id }'/>" class="btn btn-danger">删除</a>    
    </td>
</tr>
 </c:forEach>
</table>
</div>
</body>
</html>
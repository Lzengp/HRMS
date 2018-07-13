<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>添加奖惩</title>
<script type="text/javascript"  src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css" />
<style type="text/css">
label{
  font-size: 15px;
  color:red;
}
  #h1{
    margin-top: 30px;
    font-size: 30px;
  }
   #h2{
    font-size: 20px;
  }
 th{
 font-size:15px;
 }
  td{
  	font-size:14px;
  }
  
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
      <li  class="seleli"><a href="#">奖惩管理</a></li>
      <li><a href="${pageContext.request.contextPath}/salary/salary.jsp">薪资管理</a></li>
      <li><a href="${pageContext.request.contextPath}/system/system.jsp">系统管理</a></li>
    </ul>
  </div>
</div>
	<%@include file="../left.jsp" %>
	<div class="mainbody">
    <div class="currmenu">
      <ul class="rig_nav">
         <li ><a href="${pageContext.request.contextPath}/rewards/readd.jsp">添加奖惩信息</a></li>
        <li><a href="#" style="color:blue">查询奖惩信息</a></li>
      </ul>
    </div>
   <form  class="form-inline"  style="margin-top: 5px" 
 action="<c:url value='/RPServlet?method=query'/>" method="post">
  <div class="form-group">
    <input type="text" class="form-control" id="search" name="search" placeholder="请输入姓名">
  </div>
  <button type="submit" class="btn btn-default">搜索</button>
</form>

<table class="table table-striped" style="margin-top: 50px" >
 <tr>
 	<th>编号</th>
 	<th>姓名</th>
    <th>奖励金额</th>
    <th>奖励原因</th>
    <th>奖励时间</th>
    <th>处罚金额</th>
    <th>处罚原因</th>
    <th>处罚时间</th>
    <th>操作</th>
  </tr>
  	<c:forEach items="${requestScope.rpList}" var="rp">
  <tr>
  	<td>${rp.id }</td>
  	<td>${rp.name }</td>
    <td>${rp.rmoney }</td>
    <td>${rp.rdescription }</td>
    <td>${rp.rdate }</td>
    <td>${rp.pmoney }</td>
    <td>${rp.pdescription }</td>
    <td>${rp.pdate }</td>
    <td> 
  	   <a href="<c:url value='/RPServlet?method=delete&id=${rp.id }'/>" class="btn btn-danger">删除</a>    
    </td>
</tr>
 </c:forEach>
</table>
</div>

</body>
</html>
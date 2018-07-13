<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>添加员工</title>
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

	  $("#but1").click(function(){
     alert("添加成功！");
    });
  });
</script>

<style type="text/css">
label{
  font-size: 15px;
  color:red;
}
  #a1{
    margin-top: 30px;
    font-size: 30px;
  }
  td{
    font-size: 20px;
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
      <li><a href="${pageContext.request.contextPath}/rewards/rewards.jsp">奖惩管理</a></li>
      <li><a href="${pageContext.request.contextPath}/salary/salary.jsp">薪资管理</a></li>
      <li class="seleli"><a href="#">系统管理</a></li>
    </ul>
  </div>
</div>
	<%@include file="../left.jsp" %>
    <div class="currmenu">
      <ul class="rig_nav">
         <li ><a href="#" style="color:blue" id="add">添加管理员信息</a></li>
        <li><a href="<c:url value="/system/sysquery.jsp" />">查询管理员信息</a></li>
      </ul>
    </div>
    <hr>
  <h1  align="center"  id="a1">添加管理员信息</h1>
 <br>
 <hr>
<br>
 <form action="<c:url value="/LoginServlet"/>" method="post">
<input type="hidden"  name="method" value="sysadd" />
<div  style="margin-left: 600px;"> 
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">姓名</span>
  <input type="text"  id="user" name="user" style="width:300px;" 
  class="form-control" required>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">性别</span>
<select class="form-control" style="width:300px;" name="sgender" >
<option value ="男" >男</option>
<option value ="女" >女</option>
</select>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">邮箱</span>
  <input type="email" id="semail" name="semail" style="width:300px;" class="form-control" required >
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">电话号码</span>
  <input type="text" id="scellphone" name="scellphone" style="width:270px;" class="form-control" required>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">登录密码</span>
  <input type="password" id="pwd" name="pwd" style="width:270px;" class="form-control" required >

</div>
<br>
</div>
   <br>
    <div align="center">
    <button type="submit"  class="btn btn-success" id="but1">添加管理员信息</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
		<button type="reset" class="btn btn-danger"> 重置管理员信息</button>
    </div>
 </form>
 
</body>
</html>



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
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css" />

<script type="text/javascript">

$(document).ready(function(){ 
    $("#but1").click(function(){
     $("form").submit();
     alert("添加成功！");
    });
  });
  
</script>

<style type="text/css">
  #h1{
    margin-top: 30px;
    font-size: 30px;
  }
   #h2{
    font-size: 20px;
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
      <li  class="seleli"><a href="#">奖惩管理</a></li>
      <li><a href="${pageContext.request.contextPath}/salary/salary.jsp">薪资管理</a></li>
      <li><a href="${pageContext.request.contextPath}/system/system.jsp">系统管理</a></li>
    </ul>
  </div>
</div>
	<%@include file="../left.jsp" %>
    <div class="currmenu">
      <ul class="rig_nav">
         <li ><a href="#" style="color:blue">添加奖惩信息</a></li>
        <li><a href="<c:url value="/rewards/requery.jsp" />">查询奖惩信息</a></li>
      </ul>
    </div>
    <hr>
  <h1  align="center"  id="h1">添加奖惩信息</h1>
 <br>
 <hr>
<br>
<form action="<c:url value='/RPServlet?method=rpadd'/>" method="post">
<div style="margin-left: 600px;">

 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">姓名</span>
  <input type="text"  id="name" name="name" style="width:300px;" class="form-control" placeholder="姓名">
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">奖励金额</span>
  <input type="text"  id="rmoney" name="rmoney" style="width:270px;" class="form-control" placeholder="奖励金额">
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">奖励时间</span>
  <input type="text"  id="rdate" name="rdate" style="width:270px;" class="form-control" placeholder="格式如2018-01-01">
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">奖励原因</span>
 <textarea rows="3" cols="20" name="rdescription"  class="form-control"
   style="width:270px;" ></textarea>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">处罚金额</span>
  <input type="text"  id="pmoney" name="pmoney" style="width:270px;" class="form-control" placeholder="处罚金额">
  <label id="label2" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">处罚时间</span>
  <input type="text"  id="pdate" name="pdate" style="width:270px;" class="form-control" placeholder="格式如2018-01-01">
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">处罚原因</span>
  <textarea rows="3" cols="20" name="pdescription"  class="form-control"  style="width:270px;" ></textarea>
  <label id="label2" ></label>
</div>
<br>
<button type="button"  class="btn btn-success" id="but1"
 style="margin-left: 140px; width:100px;">添加  </button>
 </div>
</form>


</body>
</html>
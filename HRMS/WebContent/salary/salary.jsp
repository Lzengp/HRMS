<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>薪资管理</title>
<link type="text/css" rel="stylesheet" href="../css/css.css" />
</head>
<body>
<div class="header">
  <div class="top"> <img class="logo" src="../images/logo.jpg" />
    <ul class="nav">
      <li><a href="../main.jsp">首页</a></li>
      <li><a href="../person/person.jsp">个人中心</a></li>
      <li><a href="../department/department.jsp">部门管理</a></li>
      <li><a href="../employee/employee.jsp">员工管理</a></li>
      <li><a href="../recruitment/recruitment.jsp">招聘管理</a></li>
      <li><a href="../train/train.jsp">培训管理</a></li>
      <li><a href="../rewards/rewards.jsp">奖惩管理</a></li>
      <li   class="seleli"><a href="#">薪资管理</a></li>
      <li><a href="../system/system.jsp">系统管理</a></li>
    </ul>
  </div>
</div>
<%@ include file="../left.jsp" %>
    <div class="currmenu">
      <ul class="rig_nav">
        <li><a href="saladd.jsp">添加薪资信息</a></li>
        <li><a href="salquery.jsp">查询薪资信息</a></li>
      </ul>
    </div>
</body>
</html>
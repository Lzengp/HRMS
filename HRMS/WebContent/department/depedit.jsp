<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--添加部门-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="人力资源管理系统" />
<title>人力资源管理系统</title>
<script type="text/javascript"  src="js/jquery-3.2.1.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<link type="text/css" rel="stylesheet" href="css/css.css" />


<script type="text/javascript">

$(document).ready(function(){
	 
    $("#but1").click(function(){
    	var did = $("#did").val();
        var dname = $("#dname").val();
        var dmanager = $("#dmanager").val();
       if(did=="" || $.trim(did).length==0){
        $("#label1").html("部门编号不为空");
        return;
      }else{
    	  $("#label1").html("");
      }
      if(dname=="" || $.trim(dname).length==0){
          $("#label2").html("部门名称不为空");
          return;
        }else{
      	  $("#label2").html("");
        }
      if(dmanager=="" || $.trim(dmanager).length==0){
          $("#label3").html("经理名字不为空");
          return;
        }else{
      	  $("#label3").html("");
        }

     $("form").submit();
     alert("修改成功！");
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
      
        <li ><a href="#" style="color:blue" id="add">添加部门</a></li>
        <li><a href="<c:url value='/DepartmentServlet?method=findAll'/>">查询部门</a></li>
      </ul>
       <hr>
    </div>
 <h1  align="center"  id="a1">编辑部门信息</h1>
 <br>
 <hr>
<br>


<form action="<c:url value='/DepartmentServlet'/>" method="post">
		<input type="hidden" name="method" value="depedit" />
		<input type="hidden" name="did" value="${dep.did }" />
<div  style="margin-left: 370px;"> 

 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">部门编号</span>
  <input type="text"  id="did"  name="did" style="width:300px;" value="${dep.did }"
   class="form-control" placeholder="部门编号" aria-describedby="basic-addon1">
  <label id="label1" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">部门名称</span>
  <input type="text"  id="dname" name="dname" style="width:300px;" value="${dep.dname }"
  class="form-control" placeholder="部门名称" aria-describedby="basic-addon1">
   <label id="label2" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">部门经理</span>
  <input type="text"  id="dmanager" name="dmanager" style="width:300px;" value="${dep.dmanager }"
  class="form-control" placeholder="部门经理" aria-describedby="basic-addon1">
  <label id="label3" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">部门人数</span>
  <input type="text"  name="dnumber" style="width:300px;" value="${dep.dnumber }"
  class="form-control" placeholder="部门人数" aria-describedby="basic-addon1">
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">部门描述</span>
  <input type="text" name="ddescription" style="width:300px;" value="${dep.ddescription }"
  class="form-control" placeholder="部门描述" aria-describedby="basic-addon1">
</div>
</div>

   <br>
    <div align="center">
    <button type="button"  class="btn btn-success" id="but1" >编辑部门信息</button>
    </div>
 </form>
 </div>
<div class="footer"></div>
</body>
</html>
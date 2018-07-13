<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="人力资源管理系统" />
<title>修改用户信息</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css" />
<script type="text/javascript"  src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
      $("#exit").click(function(){
    	    var r=confirm("确认退出系统？");
    	    if (r==true){
    	    }
    	    else{
    	        return false;
    	    }
    	   
      });
  });
 
 
 $(document).ready(function(){
	 $("#but1").click(function(){
		 var old = $("#old").val();
		 var f = $("#first").val();
		 var s = $("#second").val();
		 if(old=="" || $.trim(old).length==0){
				$("#label0").html("请输入原来的密码！"); 
				   return false;
		     }else{
		   	  $("#label0").html("");
		     }
	 if(f=="" || $.trim(f).length==0){
		$("#label1").html("密码不为空!"); 
		   return false;
     }else{
   	  $("#label1").html("");
     }
	if(s=="" || $.trim(s).length==0){
		 $("#label2").html("密码不为空!"); 
		 return false;
     }else{
   	  $("#label2").html("");
     }
	
	 if(f != s){
		 $("#label2").html("两次密码不一样！");
		 return false;
     }else{
   	  $("#label2").html("");    
     }
	 
	 $("form").submit();
     alert("提交数据成功！");
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
   #top2{
  font-size: 15px;
  color:#A9A9A9;
  }
</style>
</head>
<body>
<div class="header">
  <div class="top"> <img class="logo" src="${pageContext.request.contextPath}/images/logo.jpg" />
    <ul class="nav">
      <li><a href="${pageContext.request.contextPath}/main.jsp">首页</a></li>
      <li  class="seleli"><a href="#">个人中心</a></li>
      <li><a href="${pageContext.request.contextPath}/department/department.jsp">部门管理</a></li>
      <li ><a href="${pageContext.request.contextPath}/employee/employee.jsp">员工管理</a></li>
      <li><a href="${pageContext.request.contextPath}/recruitment/recruitment.jsp">招聘管理</a></li>
      <li><a href="${pageContext.request.contextPath}/train/train.jsp">培训管理</a></li>
      <li><a href="${pageContext.request.contextPath}/rewards/rewards.jsp">奖惩管理</a></li>
      <li><a href="${pageContext.request.contextPath}/salary/salary.jsp">薪资管理</a></li>
      <li><a href="${pageContext.request.contextPath}/system/system.jsp">系统管理</a></li>
    </ul>
  </div>
</div>
   <%@include file="../left.jsp" %>
   
    <div class="currmenu">
      <ul class="rig_nav">
        <li><a href="#"  style="color:blue" >用户修改</a></li>
        <li><a href="${pageContext.request.contextPath}/login.jsp" style="color:red" id="exit">安全退出</a></li>
      </ul>
    </div>
 
 <h1  align="center"  id="a1">修改个人信息</h1>
  <div align="center"  id="top2">
  (${ user }，你好，你正在进行修改个人信息操作)
</div>
 <br>
 <hr>
<br>


<form action="<c:url value='/LoginServlet'/>" method="post">
<!-- 向servlet传递一个名为method的参数，其值表示要调用servlet的哪个方法 -->
<input type="hidden" name="method" value="edit"/>
<input type="hidden" name="pwd" value="${pwd }"/>
<input type="hidden" name="loginid" value="${loginid }"/>

<div  style="margin-left: 600px;" > 

 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">请输入旧的密码：</span>
  <input type="text"  id="old"  name="old" style="width:300px;"
   class="form-control" placeholder="请输入原来的密码" aria-describedby="basic-addon1">
  <label id="label0" >${msg }</label>
</div>
<br>

 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">请输入新的密码：</span>
  <input type="text"  id="first"  name="first" style="width:300px;" class="form-control" placeholder="请输入新密码" aria-describedby="basic-addon1">
  <label id="label1" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">再次输入新密码：</span>
  <input type="text"  id="second" name="second" style="width:300px;" class="form-control" placeholder="请再次输入新密码" aria-describedby="basic-addon1">
   <label id="label2" ></label>
</div>
<br>
</div>
   <br>
    <div align="center">
    	<button type="button" class="btn btn-success" id="but1"> 确认修改</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
		<button type="reset" class="btn btn-danger"> 重置信息</button>
    </div>
 </form>

     
<div class="footer"></div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>简历</title>
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
    	var tname = $("#tname").val();
    	var tcellphone = $("#tcellphone").val();
    	var taddress = $("#taddress").val();
        var tperson = $("#tperson").val();
       if(tname=="" || $.trim(tname).length==0){
        $("#label1").html("请填写负责人姓名！");
        return;
      }else{
    	  $("#label1").html("");
      }
      if(tcellphone=="" || $.trim(tcellphone).length==0){
          $("#label2").html("请填写负责人联系电话！");
          return;
        }else{
      	  $("#label2").html("");
        }
      if(taddress=="" || $.trim(taddress).length==0){
          $("#label3").html("请填写培训的地点！");
          return;
        }else{
      	  $("#label3").html("");
        }
      if(taddress=="" || $.trim(taddress).length==0){
          $("#label4").html("请填写培训的地点！");
          return;
        }else{
      	  $("#label4").html("");
        }
    
     $("form").submit();
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
      <li class="seleli"><a href="#">培训管理</a></li>
      <li><a href="${pageContext.request.contextPath}/rewards/rewards.jsp">奖惩管理</a></li>
      <li><a href="${pageContext.request.contextPath}/salary/salary.jsp">薪资管理</a></li>
      <li><a href="${pageContext.request.contextPath}/system/system.jsp">系统管理</a></li>
    </ul>
  </div>
</div>
<%@ include file="../left.jsp" %>
    <div class="currmenu">
      <ul class="rig_nav">
        <li><a href="#" style="color:blue">添加培训信息</a></li>
        <li><a href="${pageContext.request.contextPath}/train/traquery.jsp">查询培训信息</a></li>
      </ul>
    </div>
      <h1  align="center"  id="a1">添加培训信息</h1>
 <br>
 <hr>
<br>
<form action="<c:url value='/TrainServlet?method=traadd'/>" method="post">
<div  style="margin-left: 520px;"> 
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">负责人</span>
  <input type="text"  id="tname" name="tname" style="width:312px;" 
  class="form-control" placeholder="培训负责人（必填）" >
   <label id="label1" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">联系电话</span>
  <input type="text" id="tcellphone" name="tcellphone" style="width:300px;"
   class="form-control" placeholder="负责人联系电话（必填）">
    <label id="label2" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">培训地点</span>
  <input type="text"  id="taddress" name="taddress" style="width:300px;"
  class="form-control" placeholder="培训地点（必填）">
  <label id="label3" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">培训时间</span>
  <input type="date"  name="ttime" style="width:300px;" class="form-control" >
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">培训人员</span>
  <input type="text" id="tperson" name="tperson" style="width:300px;"
   class="form-control"  placeholder="培训人员（必填）">
   <label id="label4" ></label>
</div>
   <br>
    <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">培训描述</span>
  <textarea rows="3" cols="20" name="description"  class="form-control"  style="width:300px;" ></textarea>
</div>
   <br>
    <div>
 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <button type="button"  class="btn btn-success" id="but1">添加培训信息</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
		<button type="reset" class="btn btn-danger"> 重置培训信息</button>
    </div>
    </div>
 </form>
 
</body>
</html>
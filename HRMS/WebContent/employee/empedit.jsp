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
    	var ename = $("#ename").val();
        var esalary =  $("#esalary").val();
        var ecellphone = $("#ecellphone").val();
       if(ename=="" || $.trim(ename).length==0){
        $("#label1").html("请填写员工姓名！");
        return;
      }else{
    	  $("#label1").html("");
      }
           if(esalary=="" || $.trim(esalary).length==0){
          $("#label3").html("请填写员工月薪！");
          return;
        }else{
      	  $("#label3").html("");
        }
      if(ecellphone=="" || $.trim(ecellphone).length==0){
          $("#label4").html("请填写电话号码！");
          return;
        }else{
      	  $("#label4").html("");
        }
      if(ecellphone=="" || $.trim(ecellphone).length==0){
          $("#label5").html("请填写部门！");
          return;
        }else{
      	  $("#label5").html("");
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
  #top1{
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
      <li><a href="${pageContext.request.contextPath}/person/person.jsp">个人中心</a></li>
      <li><a href="${pageContext.request.contextPath}/department/department.jsp">部门管理</a></li>
      <li class="seleli"><a href="#">员工管理</a></li>
      <li><a href="${pageContext.request.contextPath}/recruitment/recruitment.jsp">招聘管理</a></li>
      <li><a href="${pageContext.request.contextPath}/train/train.jsp">培训管理</a></li>
      <li><a href="${pageContext.request.contextPath}/rewards/rewards.jsp">奖惩管理</a></li>
      <li><a href="${pageContext.request.contextPath}/salary/salary.jsp">薪资管理</a></li>
      <li><a href="${pageContext.request.contextPath}/system/system.jsp">系统管理</a></li>
    </ul>
  </div>
</div>
	<%@include file="/left.jsp" %>
    <div class="currmenu">
      <ul class="rig_nav">
         <li ><a href="<c:url value="/employee/empadd.jsp" />">添加员工</a></li>
        <li><a href="<c:url value="/EmployeeServlet?method=findAll" />">查询员工</a></li>
      </ul>
    </div>
    <hr>
  <h1  align="center"  id="top1">修改员工信息</h1>
 <div align="center"  id="top2">
  (你正在对编号为${empList.id }号的员工进行修改)
</div>
 <hr>
<br>
<form action="<c:url value='/EmployeeServlet?method=edit'/>" method="post">
<!-- 向servlet传递一个名为method的参数，其值表示要调用servlet的哪个方法 -->
 <input type="hidden"  name="id" value="${empList.id }"/>
<div  style="margin-left: 600px;"> 
	
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">姓名</span>
  <input type="text"  id="ename" name="ename" style="width:300px;"
   class="form-control"  value="${empList.ename }">
   <label id="label1" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">月薪</span>
  <input type="text" id="esalary" name="esalary" style="width:300px;"
   class="form-control"  value="${empList.esalary}" >
	<label id="label3" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">地址</span>
  <input type="text" id="eaddress" name="eaddress" style="width:300px;"
   class="form-control"  value="${empList.eaddress}">
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">电话</span>
  <input type="text" id="ecellphone" name="ecellphone" style="width:300px;" 
  class="form-control"   value="${empList.ecellphone}">
	<label id="label4" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">所属部门</span>
<select class="form-control" style="width:270px;" name="department" >
<option value ="${empList.department}"  selected = "selected" >${empList.department}</option>
<c:forEach items="${depList}" var="dep">
<option value ="${dep.dname}"name="department" >${dep.dname}</option>
</c:forEach>
</select>
</div>
<br>
<!-- 
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">所属部门</span>
  <input type="text" id="ecellphone" name="ecellphone" style="width:270px;" 
  class="form-control"  value="${empList.department}">
	<label id="label5" ></label>
</div>
<br>
 -->
</div>
   <br>
    <div align="center">
    <button type="button"  class="btn btn-success" id="but1">确认修改</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
		<button type="reset" class="btn btn-danger"> 重置信息</button>
    </div>
 </form>



</body>
</html>
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
    	var rname = $("#rname").val();
        var rgender = $("#rgender").val();
        var rcellphone = $("#rcellphone").val();
       if(rname=="" || $.trim(rname).length==0){
        $("#label1").html("请填写姓名！");
        return;
      }else{
    	  $("#label1").html("");
      }
  
      if(rcellphone=="" || $.trim(rcellphone).length==0){
          $("#label3").html("请填写电话！");
          return;
        }else{
      	  $("#label3").html("");
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

      <h1  align="center"  id="a1">填写个人信息</h1>
 <br>
 <hr>
<br>
<form action="<c:url value='/RecServlet?method=resume'/>" method="post">
<div  style="margin-left: 520px;"> 
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">姓名</span>
  <input type="text"  id="rname" name="rname" style="width:300px;" 
  class="form-control" placeholder="（必填）">
   <label id="label1" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">性别</span>
<select class="form-control" style="width:300px;" name="rgender" >
<option value ="男" >男</option>
<option value ="女" >女</option>
</select>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">电话</span>
  <input type="text" id="rcellphone" name="rcellphone" style="width:300px;"
   class="form-control" placeholder="（必填）" >
    <label id="label3" ></label>
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">文凭</span>
  <input type="text" id="diploma" name="diploma" style="width:300px;"
   class="form-control" placeholder="（可选）" >
</div>
<br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">出生日期</span>
  <input type="date"  name="age" style="width:270px;" class="form-control" >
</div>
   <br>
 <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">个人简介</span>
  <textarea rows="3" cols="20"  class="form-control" style="width:270px;" name="description" >
  </textarea>
</div>
<br>

    <div >
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp; <button type="button"  class="btn btn-success" id="but1">投放简历</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
		<button type="reset" class="btn btn-danger"> 重置信息</button>
    </div>
    </div>
 </form>
 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.leftbar{
	width:241px;
}
</style>
</head>
<body>
	  <div class="leftbar"  >
    <div class="lm01"> <img class="peptx" src="${pageContext.request.contextPath}/images/tximg.jpg" />
      <div class="pepdet">
        <p class="pepname">${user }</p>
        <p>${user }</p>
        <p>超级管理员</p>
      </div>
      <div class="clear"></div>
    </div>
    <div class="lm02">
      <div class="title"><img class="icon" src="${pageContext.request.contextPath}/images/dataicon.jpg" />
        <h2>日历</h2>
      </div>
      <div class="detail"> <img class="" src="${pageContext.request.contextPath}/images/kj_01.jpg" /> </div>
    </div>
    <div class="lm03">
      <div class="title"><img style="padding-right:5px;" class="icon" src="${pageContext.request.contextPath}/images/weaicon.jpg" />
        <h2>天气</h2>
      </div>
      <div class="detail"> <img class="" src="${pageContext.request.contextPath}/images/kj_02.jpg" /> </div>
    </div>
  </div>
</body>
</html>
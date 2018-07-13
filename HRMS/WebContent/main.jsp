<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="人力资源管理系统" />
<title>人力资源管理系统</title>
<link type="text/css" rel="stylesheet" href="css/css.css" />
</head>
<body>
<div class="header">
  <div class="top"> <img class="logo" src="images/logo.jpg" />
    <ul class="nav">
      <li class="seleli"><a href="#">首页</a></li>
      <li><a href="person/person.jsp">个人中心</a></li>
      <li><a href="department/department.jsp">部门管理</a></li>
      <li ><a href="employee/employee.jsp">员工管理</a></li>
      <li><a href="recruitment/recruitment.jsp">招聘管理</a></li>
      <li><a href="train/train.jsp">培训管理</a></li>
      <li><a href="rewards/rewards.jsp">奖惩管理</a></li>
      <li><a href="salary/salary.jsp">薪资管理</a></li>
      <li><a href="system/system.jsp">系统管理</a></li>
    </ul>
  </div>
</div>

  <%@include file="left.jsp" %>
  
    <div class="currmenu">
      <ul class="rig_nav">
        <li class="rig_seleli"><a href="#">当前</a><span> x </span></li>
      </ul>
    </div>
    <div class="adtip">
      <div class="tip">
        <p class="goom">早上好，${user }！</p>
        <p>您目前有<span>2</span>条通知！<span>1</span>招聘信息！</p>
      </div>
      <div class="adv">
        <p>公司统一公告在这边展示</p>
        <span> x </span> </div>
    </div>
    <div class="rig_link">
      <ul>
        <li><a href="#"><img src="images/img_01.jpg" alt="" title=""></a></li>
        <li><a href="#"><img src="images/img_02.jpg" alt="" title=""></a></li>
        <li><a href="#"><img src="images/img_03.jpg" alt="" title=""></a></li>
        <li><a href="#"><img src="images/img_04.jpg" alt="" title=""></a></li>
      </ul>
    </div>
    <div class="rig_lm01">
      <div class="title"><img src="images/listicon.jpg" class="icon" style="padding-top:13px;">
        <h2>通知</h2>
        <span class="red_numb">2</span></div>
      <div class="detail">
        <div class="dat01"> <span class="datti"><span>20</span> <br />
          <span class="jan">jan</span></span> <span class="sqdeta"><img src="images/bs_03.jpg"> 您想王晓磊提交的换班申请已经通过，交换班次时间为2014-02-09  09:00-18:00，请按时上班！</span>
          <p class="linkbut"><a href="#">加入日历</a><a href="#">查看</a><a href="#">知道了</a></p>
        </div>
        <div class="dat02"> <span class="datti"><span>20</span> <br />
          <span class="jan">jan</span></span> <span class="sqdeta"><img src="images/bs_04.jpg"> 您提交的请假申请未审批通过</span>
          <p class="linkbut"><a href="#">查看</a><a href="#">知道了</a></p>
        </div>
      </div>
    </div>
    <div class="rig_lm02">
      <div class="title"><img src="images/listicon.jpg" class="icon" style="padding-top:13px;">
        <h2>绩效打分进度</h2>
      </div>
      <div class="detail">
        <div class="det_inner">
          <div class="jd"><img src="images/jd.jpg" alt="" title=""></div>
          <div class="bs">
            <p><img src="images/bs_01.jpg" alt="" title=""> 已完成打分</p>
            <p><img src="images/bs_02.jpg" alt="" title=""> 未完成打分和异常打分</p>
          </div>
          <div class="scordeti">
            <ul>
              <li>
                <p class="ywc">1120</p>
                <h3>已完成打分人数</h3>
              </li>
              <li>
                <p class="wwc">11</p>
                <h3>未打分人数</h3>
              </li>
              <li>
                <p class="ycd">2</p>
                <h3>异常打分人数</h3>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
   
<div class="footer"></div>
</body>
</html>
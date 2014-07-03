<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglibs.jsp" %>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
 
  	<link rel="stylesheet" href="<%=basePath%>/static/css/style.css" type="text/css">
      <style type="text/css">
          body{
              margin:0 auto;
          }
      </style>
  	</head>
  
  <body style="margin:0 auto;">
  
    <div style="width: 100%; height: 10px;"></div>
  
    <!-- 网页头部 -->
	<%@include file="head.jsp"%>   
	                  
	<!-- 焦点图 -->
	<div class="mid">                                  
		<%@include file="focuspic.jsp"%>	
	</div>
	
	<!-- 分类导航模块 -->
	<div class="modules1">
		<br/><span>　公司业绩</span><br/>
		<%@include file="mini.jsp"%>
	</div>
	
	<div class="modules2">
		<%@include file="sliding_door.jsp"%>
	</div>
	
	<div class="modules3">
		<br/><span>　新闻中心</span><br/>
		
		<jsp:include page="word.jsp" ></jsp:include>
	</div>
	
	<!-- 链接模块 -->
	<div class="link1">	
		<img src="<%=basePath%>/static/images/guanhua.png"></img>
		<img src="<%=basePath%>/static/images/zhongguangdian.png"></img>
		<img src="<%=basePath%>/static/images/sony.png"></img>
		<img src="<%=basePath%>/static/images/dayang.png"></img>
	</div>
	
	<!-- 尾部模块 -->
	<%@include file="end.jsp"%>
	
  </body>
</html>

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
    
    <title>My JSP 'about.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>/static/css/style.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath%>/static/css/leftna.css" type="text/css"></link>
  </head>
  
  <body>
  	
  	<!-- 网页头部 -->
  	<%@include file="head.jsp"%>
  	
  	<!-- 标题 -->
  	<div class="biaoti">
 		<img src="<%=basePath%>/static/images/chanpin.png"></img>
  	</div>
  	
  	<!-- 文本显示区域 -->
  	<div class="wenbenwai">
	  	<div class="wenben1">
	  		<img src="<%=basePath%>/static/images/xiexian.png"></img>
	  	</div>
	  	
	  	<div class="wenben2">
		  	<div class="navbox">
						<ul class="nav">
						<li><a href="">演播室摄像机</a></li>
						<li><a href="">数字(制作)特技切换台</a></li>
						<li><a href="">播出切换台</a></li>
						<li><a href="">视音频矩阵</a></li>
						<li><a href="">射频(周边及)矩阵</a></li>
						<li><a href="">多画面分割器</a></li>
						<li><a href="">监视器及大屏</a></li>
						<li><a href="">同步及测试仪器</a></li>
						<li><a href="">(内部)通话(设备)</a></li>
						<li><a href="">音频监听</a></li>
						<li><a href="">响度控制器</a></li>
						<li><a href="">2×1切换器</a></li>
						<li><a href="">键控器</a></li>
						<li><a href="">GPI遥控面板</a></li>
						<li><a href="">延时器</a></li>
						<li><a href="">视音频周边</a></li>
						<li><a href="">TALLY&UMD(系统)</a></li>
						<li><a href="">转播车天线</a></li>
						<li><a href="">转播车高功放</a></li>
						<li><a href="">编解码器</a></li>
						<li><a href="">复用器</a></li>
						<li><a href="">调制器</a></li>
						<li><a href="">卫星接收机</a></li>
						<li><a href="">(各类)光端机</a></li>
						<li><a href="">光纤分配切换器</a></li>
						<li><a href="">线材及连接器</a></li>
						<li><a href="">其他</a></li>
					    </ul>
				</div>
	  	</div>
	  	
	  	<div class="wenben3">
	  	
	  		<table class="biaoge" >
	  	    <tr><td>产品销售</td></tr>
	  	    </table>
	  	    
	  		<img src="<%=basePath%>/static/images/chanpinzhanshi.png"></img>
	  	</div>
  	</div>
  	
  		<!-- 尾部模块 -->
  	<div style="width: 100%; height: 35px;"></div>
	<%@include file="end.jsp"%>
	<div style="width: 100%; height: 10px;"></div>
  
  </body>
</html>

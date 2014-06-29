<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/views/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>/static/css/style.css" type="text/css"></link>
    <link rel="stylesheet" href="<%=basePath%>/static/css/leftna.css" type="text/css"></link>
      <link media="all" href="${path}/static/sea-modules/alice/table/1.0.1/table.css" rel="stylesheet">
      <link media="all" href="${path}/static/sea-modules/alice/paging/1.0.1/paging.css" rel="stylesheet">
      <link href="${path}/static/sea-modules/alice/form/1.0.2/form.css" type="text/css" rel="stylesheet"/>
      <link href="${path}/static/sea-modules/alice/grid/1.0.0/grid.css" type="text/css" rel="stylesheet"/>
      <title>新闻中心</title>
      <style type="text/css">
          /*.ui-table-container th,.ui-table-container td{
              font-size: 14px;
          }*/
          .ui-paging {
              margin-top: 5px;
          }
          .img-size{
              width: 100px;
              height: 75px;
          }
          .bigimg-size{
              width: 400px;
              height: 300px;
          }
      </style>

  </head>
  
  <body>
  	
  	<!-- 网页头部 -->
  	<%@include file="head.jsp"%>
  	
  	<!-- 标题 -->
  	<div class="biaoti">
 		<img src="<%=basePath%>/static/images/xinwen.png"></img>
  	</div>
  	
  	<!-- 文本显示区域 -->
  	<div class="wenbenwai">
	  	<div class="wenben1">
	  		<img src="<%=basePath%>/static/images/xiexian.png"></img>
	  	</div>
	  	<div class="show">
	  		<table class="biaoge2" >
	  	    <tr><td>${info.title}</td></tr>
	  	    </table>
            <div class="ui-table-container">
               ${info.content}
            </div>
	  	</div>
  	</div>
  		<!-- 尾部模块 -->
	<%@include file="end.jsp"%>
  </body>
</html>

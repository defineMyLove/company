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
      <link media="all" href="${path}/static/sea-modules/alice/table/1.0.1/table.css" rel="stylesheet">
      <link media="all" href="${path}/static/sea-modules/alice/paging/1.0.1/paging.css" rel="stylesheet">
      <link href="${path}/static/sea-modules/alice/form/1.0.2/form.css" type="text/css" rel="stylesheet"/>
      <link href="${path}/static/sea-modules/alice/grid/1.0.0/grid.css" type="text/css" rel="stylesheet"/>
  </head>
  
  <body>
  	
  	<!-- 网页头部 -->
  	<%@include file="head.jsp"%>
  	
  	<!-- 标题 -->
  	<div class="biaoti">
 		<img src="<%=basePath%>/static/images/biaoti.png"></img>
  	</div>
  	
  	<!-- 文本显示区域 -->
  	<div class="wenbenwai">
	  	<div class="wenben1">
	  		<img src="<%=basePath%>/static/images/xiexian.png"></img>
	  	</div>
	  	
	  	<div class="wenben2">
	  		<div class="navbox">
				<ul class="nav">
					<li><a href="${path}/toView?view=aboutint">公司简介</a></li>
					<li><a href="${path}/page/aboutque">公司资质</a></li>
					<li><a href="${path}/page/aboutper">公司业绩</a></li>
					<li><a href="${path}/page/aboutvid">公司视频</a></li>
				</ul>
			</div>
	  	</div>
	  	
	  	<div class="wenben3">
	  	 	<table class="biaoge" >
	  	    <tr><td>公司业绩</td></tr>
	  	    </table>
            <div class="ui-table-container">
                <display:table name="newList" uid="new" cellpadding="0"
                               cellspacing="0" requestURI="${path }/page/yejilist">
                    <display:column title="${fenlei.name}">
                       ${new.name}
                    </display:column>
                </display:table>
            </div>
	  	</div>
  	</div>
  	
  		<!-- 尾部模块 -->
  	<div style="width: 100%; height: 35px;"></div>
	<%@include file="end.jsp"%>
	<div style="width: 100%; height: 10px;"></div>
  
  </body>
</html>

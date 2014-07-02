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
 		<img src="<%=basePath%>/static/images/fangan.png"></img>
  	</div>
  	
  	<!-- 文本显示区域 -->
  	<div class="wenbenwai">
	  	<div class="wenben1">
	  		<img src="<%=basePath%>/static/images/xiexian.png"></img>
	  	</div>
	  	
	  	<div class="wenben2">
	  	    <div class="navbox">
				<ul class="nav">
                    <c:forEach items="${solutionList}" var="solution">
                        <li><a href="${path}/page/solution?fenlei_id=${solution.id}">${solution.name}</a></li>
                    </c:forEach>
				</ul>
			</div>
	  	</div>
	  	
	  	<div class="wenben3">
	  		<table class="biaoge" >
	  	    <tr><td>${info.name}</td></tr>
	  	    </table>
            <div class="ui-table-container">
                <c:if test="${!empty infos}">
                 <c:forEach items="${infos}" var="info">
                     <div>
                         ${info.name}
                             <img style="height:195px; width:285px; margin-left:13px;" src="${path}${info.pic_path}"/>
                     </div>
                 </c:forEach>
                </c:if>
            </div>
	  	</div>
  	</div>
  	
  		<!-- 尾部模块 -->
  	<div style="width: 100%; height: 35px;"></div>
	<%@include file="end.jsp"%>
	<div style="width: 100%; height: 10px;"></div>
  
  </body>
</html>

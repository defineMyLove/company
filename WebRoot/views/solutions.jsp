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
    
    <title>解决方案</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>/static/css/style.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath%>/static/css/leftna.css" type="text/css"></link>

      <style type="text/css">
          #ybskb {
              border-bottom: 1px solid #CCCCCC;
              float: left;
              height: 110px;
              margin-bottom: 30px;
              margin-right: 5px;
              text-align: left;
              width: 290px;
          }
          a {
              text-decoration: none;
              color: #000000
          }
          .lanzad {
              color: #000000;
              font-size: 12px;
              font-weight: bold;
              letter-spacing: -1px;
              line-height: 28px;
          }
      </style>
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
                    <div id="ybskb"><table width="290" border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>
                        <td align="left" class="lanzad" colspan="2"><a target="_blank" href="${path}/page/solutionDetail?id=${info.id}">${info.name}</a></td>
                    </tr>
                    <tr>
                        <td width="105" valign="top" height="80" align="center">
                            <div id="ybsbk"><img width="92" height="64" src="${path}${info.pic_path}"></div></td>
                        <td width="185" valign="top" class="heiz">
                            </td>
                    </tr>
                    </tbody></table>
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

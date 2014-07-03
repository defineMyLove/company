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
    
    <title>产品销售</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>/static/css/style.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath%>/static/css/leftna.css" type="text/css"></link>

      <style type="text/css">
          #cpxsz {
              background-image: url("../images/tb10.gif");
              background-position: left center;
              background-repeat: no-repeat;
              color: #4C4C4C;
              float: left;
              line-height: 22px;
              padding-left: 30px;
              text-align: left;
              width: 600px;
              list-style-type: none;
              margin: 0 auto;
              font-size: 12px;
          }

      </style>
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
                            <c:forEach items="${newList}" var="new">
                                <li><a href="${path}/page/product?id=${new.id}">${new.name}</a></li>
                            </c:forEach>
					    </ul>
				</div>
	  	</div>
	  	
	  	<div class="wenben3">
	  	
	  		<table class="biaoge" >
	  	    <tr><td>产品销售</td></tr>
	  	    </table>
<c:forEach items="${productList}" var="product">
    <div style="width:600px; float:left;" id="cpxs">
        <div>
            <div tabindex="0" style="CURSOR: pointer; HEIGHT: 20px">
                <li id="cpxsz">${product.name}</li></div>
            <div style="width:700px;">
                <table width="700" border="0" align="left">
                    <tbody>
                    <c:forEach items="${product.chird}" var="n">
                    <tr>
                        <td width="17" valign="top" align="right" style="PADDING-RIGHT: 3px; PADDING-LEFT: 3px; PADDING-BOTTOM: 3px; PADDING-TOP: 3px"><!--&nbsp;<img src="imgs/interface/li_GRA.gif" width="12" height="13" />--></td>
                        <td width="200" valign="top" align="left" style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; PADDING-TOP: 1px"><a href="p3.asp?SortID=263">
                            <strong style="COLOR: #489700">${n.name}</strong></a></td>
                        <td width="400" valign="top" align="left" style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; PADDING-TOP: 1px"><span style="FONT: 12px sans-serif">${n.des}</span></td></tr>
                    </tr>
                        </c:forEach>
                    </tbody></table></div></div>
    </div>
</c:forEach>

	  	</div>
  	</div>
  	
  		<!-- 尾部模块 -->
  	<div style="width: 100%; height: 35px;"></div>
	<%@include file="end.jsp"%>
	<div style="width: 100%; height: 10px;"></div>
  
  </body>
</html>

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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>文字从下向上显示</title>

<link rel="stylesheet" href="<%=basePath%>/static/css/style.css" type="text/css"></link>
</head>

<body>
<table class="up" border="0" bordercolor="white"  cellpadding="5" cellspacing="0"  >
<tr>
<td style="padding-left:45px">
<script language=javascript>
document.write ("<marquee scrollamount='1' scrolldelay='30' direction= 'UP' width='240' id='YiMing' height='190' onmouseover='YiMing.stop()' onmouseout='YiMing.start()'  ")
document.write ("<p><font color='black' size='3px' line-height='30px'> ")
<c:forEach items="${newList}" var="new">
document.write ('<br><a href="${path}/page/newDetail?id=${new.id}">${new.title}</a>');
</c:forEach>
document.write ("</font>")
document.write ("</marquee> ")
</script>
</td>
</tr>
</table>
</body>
</html>

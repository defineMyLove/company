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
        <div class="ui-table-container">
            <div>
                <div style="float: left;">
                    <DIV id=demo style="OVERFLOW: hidden; WIDTH:333px; HEIGHT: 248px; margin-top: 9px;"><!--修改显示区域的宽度-->
                        <TABLE cellSpacing=0 cellPadding=0 border=0>
                            <TBODY>
                            <TR>
                                <TD id=demo1>
                                    <!--滚动部分表格开始-->
                                    <table width="1000" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <c:forEach items="${proFile}" var="yeji">
                                                <td width="300" align="center">
                                                    <img src="<%=basePath%>${yeji.path}" width="210" height="160" />
                                                    </td>
                                            </c:forEach>

                                        </tr>
                                    </table>
                                    <!--滚动部分表格结束-->
                                </TD>
                                <TD id=demo2></TD></TR></TBODY></TABLE>

                    </DIV>

                    <SCRIPT>

                        var speed3=30 //速度数值越大速度越慢

                        demo2.innerHTML=demo1.innerHTML

                        function Marquee(){

                            if(demo2.offsetWidth-demo.scrollLeft<=0)

                                demo.scrollLeft-=demo1.offsetWidth

                            else{

                                demo.scrollLeft++

                            }

                        }

                        var MyMar=setInterval(Marquee,speed3)

                        demo.onmouseover=function() {clearInterval(MyMar)}

                        demo.onmouseout=function() {MyMar=setInterval(Marquee,speed3)}

                    </SCRIPT>
                </div>
                <div style="float: left;">
                    <div><a href="${path}/download/file?fileName=${info.atta_name}&url=${info.atta_path}">资料下载</a></div>
                    <div><a href="mailto:sales@ldt.cn">价格咨询</a></div>
                </div>
            </div>
            <div style="clear: both;">
                ${info.content}
            </div>
        </div>

    </div>
</div>

<!-- 尾部模块 -->
<div style="width: 100%; height: 35px;"></div>
<%@include file="end.jsp"%>
<div style="width: 100%; height: 10px;"></div>

</body>
</html>

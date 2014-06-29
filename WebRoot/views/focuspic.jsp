<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglibs.jsp" %>
<%@ include file="/views/common/taglibs.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="#" />
<meta name="description" content="#" />

<script src="${path}/static/js/focuspicjs.js" type="text/javascript"></script>
<script src="${path}/static/js/focuspicjs2.js" type="text/javascript"></script>

<link rel="stylesheet" href="${path}/static/css/focuspiccss.css" type="text/css"></link></head>

<body>

<div class="www51buycom">
    <ul class="51buypic">
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="${path}/static/images//001.png" /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="${path}/static/images//002.png" /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="${path}/static/images//003.png" /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="${path}/static/images//004.png" /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="${path}/static/images//005.png" /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="${path}/static/images//006.png" /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="${path}/static/images//007.png" /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="${path}/static/images//008.png" /></a></li>
    </ul>
    <a class="prev" href="javascript:void(0)"></a>
    <a class="next" href="javascript:void(0)"></a>
    <div class="num">
    	<ul></ul>
    </div>
</div>
<script>
/*鼠标移过，左右按钮显示*/
$(".www51buycom").hover(function(){
	$(this).find(".prev,.next").fadeTo("show",0.1);
},function(){
	$(this).find(".prev,.next").hide();
})
/*鼠标移过某个按钮 高亮显示*/
$(".prev,.next").hover(function(){
	$(this).fadeTo("show",0.7);
},function(){
	$(this).fadeTo("show",0.1);
})
$(".www51buycom").slide({ titCell:".num ul" , mainCell:".51buypic" , effect:"fold", autoPlay:true, delayTime:700 , autoPage:true });
</script>

</body>
</html>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglibs.jsp" %>
<html>
<head>

<link rel="stylesheet" href="${path}static/css/dropdown.css" type="text/css"></link>
<link rel="stylesheet" href="${path}static/css/nav.def.adv.css" type="text/css"></link>
<link rel="stylesheet" href="${path}static/css/style.css" type="text/css"></link>




<script type="text/javascript" src="${path}static/js/swfobject.js"></script>

<script type="text/javascript">
swfobject.embedSWF("http://www.virb.com/external/video/59984/MsOGibJlcnVwzc26YS7fJp054ayyiGkt", "wmfg", "980", "477", "9.0.0", false,
	false,
	{wmode:"transparent",allowFullScreen:"true",quality:"high",bgcolor:"#000000",salign:"tl"},
	{id:"wmfg",name:"wmfg"}
);
</script>

</head>

<body>

<!-- 背景图片 -->
<div class="head">
	<img class="img" src="${path}static/images/logo1.png"></img>
</div>


	


<ul class="dropdown dropdown-horizontal">
	<li><a href="${path}" class="dir">首页</a></li>
	<li><a href="${path}/toView?view=toView?view=aboutint" class="dir">关于我们</a>
		<ul>
			<li><a href="${path}/toView?view=aboutint">公司简介</a></li>
			<li><a href="${path}/page/aboutque">公司资质</a></li>
			<li><a href="${path}/page/aboutper">公司业绩</a></li>
			<li><a href="${path}/page/aboutvid">公司视频</a></li>
		</ul>
	</li>
	<li><a href="${path}/page/news" class="dir">新闻中心</a>
		<ul>

		</ul>
	</li>
	<li><a href="${path}/toView?view=products" class="dir">产品销售</a>
		<ul>
			
		</ul>
	</li>
	<li><a href="${path}/toView?view=solutions" class="dir">解决方案</a>
		<ul>
			<li><a href="${path}/toView?view=solutions">演播室视音频系统</a></li>
			<li><a href="${path}/toView?view=solutions">虚拟演播室系统</a></li>
			<li><a href="${path}/toView?view=solutions">转播车系统</a></li>
			<li><a href="${path}/toView?view=solutions">播出系统</a></li>
			<li><a href="${path}/toView?view=solutions">矩阵及信号调度系统</a></li>
			<li><a href="${path}/toView?view=solutions">数字电视前端DVB系统</a></li>
			<li><a href="${path}/toView?view=solutions">信号传输系统</a></li>
			<li><a href="${path}/toView?view=solutions">整体智能监控系统</a></li>
		</ul>
	</li>
	<li><a href="${path}/page/paper" class="dir">技术交流</a>
		<ul>
			<li><a href="${path}/page/paper">论文专栏</a></li>
			<li><a href="${path}/page/data">产品资料</a></li>
			<li><a href="${path}/page/know">知识库</a></li>
			<li><a href="${path}/toView?view=message">留言板</a></li>
		</ul>
	</li>
	<li><a href="${path}/page/job" class="dir">工作机会</a>
		<ul>
			
		</ul>
	</li>
	<li><a href="${path}/toView?view=contactus" class="dir">联系我们</a></li>
</ul>

</body>
</html>

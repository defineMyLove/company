<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>公司网站后台管理</title>
    <link rel="stylesheet" type="text/css" href="${path }/static/css/common.css"/>
    <script src="${path}/static/sea-modules/sea.js"></script>
    <script src="${path}/static/seajs-config.js"></script>
    <script type="text/javascript">
        var APP_PATH = '${path}';
        var tab = null;
        var accordion = null;
        seajs.use(['$', 'ligerui', 'module/notify'], function ($, ligerui, notify) {   //此函数在文档加载完后执行
            //提示框全局变量
            top.common = {
                tip: new notify(),
                getDateStr: function (Millisecond) {
                    var date = new Date(Millisecond);
                    var year = date.getFullYear();
                    var month = (date.getMonth() + 1).toString();
                    var day = date.getDate().toString();
                    month = month.length == 1 ? ('0' + month) : month;
                    day = day.length == 1 ? ( '0' + day) : day;
                    return year + "-" + month + "-" + day;
                }
            };
            //TODO---未找到问题，静态页显示正常，此页面显示不正常
            $('[tabid=home]').height($('body').innerHeight() - 87);
            //布局
            $("#layout1").ligerLayout({ leftWidth: 190, height: '100%', heightDiff: -34, space: 4, onHeightChanged: f_heightChanged });

            var height = $(".l-layout-center").height();

            //Tab
            $("#framecenter").ligerTab({ height: height });

            //面板
            $("#accordion1").ligerAccordion({ height: height - 24, speed: null });

            $(".l-link").hover(function () {
                $(this).addClass("l-link-over");
            }, function () {
                $(this).removeClass("l-link-over");
            });

            tab = $("#framecenter").ligerGetTabManager();
            accordion = $("#accordion1").ligerGetAccordionManager();
            tree = $("#tree1").ligerGetTreeManager();
            $("#pageloading").hide();

            //全局变量
            window.$ = $;
        });
        function f_heightChanged(options) {
            if (tab)
                tab.addHeight(options.diff);
            if (accordion && options.middleHeight - 24 > 0)
                accordion.setHeight(options.middleHeight - 24);
        }
        top.addTab = function (tabid, text, url) {
            tab.addTabItem({ tabid: tabid, text: text, url: url });
        }
    </script>
    <style type="text/css">
        body, html {
            height: 100%;
        }

        body {
            padding: 0px;
            margin: 0;
            overflow: hidden;
        }

        .l-link {
            display: block;
            height: 26px;
            line-height: 26px;
            padding-left: 10px;
            text-decoration: underline;
            color: #333;
        }

        .l-link2 {
            text-decoration: underline;
            color: white;
            margin-left: 2px;
            margin-right: 2px;
        }

        .l-layout-top {
            background: #102A49;
            color: White;
        }

        .l-layout-bottom {
            background: #E5EDEF;
            text-align: center;
        }

        #pageloading {
            position: absolute;
            left: 0px;
            top: 0px;
            background: white url('${path}/static/images/loading.gif') no-repeat center;
            width: 100%;
            height: 100%;
            z-index: 99999;
        }

        .l-link {
            display: block;
            line-height: 22px;
            height: 22px;
            padding-left: 16px;
            border: 1px solid white;
            margin: 4px;
        }

        .l-link-over {
            background: #FFEEAC;
            border: 1px solid #DB9F00;
        }

        .l-winbar {
            background: #2B5A76;
            height: 30px;
            position: absolute;
            left: 0px;
            bottom: 0px;
            width: 100%;
            z-index: 99999;
        }

        .space {
            color: #E7E7E7;
        }

            /* 顶部 */
        .l-topmenu {
            margin: 0;
            padding: 0;
            height: 37px;
            line-height: 37px;
            background-color:#1D438B;
            position: relative;
            border-top: 1px solid #1D438B;
        }

        .l-topmenu-logo {
            color: #E7E7E7;
            padding-left: 35px;
            height: 33px;
            line-height: 26px;
            background: url('${path}/static/images/topicon.png') no-repeat 10px 5px;
        }

        .l-topmenu-welcome {
            position: absolute;
            height: 24px;
            line-height: 24px;
            right: 30px;
            top: 2px;
            color: #070A0C;
        }

        .l-topmenu-welcome a {
            color: #E7E7E7;
            text-decoration: underline
        }

    </style>
</head>
<body style="padding:0px;background:#EAEEF5;">
<div id="pageloading"></div>
<div id="topmenu" class="l-topmenu">
    <div class="l-topmenu-logo"></div>
    <div class="l-topmenu-welcome">
        <a href="index.aspx" class="l-link2">${LOGIN_USER.name}</a>
        <span class="space">|</span>
        <%--<a href="https://me.alipay.com/daomi" class="l-link2" target="_blank">信息</a>
        <span class="space">|</span>--%>
        <a href="${path}/mainlogin/loginOut" class="l-link2">退出</a>
    </div>
</div>
<div id="layout1" style="width:99.2%;margin:0 auto; margin-top:4px; ">
    <div position="left" title="主要菜单" id="accordion1">
        <div title="关于我们">
            <div style=" height:7px;"></div>
            <a class="l-link"
               href="javascript:addTab('yejifenlei','公司业绩分类管理','${path}/toView?view=/maintain/yeji/yejiClassifyMain')">公司业绩分类管理</a>
            <a class="l-link"
               href="javascript:addTab('yeji','公司业绩管理','${path}/toView?view=/maintain/yeji/tree')">公司业绩管理</a>
            <a class="l-link"
               href="javascript:addTab('guize_opensettig','视频管理','${path}/toView?view=/maintain/shipin/shipinMain')">视频管理</a>
        </div>

        <div title="新闻管理">
            <div style=" height:7px;"></div>
            <a class="l-link"
               href="javascript:addTab('gonggaopage','新闻管理','${path}/toView?view=/maintain/news/newsMain')">新闻管理</a>
        </div>
        <div title="产品销售">
            <div style=" height:7px;"></div>
            <a class="l-link" href="javascript:addTab('xiaqupage','产品分类管理','${path}/toView?view=/maintain/product/tree')">产品分类管理</a>
            <a class="l-link" href="javascript:addTab('chanpinqupage','产品管理','${path}/toView?view=/maintain/product/proTree')">产品管理</a>
        </div>
        <div title="解决方案">
            <div style=" height:7px;"></div>
            <a class="l-link"
               href="javascript:addTab('solutionfenlei','解决方案类别管理','${path}/toView?view=/maintain/solution/solutionClassifyMain')">解决方案类别管理</a>
            <a class="l-link"  href="javascript:addTab('lingqudianpage','解决方案管理','${path}/toView?view=/maintain/solution/tree')">解决方案管理</a>
        </div>
        <div title="技术交流" class="l-scroll">
            <div style=" height:7px;"></div>
            <a class="l-link" href="javascript:addTab('userpage','论文专栏管理','${path}/toView?view=/maintain/lunwen/lunwenMain')">论文专栏管理</a>
            <a class="l-link" href="javascript:addTab('xzqhpage','知识库管理','${path}/toView?view=/maintain/zhishi/zhishiMain')">知识库管理</a>
            <a class="l-link" href="javascript:addTab('dicpage','留言板管理','${path}/toView?view=maintain/mesboard/mesboardMain')">留言板管理</a>
        </div>
        <div title="工作机会">
            <div style=" height:7px;"></div>
            <a class="l-link" href="javascript:addTab('chetiepage','工作机会管理','${path}/toView?view=/maintain/work/workMain')">工作机会管理</a>
        </div>
\

</div>
    <div position="center" id="framecenter">

    </div>
</div>
<div style="height:32px; line-height:32px; text-align:center;">
    Copyright © XXX
</div>
<div style="display:none"></div>
</body>
<script type="text/javascript">
    var currDialog;
    function closeDialog(){
        if(currDialog) {
            currDialog.close();
            $('#newDialog').remove();
        }
    }
    function refreshGrid(){
        var tab  = $("#framecenter").ligerGetTabManager();
        var frameId =tab.getSelectedTabItemID();
        document.getElementById(frameId).contentWindow.submitLiger();
    }
     function openDialog(title,url,width,height,buttons){
         currDialog= $.ligerDialog.open({id:'newDialog',title:title, url:url, height: 600, width: 800, buttons:buttons, isResize: true
         });
     }
    function submitForm(){
        /*alert($('#newDialog:visible iframe[name^=ligerwindow]')[0].id);*/
        $('#newDialog:visible iframe[name^=ligerwindow]')[0].contentWindow.submitForm();
    }
</script>
</html>

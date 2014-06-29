<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/views/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${path }/static/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${path }/static/sea-modules/ligerui/1.2.0/skins/ligerui-icons.css"/>
    <script src="${path}/static/sea-modules/sea.js"></script>
    <script src="${path}/static/seajs-config.js"></script>
    <script type="text/javascript">
        var manager;
        seajs.use(['$', 'ligerui'], function ($,jqueryUtil) {
            //显示提示信息
            if ('${info}') {
                top.common.tip.notify({title: '${info}'});
            }
            manager = jQuery("#domaingrid").ligerGrid({
                rownumbers: true,
                columns: [
                    { display: '领取点名称', name: 'name', align: 'left'},
                    { display: '联系人', name: 'address', align: 'linkman' },
                    { display: '联系电话', name: 'tel', align: 'tel'},
                    { display: '地址', name: 'address'},
                    { display: '描述', name: 'des'},
                    { display: '领取点编号', name: 'id', hide: 'true' }  //隐藏
                ],
                url: '${path}/maintain/receiveSite/list?xzqhCode=${xzqh.code}',
                root: 'rows',
                record: 'total',
                toolbar: { items: [
                    { id: 'add', text: '添加', click: itemclick, icon: 'add'},
                    { line: true },
                    { id: 'update', text: '修改', click: itemclick, icon: 'modify'},
                    { line: true },
                    { id: 'del', text: '删除', click: itemclick, icon: 'delete'}
                ]
                }
            });
            //查询按钮动作绑定
            $('#submitBut').click(function () {
                submitLiger();
            });
            //全局变量
            window.$=$;
        })
        /** 查询动作 **/
        function submitLiger() {
            var mainParam = {};
            mainParam.page = manager.options.page;
            mainParam.pageSize = manager.options.pageSize;
            mainParam.sortName = manager.options.sortName;
            mainParam.sortOrder = manager.options.sortOrder;
            manager.loadServerData(mainParam, true); //刷新
        }
        function itemclick(item) {
            if ('add' === item.id) {
                var  $dialog=$.ligerDialog.open({
                    url:'${path}/maintain/receiveSite/addUI?id=${xzqh.code}',
                    title:'添加领取点',
                    width: 700,
                    height: 400,
                    isHidden:false,
                    buttons: [{ text: '取消', onclick: function(){
                        $dialog.close();
                    }}],
                    onClosed:function(){
                        submitLiger();
                    }
                });
            } else if ('update' === item.id) {
                var row = manager.getSelectedRow();
                if (!row) {
                    $.ligerDialog.warn("请选择一条记录");
                    return;
                }
                var  $dialog=$.ligerDialog.open({
                    url:'${path}/maintain/receiveSite/updateUI?id=' + row.id,
                    title:'修改领取点',
                    width: 700,
                    height: 400,
                    isHidden:false,
                    buttons: [{ text: '取消', onclick: function(){
                        $dialog.close();
                    }}],
                    onClose:function(){
                        submitLiger();
                    }
                });

            } else if ('del' === item.id) {
                var row = manager.getSelectedRow();
                if (!row) {
                    $.ligerDialog.warn("请选择一条记录");
                    return;
                }
                $.ligerDialog.confirm("确定删除此领取点？",function(yes){
                    if(yes){
                        $.getJSON("${path}/maintain/receiveSite/del", {id: row.id,xzqhCode:'${xzqhCode}'}, function (data) {
                            top.common.tip.notify({title:'del'});
                            submitLiger();
                        });
                    }
                });
            }
        }
    </script>
</head>
<body>
<div class="panel">
    <fieldset class="fieldset">
        <legend class="legend">所属行政区划：${xzqh.name}(${xzqh.code})</legend>
    <div style="PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
         id=domaingrid></div>
        </fieldset>
</div>
</body>
</html>
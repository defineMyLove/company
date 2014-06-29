<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/common.css"/>
    <script src="${path}/static/sea-modules/sea.js"></script>
    <script src="${path}/static/seajs-config.js"></script>
    <script charset="utf-8" src="${path}/static/js/kindeditor/kindeditor-min.js"></script>
    <script type="text/javascript">
        if('${msg}'){
            top.common.tip.notify({title:'${msg}'});
        }
        seajs.use(['$', 'jquery-util'], function ($, jqueryUtile) {
            //全局变量
            window.$ = $;
            //表单验证
            jqueryUtil.formValidate({
                form: "showForm",
                rules: {
                    "title": {required: true,maxlength:50},
                    "content": {required: true}
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#add").click(
                    function () {
                        $("#showForm").attr("action", '${path}/maintain/yeji/add').submit();
                    }
            );
        });
        function submitForm(){
            document.getElementById("submitBtn").click();
        }
    </script>
</head>
<body>
<div class="panel">
    <fieldset class="fieldset">
        <form:form id="showForm" method="post" action="${path}/maintain/yeji/add" enctype="multipart/form-data">
            <input id="id" name="id" value="${info.id}" type="hidden"/>
            <input id="id" name="fenlei_id" value="${fenlei_id}" type="hidden"/>
            <table width="90%" class="table-add">
                <tr>
                    <td width="20%" class="tabRight required">
                        标题
                    </td>
                    <td width="80%" style="text-align: left;">
                        <input type="text" class="text" name="name" id="name" value="${info.name}"/>
                    </td>

                </tr>
                <tr>
                    <td width="20%" class="tabRight required">
                        内容
                    </td>
                    <td width="30%" style="text-align: left;">
                        <c:if  test="${classify.type==1}">
                            <input type="text" class="text" name="content" id="content" value="${info.content}"/>
                            <script type="text/javascript">
                                KE.show({
                                    id: 'content',
                                    width: '80%',
                                    height: '300px',
                                    imageUploadJson: '${path}/maintain/upload/imnage'
                                });
                            </script>
                        </c:if>
                        <c:if  test="${classify.type==2}">
                            <input type="file" class="text" name="file" id="file"/>

                        </c:if>
                    </td>
                </tr>
            </table>
            <table style="width: 98%;margin-buttom: 5px;">
                <tr>
                    <td align="center">
                        <input type="submit" id="submitBtn" value="保 存" style="display:none;"/>
                    </td>
                </tr>
            </table>
        </form:form>
    </fieldset>
</div>
</body>
</html>
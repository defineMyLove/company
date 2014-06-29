<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${path }/static/css/common.css"/>
    <script src="${path}/static/sea-modules/sea.js"></script>
    <script src="${path}/static/seajs-config.js"></script>

    <title></title>
    <script type="text/javascript">
        if('${info}'){
            top.common.tip.notify({title:'${info}'});
        }
        seajs.use(['$','jquery-util'], function ($,jqueryUtil) {
            jqueryUtil.formValidate({
                form: "addForm",
                blockUI: false,
                rules: {
                    name: {
                        required: true,
                        maxlength: 50
                    },
                    linkman: {
                        required: true,
                        maxlength: 5
                    },
                    address: {
                        required: true,
                        maxlength: 250
                    },
                    tel: {
                        required: true,
                        isTel:true
                    },
                    des: {
                        maxlength: 250
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        });
    </script>
</head>
<body>
    <form:form id="addForm" action="${path}/maintain/receiveSite/update"
               method="post" >
        <input type="hidden" name="xzqhCode" value="${receiveSite.xzqhCode}">
        <input type="hidden" name="id" value="${receiveSite.id}">
        <table width="90%" class="table-add">
            <tr>
                <td width=20% class="tabRight required">领取点名称</td>
                <td style="text-align: left;" width=80%><input type="text" class="text" name="name" id="name" value="${receiveSite.name}"/></td>
            </tr>
            <tr>
                <td width=20% class="tabRight required">联系人</td>
                <td style="text-align: left;" width=80%><input type="text" class="text" name="linkman" id="linkman" value="${receiveSite.linkman}"/></td>
                </td>
            </tr>
            <tr>
                <td width=20% class="tabRight">电话</td>
                <td style="text-align: left;" width=80%><input type="text" class="text" name="tel" id="tel"
                                                               title="请输入座机号(区号-座机号)或手机号" poshytip="" value="${receiveSite.tel}"/>
                </td>
                </td>
            </tr>
            <tr>
                <td width=20% class="tabRight required">地址</td>
                <td style="text-align: left;" width=80%><input type="text" class="text" name="address" id="address" value="${receiveSite.address}"/></td>
                </td>
            </tr>
            <tr>
                <td width=20% class="tabRight required">描述</td>
                <td style="text-align: left;" width=80%><input type="text" class="text" name="des" id="des" value="${receiveSite.des}"/></td>
                </td>
            </tr>

        </table>
        <table style="width:98%;margin-top: 5px;">
            <tr>
                <td align="center">
                    <input type="submit" class="btn btn-primary" value="保 存"/>
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>
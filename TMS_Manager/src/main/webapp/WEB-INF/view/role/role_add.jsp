<%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2019/8/16
Time: 15:24
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <%@include file="../import.jsp" %>
        <script>
            $(function () {
                $("#subm").click(function () {
                    $.post({
                        url:'changeInsertRole',
                        data:$("#form1").serialize(),
                        success:function (result) {
                            if ("修改成功" == result||"添加成功"==result) {
                                $("#save_result_info").removeClass("save_fail ");
                                $("#save_result_info").addClass("save_success");
                                $("#save_result_info").text(result);
                            } else {
                                $("#save_result_info").removeClass("save_success");
                                $("#save_result_info").addClass("save_fail");
                                $("#save_result_info").text(result);
                            }
                            change();
                            setTimeout(change2, 2000);
                        },
                        error:function () {

                        }
                    })
                })
            })
            function change() {
                $("#save_result_info").css('display', 'block');
            }

            function change2() {
                $("#save_result_info").css('display', 'none');
            }
        </script>
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <%--            <img src="../images/logo.png" alt="logo" class="left"/>--%>
            <a href="${PATH_WAY}/quit" id="a123">[退出]</a>
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">
            <ul id="menu">
                <%@include file="../daohang.jsp" %>
            </ul>
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">
            <!--保存操作后的提示信息：成功或者失败-->
            <div id="save_result_info" class="save_success">保存成功！</div><!--保存失败，角色名称重复！-->
            <form action="" method="" class="main_form" id="form1">
                <div class="text_info clearfix"><span>角色名称：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="${rname}" name="rname"/>
                    <span class="required">*</span>
                    <div class="validate_msg_medium">不能为空，且为20长度的字母、数字和汉字的组合</div>
                </div>
                <div class="text_info clearfix"><span>设置权限：</span></div>
                <div class="input_info_high">
                    <div class="input_info_scroll">
                        <ul>
                            <c:if test="${rname==''}">
                                <c:forEach items="${allpriv}" var="allpriv1">
                                    <c:if test="${allpriv1.by001=='主页'||allpriv1.by001=='个人信息'||allpriv1.by001=='密码修改'}">
                                        <li><input type="checkbox" name="choose" checked="checked" value="${allpriv1.by001}"
                                                   onclick="return false" >${allpriv1.by001}</li>
                                    </c:if>
                                    <c:if test="${allpriv1.by001!='主页'&&allpriv1.by001!='个人信息'&&allpriv1.by001!='密码修改'}">
                                        <li><input type="checkbox" name="choose" value="${allpriv1.by001}">${allpriv1.by001}</li>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                            <c:if test="${rname!=''}">
                                <c:forEach items="${allpriv}" var="allpriv1">
                                    <c:set value="true" var="a"></c:set>
                                    <c:if test="${allpriv1.by001=='主页'||allpriv1.by001=='个人信息'||allpriv1.by001=='密码修改'}">
                                        <li><input id="${allpriv1.by001}" name="choose" type="checkbox" checked="checked" value="${allpriv1.by001}" onclick="return false">${allpriv1.by001}</li>
                                    </c:if>
                                    <c:if test="${allpriv1.by001!='主页'&&allpriv1.by001!='个人信息'&&allpriv1.by001!='密码修改'}">
                                        <c:forEach items="${priv}" var="priv1">
                                            <c:if test="${allpriv1.by001!='主页'&&allpriv1.by001!='个人信息'&&allpriv1.by001!='密码修改'}">
                                                <c:if test="${allpriv1.by001==priv1.by001}">
                                                    <li><input name="choose" type="checkbox" value="${allpriv1.by001}" checked="checked">${allpriv1.by001}</li>
                                                    <c:set var="a" value="false"></c:set>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${a==true}">
                                            <li><input  type="checkbox" value="${allpriv1.by001}" name="choose">${allpriv1.by001}</li>
                                        </c:if>

                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </ul>
                    </div>
                    <span class="required">*</span>
                    <div class="validate_msg_tiny">至少选择一个权限</div>
                </div>
                <div class="button_info clearfix">
                    <input type="button" value="保存" class="btn_save" id="subm"/>
                    <input type="button" value="返回" class="btn_save" id="back" onclick="javascript:history.back(-1);"/>
                </div>
            </form>
        </div>
        <!--主要区域结束-->
        <div id="footer">

        </div>
    </body>
</html>

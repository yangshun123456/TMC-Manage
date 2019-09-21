<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/16
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <%@include file="../import.jsp" %>
        <script language="javascript" type="text/javascript">
            $(function () {
                $("#submit1").click(function () {
                    $.post({
                        url:'insertAdmin',
                        data:$("#form1").serialize(),
                        success:function (result) {
                            alert(result);
                            location.href='${PATH_WAY}/showAdmin'
                        },
                        error:function () {

                        }
                    })
                })
            })
            //保存成功的提示消息
            function showResult() {
                showResultDiv(true);
                window.setTimeout("showResultDiv(false);", 3000);
            }

            function showResultDiv(flag) {
                var divResult = document.getElementById("save_result_info");
                if (flag)
                    divResult.style.display = "block";
                else
                    divResult.style.display = "none";
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
            <div id="save_result_info" class="save_success">保存成功！</div>
            <form action="" method="" class="main_form" id="form1">
                <div class="text_info clearfix"><span>姓名：</span></div>
                <div class="input_info">
                    <input type="text" name="aname"/>
                    <span class="required">*</span>
                    <div class="validate_msg_long"></div>
                </div>
                <div class="text_info clearfix"><span>管理员账号：</span></div>
                <div class="input_info">
                    <input type="text" name="acname"/>
                    <span class="required">*</span>
                    <div class="validate_msg_long"></div>
                </div>
                <div class="text_info clearfix"><span>密码：</span></div>
                <div class="input_info">
                    <input type="password" name="apassword"/>
                    <span class="required">*</span>
<%--                    <div class="validate_msg_long error_msg">30长度以内的字母、数字和下划线的组合</div>--%>
                </div>
                <div class="text_info clearfix"><span>重复密码：</span></div>
                <div class="input_info">
                    <input type="password" name="apassword1"/>
                    <span class="required">*</span>
<%--                    <div class="validate_msg_long error_msg">两次密码必须相同</div>--%>
                </div>
                <div class="text_info clearfix"><span>上传头像</span></div>
                <div class="input_info">
                    <input type="file" name="userimg"/>
                    <span class="required">*</span>
<%--                    <div class="validate_msg_long error_msg">图片大小400*400px</div>--%>
                </div>
                <div class="text_info clearfix"><span>电话：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" name="atel"/>
                    <span class="required">*</span>
<%--                    <div class="validate_msg_medium error_msg">正确的电话号码格式：手机或固话</div>--%>
                </div>
                <div class="text_info clearfix"><span>Email：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" name="aemail"/>
                    <span class="required">*</span>
<%--                    <div class="validate_msg_medium error_msg">50长度以内，正确的 email 格式</div>--%>
                </div>
                <div class="text_info clearfix"><span>角色：</span></div>
                <div class="input_info_high">
                    <div class="input_info_scroll">
                        <ul>
                            <c:forEach items="${role}" var="role1">
                                <li><input type="checkbox" name="roleall" value="${role1.rid}"/>${role1.rname}</li>
                            </c:forEach>

                        </ul>
                    </div>
                    <span class="required">*</span>
<%--                    <div class="validate_msg_tiny error_msg">至少选择一个</div>--%>
                </div>
                <div class="button_info clearfix">
                    <input type="button" value="保存" class="btn_save" id="submit1"/>
                    <input type="button" value="取消" class="btn_save"/>
                </div>
            </form>
        </div>
        <!--主要区域结束-->
        <div id="footer">

        </div>
    </body>
</html>

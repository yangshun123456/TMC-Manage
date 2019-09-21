<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <%@include file="../import.jsp" %>
        <script>
            $(function () {
                $(".password_off ").addClass("password_on");
                $(".password_off ").removeClass("password_off");
                $("#subm").click(function () {
                    $.post({
                        url: 'changePaw',
                        data: $("#form1").serialize(),
                        success: function (result) {
                            alert(result)
                            if ("修改成功" == result) {
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
                        error: function (result) {
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
        <div id="main">
            <!--保存操作后的提示信息：成功或者失败-->
            <div id="save_result_info" class="save_success">保存成功！</div><!--保存失败，旧密码错误！-->
            <form action="" method="" class="main_form" id="form1">
                <div class="text_info clearfix"><span>旧密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200" name="old_password" id="password"/><span
                        class="required"></span>
                    <div class="validate_msg_medium"></div>
                </div>
                <div class="text_info clearfix"><span>新密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200" name="new_password" id="newpaw"/><span
                        class="required"></span>
                    <div class="validate_msg_medium"></div>
                </div>
                <div class="text_info clearfix"><span>重复新密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200" name="new_password1" id="newpaw1"/><span
                        class="required"></span>
                    <div class="validate_msg_medium"></div>
                </div>
                <div class="button_info clearfix">
                    <input type="button" value="保存" class="btn_save" id="subm"/>
                    <input type="button" value="取消" class="btn_save" id="clear"/>
                </div>
            </form>
        </div>
        <!--主要区域结束-->
        <div id="footer">

        </div>
    </body>
</html>

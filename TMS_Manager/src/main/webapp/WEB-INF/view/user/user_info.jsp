<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <%@include file="../import.jsp" %>
<%--        <script type="javascript">--%>
<%--            $("#a123").click(function () {--%>
<%--                alert(123)--%>
<%--                $(this).attr('href','${PATH_WAY}/quit')--%>
<%--            })--%>
<%--        </script>--%>
        <script language="javascript" type="text/javascript">
            //保存成功的提示信息
            $(function () {
                $(".information_off ").addClass("information_on");
                $(".information_off ").removeClass("information_off");
                $("#submi").click(function () {
                    $.get({
                        url: 'userMessage',
                        data: $("#form1").serialize(),
                        success: function (result) {
                            showMessage(result);
                            setTimeout(function () {
                                $("#save_result_info").css('display', 'none');
                            }, 3000);
                        },
                        error: function () {

                        }
                    })
                })

                function showMessage(msg) {
                    if (msg == "修改成功") {

                        $("#save_result_info").removeClass("save_fail");
                        $("#save_result_info").addClass("save_success");
                        $("#save_result_info").css('display', 'block');
                    } else {
                        $("#save_result_info").removeClass("save_success");
                        $("#save_result_info").addClass("save_fail");
                        $("#save_result_info").css('display', 'block')
                    }
                }
            })

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
            <div id="save_result_info" class="save_success">保存成功！</div><!--保存失败，数据并发错误！-->
            <form action="" method="get" class="main_form" id="form1">
                <div class="text_info clearfix"><span>管理员账号：</span></div>
                <div class="input_info"><input type="text" readonly="readonly" class="readonly" name="acname"
                                               value="${admin1.acname}"/></div>
                <div class="text_info clearfix"><span>角色：</span></div>
                <div class="input_info">
                    <input type="text" readonly="readonly"  class="readonly width400" value="${admin1.roleshow}"/>
                </div>
                <div class="text_info clearfix"><span>姓名：</span></div>
                <div class="input_info">
                    <input type="text" value="${admin1.aname}" name="aname"/>
                    <%--                    <span class="required">*</span>--%>
                    <%--                    <div class="validate_msg_long error_msg"></div>--%>
                </div>
                <div class="text_info clearfix"><span>电话：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="${admin1.atel}" name="atel"/>
                    <div class="validate_msg_medium"></div>
                </div>
                <div class="text_info clearfix"><span>Email：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="${admin1.aemail}" name="aemail"/>
                    <div class="validate_msg_medium"></div>
                </div>
                <div class="text_info clearfix"><span>创建时间：</span></div>
                <div class="input_info"><input type="text" readonly="readonly" class="readonly"
                                               value="${admin1.createtime1}"/></div>
                <div class="button_info clearfix">
                    <input type="button" value="保存" class="btn_save" onclick="showResult();" id="submi"/>
                    <input type="button" value="取消" class="btn_save"/>
                </div>
            </form>
        </div>
        <!--主要区域结束-->
        <div id="footer">
        </div>
    </body>
</html>

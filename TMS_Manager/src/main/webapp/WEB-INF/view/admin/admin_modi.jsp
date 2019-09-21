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
            //保存成功的提示消息
           $(function () {
               $("#submit1").click(function () {
                   $.post({
                       url:'UpdateAdmin',
                       data:$("#form1").serialize(),
                       success:function (result) {
                           alert(result);
                       },
                       error:function () {

                       }
                   })
               })
           })

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
                    <input type="text" value="${updateadmin.aname}" name="aname"/>
                    <input type="hidden" value="${updateadmin.aid}" name="aid">
                    <span class="required">*</span>
<%--                    <div class="validate_msg_long error_msg">20长度以内的汉字、字母、数字的组合</div>--%>
                </div>
                <div class="text_info clearfix"><span>管理员账号：</span></div>
                <div class="input_info"><input type="text" readonly="readonly" class="readonly" value="${updateadmin.acname}" name="acname"/></div>
                <div class="text_info clearfix"><span>电话：</span></div>
                <div class="input_info">
                    <input type="text" value="${updateadmin.atel}" name="atel"/>
                    <span class="required">*</span>
<%--                    <div class="validate_msg_long error_msg">正确的电话号码格式：手机或固话</div>--%>
                </div>
                <div class="text_info clearfix"><span>Email：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="${updateadmin.aemail}" name="aemail"/>
                    <span class="required">*</span>
<%--                    <div class="validate_msg_medium error_msg">50长度以内，正确的 email 格式</div>--%>
                </div>
                <div class="text_info clearfix"><span>角色：</span></div>
                <div class="input_info_high">
                    <div class="input_info_scroll">
                        <ul>
                           <c:forEach items="${rolelist}" var="list">
                               <c:set value="1" var="a"></c:set>
                               <c:forEach items="${updateadmin.userrole}" var="list1">
                                   <c:if test="${list1.rname==list.rname}">
                                       <li><input type="checkbox" value="${list1.rid}" checked name="check"> ${list1.rname}</li>
                                       <c:set value="2" var="a"></c:set>
                                   </c:if>
                               </c:forEach>
                               <c:if test="${a==1}">
                                   <li><input type="checkbox" value="${list.rid}" name="check">${list.rname}</li>
                               </c:if>
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

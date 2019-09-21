<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <%@include file="../import.jsp" %>
        <script>
            $(function () {
                $("#submit1").click(function () {
                    $("#form1").submit();
                })
            })
        </script>
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <a href="quit">[退出]</a>
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
            <div id="save_result_info" class="save_success">保存成功！</div>
            <form action="updateRole" method="post" class="main_form" id="form1">
                <div class="text_info clearfix"><span>角色名称：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="${role1.rname}" name="rname" />
                    <input type="hidden" value="${role1.rname}" name="pastrname">
                    <span class="required">*</span>
                    <div class="validate_msg_medium error_msg"></div>
                </div>                    
                <div class="text_info clearfix"><span>设置权限：</span></div>
                <div class="input_info_high">
                    <div class="input_info_scroll">
                        <ul>
                            <c:forEach items="${allpriv}" var="allpriv1">
                                <c:set value="true" var="a"></c:set>
                                <c:if test="${allpriv1.by001=='主页'||allpriv1.by001=='个人信息'||allpriv1.by001=='密码修改'}">
                                    <li><input id="${allpriv1.by001}" name="choose" type="checkbox" checked="checked" value="${allpriv1.pid}" onclick="return false">${allpriv1.by001}</li>
                                </c:if>
                                <c:if test="${allpriv1.by001!='主页'&&allpriv1.by001!='个人信息'&&allpriv1.by001!='密码修改'}">
                                    <c:forEach items="${role1.rolepriv}" var="priv1">
                                        <c:if test="${allpriv1.by001!='主页'&&allpriv1.by001!='个人信息'&&allpriv1.by001!='密码修改'}">
                                            <c:if test="${allpriv1.by001==priv1.by001}">
                                                <li><input name="choose" type="checkbox" value="${allpriv1.pid}" checked="checked">${allpriv1.by001}</li>
                                                <c:set var="a" value="false"></c:set>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                    <c:if test="${a==true}">
                                        <li><input  type="checkbox" value="${allpriv1.pid}" name="choose">${allpriv1.by001}</li>
                                    </c:if>

                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                    <span class="required">*</span>
                    <div class="validate_msg_tiny">至少选择一个权限</div>
                </div>
                <div class="button_info clearfix">
                    <input type="button" value="保存" class="btn_save"  id="submit1"/>
                    <input type="button" value="取消" class="btn_save" onclick="javascript:history.back(-1);" />
                </div>
            </form> 
        </div>
        <!--主要区域结束-->
        <div id="footer">
            
        </div>
    </body>
</html>

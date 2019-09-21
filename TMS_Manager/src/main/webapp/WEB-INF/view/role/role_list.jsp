<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/16
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <%@include file="../import.jsp" %>
        <script language="javascript" type="text/javascript">
            $(function () {
                $(".role_off").addClass("role_on");
                $(".role_off").removeClass("role_off");
                var succ=${successMeg};
                var error=${errorMsg};
                if (succ=='删除成功') {
                    $("#save_result_info").removeClass("save_fail ");
                    $("#save_result_info").addClass("save_success");
                    $("#save_result_info").text(succ);
                } else {
                    $("#save_result_info").removeClass("save_success");
                    $("#save_result_info").addClass("save_fail");
                    $("#save_result_info").text(error);
                }
                change();
                setTimeout(change2, 2000);
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
            <a href="quit" id="a123">[退出]</a>
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
            <form action="" method="">
                <!--查询-->
                <div class="search_add">
                    <input type="button" value="增加" class="btn_add" onclick="location.href='role/add';"/>
                </div>
                <!--删除的操作提示-->
                <div id="operate_result_info" class="operate_success">
                    <img src="${PATH_WAY}/images/close.png" onclick="this.parentNode.style.display='none';"/>
                    删除成功！
                </div> <!--删除错误！该角色被使用，不能删除。-->
                <!--数据区域：用表格展示数据-->
                <div id="data">
                    <table id="datalist">
                        <thead>
                            <tr>
                                <th>角色的ID</th>
                                <th>角色名称</th>
                                <th class="width600">拥有的权限</th>
                                <th class="td_modi"></th>

                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${rolelist}" var="role1">
                                <tr>
                                    <td>${role1.rid}</td>
                                    <td>${role1.rname}</td>
                                    <td>${role1.privstring}</td>
                                    <td>
                                        <input type="button" value="修改" class="btn_modify"
                                               onclick="location.href='role/update?rid=${role1.rid}&rname=${role1.rname}'"/>
                                        <input type="button" value="删除" class="btn_delete" onclick="location.href='role/deleteRole?rid=${role1.rid}'"/>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!--分页-->
                <div id="pages">
                    <a href="#">上一页</a>
                    <a href="#" class="current_page">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">下一页</a>
                </div>
            </form>
        </div>
        <!--主要区域结束-->
        <div id="footer">

        </div>
    </body>
</html>

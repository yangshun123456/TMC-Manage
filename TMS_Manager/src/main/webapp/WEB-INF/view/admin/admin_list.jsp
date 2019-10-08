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
            //显示角色详细信息
            function showDetail(flag, a) {
                var detailDiv = a.parentNode.getElementsByTagName("div")[0];
                if (flag) {
                    detailDiv.style.display = "block";
                } else
                    detailDiv.style.display = "none";
            }

            //重置密码
            function resetPwd() {
                alert("请至少选择一条数据！");
                //document.getElementById("operate_result_info").style.display = "block";
            }

            function as() {
                var a=$("#dsa").val();
                if(a==""){
                    alert("查询角色不能为空");
                }else{
                    location.href='${PATH_WAY}/SelectRole?rname='+a;
                }
            }

            //全选
            function selectAdmins(inputObj) {
                var inputArray = document.getElementById("datalist").getElementsByTagName("input");
                for (var i = 1; i < inputArray.length; i++) {
                    if (inputArray[i].type == "checkbox") {
                        inputArray[i].checked = inputObj.checked;
                    }
                }
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
            <form action="" method="">
                <!--查询-->
                <div class="search_add">
                    <div>
                        模块：
                        <select id="selModules" class="select_search" name="sele">
                            <option>全部</option>
                            <c:forEach items="${rolelist}" var="role1">
                                <option>${role1.rname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div>角色：<input type="text" value="" name="rname"  class="text_search width200" id="dsa"/></div>
                    <div><input type="button" value="搜索" class="btn_search" onclick="as()"/></div>
                    <input type="button" value="密码重置" class="btn_add" onclick="resetPwd();"/>
                    <input type="button" value="增加" class="btn_add" onclick="location.href='admin/toadd;'"/>
                </div>
                <!--删除和密码重置的操作提示-->
                <div id="operate_result_info" class="operate_fail">
                    <img src="../images/close.png" onclick="this.parentNode.style.display='none';"/>
                    <span>删除失败！数据并发错误。</span><!--密码重置失败！数据并发错误。-->
                </div>
                <!--数据区域：用表格展示数据-->
                <div id="data">
                    <table id="datalist">
                        <tr>
                            <th class="th_select_all">
                                <input type="checkbox" onclick="selectAdmins(this);"/>
                                <span>全选</span>
                            </th>
                            <th>管理员ID</th>
                            <th>姓名</th>
                            <th>登录名</th>
                            <th>电话</th>
                            <th>电子邮件</th>
                            <th>授权日期</th>
                            <th class="width100">拥有角色</th>
                            <th></th>
                        </tr>
                        <tr>
                            <c:forEach items="${adminlist}" var="admin">
                                <td><input type="checkbox"/></td>
                                <td>${admin.aid}</td>
                                <td>${admin.aname}</td>
                                <td>${admin.acname}</td>
                                <td>${admin.atel}</td>
                                <td>${admin.aemail}</td>
                                <td>${admin.createtime1}</td>
                                <td>
                                    <a class="summary" onmouseover="showDetail(true,this);"
                                       onmouseout="showDetail(false,this);">${admin.userrole[0].rname}...</a>
                                    <!--浮动的详细信息-->
                                    <div class="detail_info">
                                        ${admin.roleshow}
                                    </div>
                                </td>
                                <td class="td_modi">
                                    <input type="button" value="修改" class="btn_modify"
                                           onclick="location.href='admin/toUpdate?aid=${admin.aid}';"/>
                                    <input type="button" value="删除" class="btn_delete" onclick="location.href='admin/deleteAdmin?aid=${admin.aid}'"/>
                                </td>
                        </tr>
                        </c:forEach>
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

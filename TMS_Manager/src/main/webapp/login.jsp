<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/16
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>登录界面</title>
        <link href="<%=request.getContextPath()%>/resource/css/logincss.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/resource/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <script src="<%=request.getContextPath()%>/resource/js/jquery-3.4.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/myjs.js"></script>
    </head>
    <body>
        <div id="all" class="container">
            <div id="left">
            </div>
            <div id="right">
                <h1 id="title">电信资费管理系统</h1>

                <div id="login">
                    <form action="login" method="post" id="form1">
                        <label class="control-label" style="font-size: 20px"> 用户名</label>
                        <span id="alert1" class="text-danger"></span>
                        <input name="acname" type="text" class="form-control" id="user" placeholder="user"/>
                        </br>

                        <label name="password" class="control-label" style="font-size: 20px">
                            密&nbsp&nbsp&nbsp&nbsp码</label>
                        <span id="alert2" class="text-danger"></span>
                        <input type="password" name="apassword" class="form-control" id="password"
                               placeholder="password"/>

                        <input type="checkbox" value="1" id="check" class="checkbox-inline" name="remem">
                        <span style="font-size: 20px;font-family: 微软雅黑;text-align: center;position: relative;top:8px;">记住密码</span>

                        <a href="#"><span id="a1">忘记密码</span></a><br/><br/><br/>
                        <input type="button" value="登&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp录" class="form-control" id="button">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

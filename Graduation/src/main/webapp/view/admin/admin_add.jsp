<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/8
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <%@include file="../import/css.jsp" %>
        <link href="<%=request.getContextPath()%>/quixlab-master/plugins/sweetalert/css/sweetalert.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/quixlab-master/css/style.css" rel="stylesheet">
    </head>
    <body>
        <div id="main-wrapper">
            <%@include file="../import/body.jsp" %>

            <div class="content-body">

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">角色添加</h4>
                                    <form role="form" style="position:relative;left: 300px">
                                        <div class="form-group">
                                            <label for="name">姓名</label>
                                            <input type="text" class="form-control" id="name"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="form-group">
                                            <label for="acname">用户名</label>
                                            <input type="text" class="form-control" id="acname"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="form-group">
                                            <label for="acname">学号/教师号</label>
                                            <input type="text" class="form-control" id="aid"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="form-group">
                                            <label for="acname">密码</label>
                                            <input type="password" class="form-control" id="apassword"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="form-group">
                                            <label for="acname">确认密码</label>
                                            <input type="password" class="form-control" id="apassword1"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="form-group">
                                            <label for="acname">手机号</label>
                                            <input type="text" class="form-control" id="atel"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="form-group">
                                            <label for="acname">邮箱</label>
                                            <input type="text" class="form-control" id="aemail"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="form-group">
                                            <label for="acname">学院名称</label>
                                            <input type="text" class="form-control" id="aschool"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Sweet Wrong</h4>
                                                            <div class="card-content">
                                                                <div class="sweetalert m-t-30">
                                                                    <button class="btn btn-danger btn sweet-wrong">Sweet Wrong</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- /# card -->
                                                </div>
                                            </div>
                                        </div>

                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a>
                    2018</p>
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/quixlab-master/plugins/common/common.min.js"></script>
        <script src="<%=request.getContextPath()%>/quixlab-master/js/custom.min.js"></script>
        <script src="<%=request.getContextPath()%>/quixlab-master/js/settings.js"></script>
        <script src="<%=request.getContextPath()%>/quixlab-master/js/gleek.js"></script>
        <script src="<%=request.getContextPath()%>/quixlab-master/js/styleSwitcher.js"></script>
        <script src="<%=request.getContextPath()%>/myutil/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/myutil/js/jquery-3.4.1.min.js"></script>

        <script src="<%=request.getContextPath()%>/quixlab-master/plugins/sweetalert/js/sweetalert.min.js"></script>
        <script src="<%=request.getContextPath()%>/quixlab-master/plugins/sweetalert/js/sweetalert.init.js"></script>
    </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/8
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <%@include file="../import/css.jsp" %>
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
                                            <label for="name">角色名</label>
                                            <input type="text" class="form-control" id="name"
                                                   placeholder="请输入名称" style="border-radius: 0.5em;width: 500px">
                                        </div>
                                        <div class="checkbox">
                                            <label for="name">分配权限</label></br>
                                            <label>
                                                <input type="checkbox">人员管理&nbsp
                                                <input type="checkbox">学生选课&nbsp
                                                <input type="checkbox">上传课题&nbsp
                                                <input type="checkbox">课题管理&nbsp
                                                <input type="checkbox">角色管理&nbsp
                                            </label>
                                        </div><br/>
                                        <button type="submit" class="btn btn-default">提交</button>
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
    </body>
</html>

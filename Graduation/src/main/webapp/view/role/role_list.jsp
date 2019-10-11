<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/26
  Time: 15:42
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
                                    <h4 class="card-title">角色查询</h4>
                                    <form class="form-inline" role="form">
                                        <div class="form-group">
                                            <label class="sr-only" for="name">名称</label>
                                            <input type="text" class="form-control" id="name" style="border-radius: 0.5em"
                                                   placeholder="请输入名称">
                                        </div>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <button type="submit" class="btn btn-default">提交</button>
                                    </form><br/>
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>产品</th>
                                            <th>付款日期</th>
                                            <th>状态</th>
                                            <th>删除操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="active">
                                            <td>产品1</td>
                                            <td>23/11/2013</td>
                                            <td>待发货</td>
                                            <td><button type="button" class="btn mb-1 btn-info">删除</button></td>
                                        </tr>
                                        <tr class="success">
                                            <td>产品2</td>
                                            <td>10/11/2013</td>
                                            <td>发货中</td>
                                            <td><button type="button" class="btn mb-1 btn-info">删除</button></td>
                                        </tr>
                                        <tr class="warning">
                                            <td>产品3</td>
                                            <td>20/10/2013</td>
                                            <td>待确认</td>
                                            <td><button type="button" class="btn mb-1 btn-info">删除</button></td>
                                        </tr>
                                        <tr class="danger">
                                            <td>产品4</td>
                                            <td>20/10/2013</td>
                                            <td>已退货</td>
                                            <td><button type="button" class="btn mb-1 btn-info">删除</button></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="btn-group" style="position: relative;left: 400px">
                                        <button type="button" class="btn btn-default"
                                                style="background-color: white;border-color:grey;">首页
                                        </button>
                                        <button type="button" class="btn btn-default"
                                                style="background-color: white;border-color:grey;">上一页
                                        </button>
                                        <button type="button" class="btn btn-default"
                                                style="background-color: white;border-color:grey;">下一页
                                        </button>
                                        <button type="button" class="btn btn-default"
                                                style="background-color: white;border-color:grey;">尾页
                                        </button>
                                    </div>
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

        <%--        <script src="<%=request.getContextPath()%>/quixlab-master/plugins/tables/js/jquery.dataTables.min.js"></script>--%>
        <%--        <script src="<%=request.getContextPath()%>/quixlab-master/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>--%>
        <%--        <script src="<%=request.getContextPath()%>/quixlab-master/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>--%>
    </body>
</html>

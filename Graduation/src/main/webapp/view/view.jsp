<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/2
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/myutil/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/myutil/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/myutil/js/jquery-3.4.1.min.js"></script>
    </head>
    <body>
        <ul class="pagination">
            <li><a href="https://www.w3cschool.cn/bootstrap/bootstrap-pagination.html#">&laquo;</a></li>
            <li class="active"><a href="https://www.w3cschool.cn/bootstrap/bootstrap-pagination.html#">1</a></li>
            <li class="disabled"><a href="https://www.w3cschool.cn/bootstrap/bootstrap-pagination.html#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="https://www.w3cschool.cn/bootstrap/bootstrap-pagination.html#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="https://www.w3cschool.cn/bootstrap/bootstrap-pagination.html#">&raquo;</a></li>
        </ul>
    </body>
</html>

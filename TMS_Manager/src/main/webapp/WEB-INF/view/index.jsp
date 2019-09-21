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
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <%@include file="import.jsp"%>
    </head>
    <body class="index">
        <!--导航区域开始-->
        <div id="index_navi">
            <ul id="menu">
                <c:forEach items="${sessionScope.admin.userpriv}" var="priv">
                    <li><a href="${sessionScope.PATH_WAY}/${priv.purl}" class="${priv.pclass}_off"></a></li>
                </c:forEach>
            </ul>
        </div>
    </body>
</html>

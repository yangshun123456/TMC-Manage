<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/16
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">
<!-- Head -->

<head>
    <title>Key Login Form Flat Responsive Widget Template :: W3layouts</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Key Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mydesign/css/style.css" type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <!-- //fonts -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mydesign/css/font-awesome.min.css" type="text/css" media="all">
    <!-- //Font-Awesome-File-Links -->
	
	<!-- Google fonts -->
	<link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">
	<!-- Google fonts -->
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>
<!-- //Head -->
<!-- Body -->

<body>

<section class="main">
	<div class="layer">
		
		<div class="bottom-grid">
			<div class="logo">
				<h1> <a href="login1.jsp"><span class="fa fa-key"></span> Key</a></h1>
			</div>
			<div class="links">
				<ul class="links-unordered-list">
					<li class="active">
						<a href="#" class=""><fmt:message key="login"/> </a>
					</li>
					<li class="">
						<a href="#" class=""><fmt:message key="about"/> </a>
					</li>
					<li class="">
						<a href="#" class=""><fmt:message key="register"/> </a>
					</li>
					<li class="">
						<a href="#" class=""><fmt:message key="contact"/> </a>
					</li>
				</ul>
			</div>
		</div>
		<div class="content-w3ls">
			<div class="text-center icon">
				<span class="fa fa-html5"></span>
			</div>
			<div class="content-bottom">
				<form action="admin/login" method="post">
					<div class="field-group">
						<span class="fa fa-user" aria-hidden="true"></span>
						<div class="wthree-field">
							<input name="acname" id="text1" type="text" value="" placeholder="Username" required>
						</div>
					</div>
					<div class="field-group">
						<span class="fa fa-lock" aria-hidden="true"></span>
						<div class="wthree-field">
							<input name="apassword" id="myInput" type="Password" placeholder="Password">
						</div>
					</div>
					<div class="wthree-field">
						<button type="submit" class="btn"><fmt:message key="submit"/></button>
					</div>
					<ul class="list-login">
						<li class="switch-agileits">
							<label class="switch">
								<input type="checkbox">
								<span class="slider round"></span>
								<fmt:message key="remenber"/>
							</label>
						</li>
						<li>
							<a href="#" class="text-right"><fmt:message key="forgot"/>?</a>
						</li>
						<li class="clearfix"></li>
					</ul>
					<ul class="list-login-bottom">
						<li class="">
							<a href="#" class=""><fmt:message key="create"/></a>
						</li>
						<li class="">
							<a href="#" class="text-right"><fmt:message key="help"/>?</a>
						</li>
						<li class="clearfix"></li>
					</ul>
				</form>
			</div>
		</div>
		<div class="bottom-grid1">
			<div class="links">
				<ul class="links-unordered-list">
					<li class="">
						<a href="#" class=""><fmt:message key="about"/></a>
					</li>
					<li class="">
						<a href="#" class=""><fmt:message key="privacy_policy"/></a>
					</li>
					<li class="">
						<a href="#" class=""><fmt:message key="terms_of_use"/></a>
					</li>
				</ul>
			</div>
			<div class="copyright">
				<p><fmt:message key="language"/>
					<a href="?lang=zh_CN"><fmt:message key="language_ch"/></a>&nbsp&nbsp&nbsp
					<a href="?lang=en_US"><fmt:message key="language_en"/></a>
				</p>
			</div>
		</div>
    </div>
</section>

</body>
<!-- //Body -->
</html>

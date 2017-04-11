<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
%>
<html>
    <head>
        <title>修改密码</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary JavaScript plugins) -->
        <script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <!--//theme-style-->
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
        <script src="js/menu_jquery.js"></script>
        <script src="js/simpleCart.min.js"></script>
<meta charset="utf-8">
</head>
<body>
<!-- header -->
<%@include file="head.jsp"%>
<!---->
<div class="login_sec">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="LoadProduct.action">主页</a></li>
            <li class="active">修改密码</li>
        </ol>
        <h2>修改密码</h2>
        <div class="col-md-6 log">	         		 
            <s:form action="userService!modifyPassword.action"> 
            	<s:hidden name="user.username" value="%{user.username}"></s:hidden>     	
                <input name="user.password" type="text" placeholder="新密码" value="">
                <input name="password" placeholder="确认密码" type="text" value="">
                <input type="submit" value="确定">
            </s:form>				 
        </div>
        <div class="col-md-6 login-right">
            <h3>新账户注册</h3>
            <p>在本书店注册账号,你可以通过本网站找到你想要购买的图书,浏览更多图书, 查看你的账户和购买的图书.</p>
            <a class="acount-btn" href="register.jsp">注册账户</a>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
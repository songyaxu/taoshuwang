<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
%>
<html>
    <head>
        <title>错误信息</title>
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
            <li class="active">错误信息</li>
        </ol>      
        <div class="clearfix"><h2><s:property value="message" /></h2></div>
    </div>
</div>
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
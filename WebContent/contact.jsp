<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>联系我们</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Furnyish Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"> </script>
  <script src="js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
      // Slideshow 1
      $("#slider1").responsiveSlides({
         auto: true,
		 nav: true,
		 speed: 500,
		 namespace: "callbacks",
      });
    });
  </script>
  
</head>
<body>
<!-- header -->
<%@include file="head.jsp"%>
<!---->
<div class="contact">
	 <div class="container">
		 <ol class="breadcrumb">
		  <li><a href="LoadProduct.action">主页</a></li>
		  <li class="active">联系我们</li>
		 </ol>
		 <div class="contact-head">
		 	 <h2>联系方式</h2>
				  <div class="col-md-6 contact-left">
				客户服务</br>
            24小时全国服务热线：400-000-0000</br>
            外呼服务号码：0471-0000000</br>
            客户服务邮箱：TSW_KF@taoshuwang.com</br>
            售后维修邮递信息：xxxxxxx，010010</br>
            联系人：李xx，15700000000。	
				 </div>
				 <div class="col-md-6 contact-right">
				 <div class="logo">
		 			<a href="LoadProduct.action"><img src="images/logo.png" alt=""/></a>			 
				 </div>
                 </br>
                 </br>
         		淘书网（www.xxx.com）在不断发展的过程中将会建设的更好，为了更好地服务，我们将提供送货上门，线下货物检查验收，包您满意。
                给您的购物提供最优质的服务。
				 </div>
				 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>

<%@page import="com.xujie.entity.Address"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>修改收货地址</title>
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
<%!Address address;%>
<%address=(Address)session.getAttribute("address");  %>
<div class="contact">
	 <div class="container">
		 <ol class="breadcrumb">
		  <li><a href="info.jsp">个人账户</a></li>
		  <li class="active">修改收货地址</li>
		 </ol>
		 <div class="contact-head">
		 	 <h2>收货信息</h2>
			  <s:form action="updateAddressAction.action">
				  <div class="col-md-6 contact-left">
				  		<input type="hidden" name="address.addressid" value=<%=address.getAddressid() %>>
				  		<input type="hidden" name="address.userid" value=<%=address.getUserid() %>>
						<input type="text" name="address.receiver" value=<%=address.getReceiver() %> placeholder="收 货 人" required/>
						<input type="text" name="address.zipcode" value=<%=address.getZipcode() %> placeholder="邮政编码" required/>
						<input type="text" name="address.phone" value=<%=address.getPhone() %> placeholder="手    机" required/>
				 </div>
				 <div class="col-md-6 contact-right">
						<input type="text" name="address.area" value=<%=address.getArea() %> placeholder="省 市 区" required/>
						<input type="text" name="address.street" value=<%=address.getStreet() %>  placeholder="街   道" required/>
						<input type="text" name="address.addressdetail" value=<%=address.getAddressdetail() %>  placeholder="详细地址" required/>
						<input type="submit" value="修改"/>
				 </div>
				 <div class="clearfix"></div>
			 </s:form>
		 </div>
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>

<%@page import="com.xujie.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
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
<style type="text/css">
body,td,th {
	font-family: Raleway, sans-serif;
}
</style>
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
  
<meta charset="utf-8">
</head>
<body>
<%! User footuser;%>
<div class="footer-content">
	 <div class="container">
		 <div class="ftr-grids">
			 <div class="col-md-3 ftr-grid">
				 <h4>关于我们</h4>
				 <ul>
					 <li><a href="contact.jsp">> 联系我们</a></li>	
					 <li><a href="feedback.jsp">> 意见反馈</a></li>
					 <li><a href="intruduction.jsp">> 公司简介</a></li>			 
				 </ul>
			 </div>
			 <div class="col-md-3 ftr-grid">
				 <h4>客户服务</h4>
				 <ul>
					 <li><a href="help.jsp">> 帮助</a></li>
					 <li><a href="guide.jsp">> 购买指南</a></li>					 
				 </ul>
			 </div>
			 <div class="col-md-3 ftr-grid">
				 <h4>您的账户</h4>
				 <ul>
				 	 <%
					 	 footuser=(User)session.getAttribute("user"); 
						 if(footuser==null){
					 %>
					 <li><a href="login.jsp">> 个人信息</a></li>
					 <li><a href="login.jsp">> 收货地址</a></li>
					 <li><a href="cart.jsp">> 购物车</a></li>
					 <li><a href="login.jsp">> 订单</a></li>	
					 <%}
						 else{
					 %>	
					 <li><a href="info.jsp">> 个人信息</a></li>
					 <li><a href="ListUAddressAction?userid=<%=footuser.getUserid() %>">> 收货地址</a></li>
					 <li><a href="cart.jsp">> 购物车</a></li>
					 <li><a href="orderInfo.action">> 我的订单</a></li>	
					 <%} %>			 					 
				 </ul>
			 </div>
			 <div class="col-md-3 ftr-grid">
				 <h4>热卖种类</h4>
				 <ul>
					 <li><a href="searchTypeBook!findByStyle.action?style=青春文学">> 青春文学</a></li>
					 <li><a href="searchTypeBook!findByStyle.action?style=计算机网络">> 计算机网络</a></li>
					 <li><a href="searchTypeBook!findByStyle.action?style=工业设计">> 工业设计</a></li>
					 <li><a href="searchTypeBook!findByStyle.action?style=自然科学">> 自然科学</a></li>			 
				 </ul>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<div class="footer">
	 <div class="container">	 
		 <div class="copywrite" align="center">
			 <p>Copyright &copy; 2015.Taoshuwang Company name All rights reserved.</p>
		 </div>			 
		 </div>
	 </div>
</div>
<!---->
</body>
</html>
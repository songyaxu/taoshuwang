<%@page import="com.xujie.entity.Cart"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>我的订单</title>
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
<%! List<Cart> cart;
	double total;
%>
<% cart=(List<Cart>)session.getAttribute("cart");
	total=0;
%>
<div class="cart_main">
	 <div class="container">
			 <ol class="breadcrumb">
		  <li><a href="LoadProduct.action">主页</a></li>
		  <li class="active">我的订单</li>
		 </ol>	
		 <s:if test="#request.listUserOrder.size()==0">
		 <h4>你还没有任何订单赶紧去<a href="LoadProduct.action"><font color="#B8C91B">购物</font></a>吧。</h4>
		 </s:if>
         <s:iterator value="#request.listUserOrder" id="order">		
		 		<div class="cart-header">
				 <div class="cart-sec">
                 		<div class="cart-item cyc">
							 <img src="images/logo.png"/>                      
						</div>
					   <div class="cart-item-info">
							 <h3><font color="#94B52F"><s:property value="#order.bookname"/></font></h3>
							 <h4><span>单价: ¥ </span><s:property value="#order.price"/></h4>
							 <p class="qty">数量 : <s:property value="#order.num"/></p>							
					   </div>
					   		<a class="cpns" href="DetailOrder!detail.action?order.orderid=<s:property value="#order.orderid"/>">查看详情</a>
					   		<s:if test="#order.state == 0">
					   			<a class="cpns" href="payOrder.action?order.orderid=<s:property value="#order.orderid"/>">支付订单</a>
					   			<a class="cpns" href="payOrder!close.action?order.orderid=<s:property value="#order.orderid"/>">取消订单</a>
					   		</s:if>
                            <s:if test="#order.state == 1">
					   			<a class="cpns" href="payOrder!close.action?order.orderid=<s:property value="#order.orderid"/>">取消订单</a>
					   		</s:if>
					   		<s:if test="#order.state == 2">
					   			<a class="cpns" href="payOrder!close.action?order.orderid=<s:property value="#order.orderid"/>">取消订单</a>
					   			<a class="cpns" href="payOrder!recevice.action?order.orderid=<s:property value="#order.orderid"/>">确认收货</a>
					   		</s:if>
                            
					   <div class="clearfix"></div>
						<div class="delivery">
							 <p>淘书网订单号ID:&nbsp;<s:property value="#order.orderid"/> 
							 	&nbsp;&nbsp;下单时间: &nbsp;<s:property value="#order.starttime"/>
							 	&nbsp;&nbsp;订单状态: &nbsp;<s:if test="#order.state == 0">未付款</s:if>
										<s:elseif test="#order.state == 1">未发货</s:elseif>
				                        <s:elseif test="#order.state == 2">等待收货</s:elseif>
				                        <s:elseif test="#order.state == 3">已完成</s:elseif>
				                        <s:elseif test="#order.state == 5">正在申请退款</s:elseif>
				                        <s:else>已关闭 &nbsp;&nbsp;完成时间:&nbsp;<s:property value="#order.endtime"/></s:else>
				                      	<s:if test="#order.state == 3">&nbsp;&nbsp;完成时间:&nbsp;<s:property value="#order.endtime"/></s:if>
                        </p>							 
				        </div>						
				  </div>
			 </div>
		</s:iterator>
	 </div>
</div>
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
 
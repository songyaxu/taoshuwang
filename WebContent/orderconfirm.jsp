<%@page import="com.xujie.entity.Cart"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>订单确认</title>
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
	<form name="form1" action="saveOrder.action" method="post">
	 <div class="container">
			 <ol class="breadcrumb">
		  <li><a href="LoadProduct.action">主页</a></li>
		  <li class="active">订单确认</li>
		 </ol>			
		 <div class="cart-items">
			 <h2>订单确认</h2>
			 <div class="cart-header">
				 <div class="cart-sec">
					   <div class="clearfix">
					   <%if(cart!=null){ %>
			  			<% for(Iterator it = cart.iterator();it.hasNext(); ){
                        Cart curcart = (Cart)it.next();
                        %>
					    <table width="939" border="0">
					       <tr>
					         <td width="458">书名: <%=curcart.getBookname() %></td>
					         <td width="471">作者: <%=curcart.getAuthor() %></td>
				           </tr>
					       <tr>
					         <td>数量: <%=curcart.getSum() %></td>
					         <td>单价: <%=curcart.getPrice() %></td>
					         <%total+= curcart.getSum()*curcart.getPrice();%>
				           </tr>
                            <tr>
					         <td>------------------------------------------------------------</td>
                             <td>------------------------------------------------------------</td>
				           </tr>
				         </table>
				         <%} %>
					   </div>					
				  </div>
			 </div>		
		 </div> 
         <div class="cart-items">
			 <h4>选择收货地址</h4>
			 <div class="cart-header">
				 <div class="cart-sec">
				 	<div class="clearfix">
				 	<s:if test="#request.addresslist.size()==0"><p>您还没有收货地址<a href="addaddress.jsp"><font color="#B8C91B">新增收货地址？</font></a></p></s:if>
				 		<s:iterator value="#request.addresslist" id="address">
					   		<input type="radio" name="order.addressid" value="<s:property value="#address.addressid"/>">
					        	<label for="radio">收货地址:<s:property value="#address.area"/>
					        	 <s:property value="#address.street"/> <s:property value="#address.addressdetail"/>
					        	 邮政编码:<s:property value="#address.zipcode"/> 手机:<s:property value="#address.phone"/> 收件人:<s:property value="#address.receiver"/> 
					        	</label>
					    </s:iterator>
				 	</div>					
				 </div>
			 </div>		
		 </div>
		 <div class="cart-items">
			 <h4>给卖家留言</h4>
			 <div class="cart-header">
				 <div class="cart-sec">
				 	<div class="clearfix">
				 		<textarea name="order.message"cols="155" rows="5"></textarea>
			 	   </div>					
				 </div>
			 </div>		
		 </div>
		 <div class="cart-total">
			 <div class="price-details">
				 <h3>订单详情</h3>
				 <span>图书总价</span>
				 <span class="total"><%=total %></span>
				 <span>折扣</span>
				 <span class="total">---</span>
				 <span>其它</span>
				 <span class="total">---</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <h4 class="last-price">订单总价</h4>
			 <span class="total final"><%=total %></span>
			 <div class="clearfix"></div>
			 <a class="order" href='javascript:document.form1.submit();'>立即下单</a>
		</div>
		<%} %>
	 </div>
	 </form>
</div>
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
 
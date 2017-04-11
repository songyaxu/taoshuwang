<%@page import="com.xujie.entity.Cart"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>购物车</title>
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
  <script type="text/javascript">
  function tosubmit(){
	    var myform=document.getElementById("myform");
	    myform.submit();
	}
  </script>
</head>
<body>
<!-- header -->
<%@include file="head.jsp"%>
<!---->
<%! List<Cart> cart;
	Cart[] cartlist=new Cart[20];
	int i;%>
<% cart=(List<Cart>)session.getAttribute("cart"); %>
<div class="cart_main">
	<form name="form1" action="ConfirmOrderAction.action" method="post">
	 <div class="container">
			 <ol class="breadcrumb">
		  <li><a href="LoadProduct.action">主页</a></li>
		  <li class="active">购物车</li>
		 </ol>			
		 <div class="cart-items">
			 <h2>我的购物车（
			 <%if(cart==null){%>0
			 <%}else{ %>
			 <%=cart.size()%>
			 <%} %>
			 ）</h2>
			 <%if(cart!=null){ i=0;%>
			  <% for(Iterator it = cart.iterator();it.hasNext(); ){
                        Cart curcart = (Cart)it.next();
                        cartlist[i]=curcart;
                        i++;
                        %>
			 <div class="cart-header">
				 <div class="cart-sec">
						<div class="cart-item cyc">
							 <img src="upload/<%=curcart.getImage()%>"/>
						</div>
					   <div class="cart-item-info">
							 <h3><%=curcart.getBookname()%><span>作者: <%=curcart.getAuthor()%></span></h3>
							 <h4><span>¥ </span><%=curcart.getPrice()%></h4>
							 <p class="qty">数量:</p>
							 <input min="1" max="10" type="number" id="quantity" name="quantity<%=curcart.getBookid()%>" value="1" class="form-control input-small">
					   </div>
					   <div class="clearfix"></div>
						<div class="delivery">	
						<a class="cpns" href="RemoveCartAction.action?book.bookid=<%=curcart.getBookid()%>">
						    删除</a>						 
				        </div>						
				  </div>
			 </div>	
               <%         
                 }
			  %>
		 </div>
		 <%}else{ %>
		 <h4>购物车里还没有任何商品赶紧去<a href="LoadProduct.action"><font color="#B8C91B">购物</font></a>吧。</h4>
		 <%} %>
		 <div class="cart-total">
		 	<%if(user!=null&&cart!=null){ %>
		 	 <a class="continue"  href='javascript:document.form1.submit();'>立即购买</a>
			 <%}else if(user==null&&cart!=null){ %>
			  <a class="continue" href="login.jsp">立即购买</a>
			 <% }%>
		</div>
	 </div>
   </form>
</div>
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>

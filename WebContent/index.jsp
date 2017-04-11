<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>淘书网</title>
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
<!-- header -->
<%@include file="head.jsp"%>
<!-- end header-->
<div class="content">
	 <div class="container">
		 <div class="slider">
				<ul class="rslides" id="slider1">
				  <li><img src="images/b2.jpg" alt=""></li>
				  <li><img src="images/b1.jpg" alt=""></li>
				  <li><img src="images/b3.jpg" alt=""></li>
				  <li><img src="images/b4.jpg" alt=""></li>
				</ul>
		 </div>
	 </div>
</div>
<!---->
<div class="new">
	 <div class="container">
		 <h3>新书推荐</h3>
		 <div class="new-products">
		 <s:iterator value="#request.newBook" id="book" status="s">	
		 <div class="new-items">
		 	<s:if test="#s.index==0">
			 <div class="item1">
				 <a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><img src="upload/<s:property value="#book.cover"/>" alt=""/></a>
				 <div class="item-info">
					 <h4><a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><s:property value="#book.name"/></a></h4>
					 <span>作者: <s:property value="#book.author"/></span>
					 <a href="ConfirmSimple.action?book.bookid=<s:property value="#book.bookid"/>">马上购买</a>
				 </div>
			 </div>
			 </s:if>
			 <s:if test="#s.index==3">
			 <div class="item4">
				 <a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><img src="upload/<s:property value="#book.cover"/>" alt=""/></a>
				  <div class="item-info4">
					 <h4><a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><s:property value="#book.name"/></a></h4>
					 <span>作者: <s:property value="#book.author"/></span>
					 <a href="ConfirmSimple.action?book.bookid=<s:property value="#book.bookid"/>">马上购买</a>
				 </div>			 
			 </div>
			 </s:if>
		 	<s:if test="#s.index==1">
			 <div class="item2">			 
				 <div class="item-info2">
					 <h4><a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><s:property value="#book.name"/></a></h4>
					 <span>作者: <s:property value="#book.author"/></span>
					<a href="ConfirmSimple.action?book.bookid=<s:property value="#book.bookid"/>">马上购买</a>
				 </div>
				 <a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><img src="upload/<s:property value="#book.cover"/>" alt=""/></a>
			 </div>
			</s:if>
			</div>		  
		 	<div class="new-items new_last">
			<s:if test="#s.index==4">
			 <div class="item5">	
				 <a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><img src="upload/<s:property value="#book.cover"/>" alt=""/></a>
				 <div class="item-info5">
					 <h4><a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><s:property value="#book.name"/></a></h4>
					 <span>作者: <s:property value="#book.author"/></span>
					 <a href="ConfirmSimple.action?book.bookid=<s:property value="#book.bookid"/>">马上购买</a>
				 </div>	
			 </div>
			</s:if>
		 	<s:if test="#s.index==2">
			 <div class="item3">	
				 <a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><img src="upload/<s:property value="#book.cover"/>" alt=""/></a>
				 <div class="item-info3">
					 <h4><a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><s:property value="#book.name"/></a></h4>
					 <span>作者: <s:property value="#book.author"/></span>
					 <a href="ConfirmSimple.action?book.bookid=<s:property value="#book.bookid"/>">马上购买</a>
				 </div>			 
			 </div>
			</s:if>
			<s:if test="#s.index==5">
			 <div class="item6">	
				 <a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><img src="upload/<s:property value="#book.cover"/>" alt=""/></a>
				 <div class="item-info6">
					 <h4><a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><s:property value="#book.name"/></a></h4>
					 <span>作者: <s:property value="#book.author"/></span>
					 <a href="ConfirmSimple.action?book.bookid=<s:property value="#book.bookid"/>">马上购买</a>
				 </div>			 
			 </div>
			 </s:if>
		 </div>
		 </s:iterator>
		 <div class="clearfix"></div>	
		 </div>
	 </div>		 
</div>
<!---->
<div class="top-sellers">
	 <div class="container">
		 <h3>热卖图书</h3>
		 <div class="seller-grids">
		 	<s:iterator value="#request.hotBook" id="book" status="s">
    			<s:if test="#s.index<4">
             	<div class="col-md-3 seller-grid">
				 	<a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><img src="upload/<s:property value="#book.cover"/>" alt=""/></a>
				 	<h4><a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><s:property value="#book.name"/></a></h4>
				 	<span>作者: <s:property value="#book.author"/></span>
				 	<p>已售: <s:property value="#book.sellsum"/></p>
			 	</div>	
             	</s:if>
			</s:iterator>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!-- foot -->
<%@include file="foot.jsp"%>
<!-- end foot-->
</body>
</html>	
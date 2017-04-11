<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title><s:property value="%{book.name}"/></title>
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
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<!--etalage-->
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>


<!-- //etalage-->
  
</head>
<body>
<!-- header -->
<%@include file="head.jsp"%>
<!---->
<div class="single-sec">
	 <div class="container">
		 <ol class="breadcrumb">
			 <li><a href="LoadProduct.action">主页</a></li>
			 <li class="active">商品详情</li>
		 </ol>
		 <!-- start content -->	
			<div class="col-md-9 det">
				  <div class="single_left">
					 <div class="grid images_3_of_2">
						 <ul id="etalage">
							<li>
								<a href="">
									<img class="etalage_thumb_image" src="upload/<s:property value="%{book.cover}"/>" class="img-responsive" />
									<img class="etalage_source_image" src="upload/<s:property value="%{book.cover}"/>" class="img-responsive" title="" />
								</a>
							</li>
						 </ul>
						 <div class="clearfix"></div>		
				      </div>
				  </div>
				  <div class="single-right">
					 <h3><s:property value="%{book.name}"/></h3>
					 <div class="id"><h4>作者: <s:property value="%{book.author}"/></h4></div>
					  <form action="" class="sky-form">
						     <fieldset>					
							   <section>
							     <div class="rating">
									<input type="radio" name="stars-rating" id="stars-rating-5">
									<label for="stars-rating-5"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-4">
									<label for="stars-rating-4"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-3">
									<label for="stars-rating-3"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-2">
									<label for="stars-rating-2"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-1">
									<label for="stars-rating-1"><i class="icon-star"></i></label>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    </fieldset>
					  </form>
					  <div class="cost">
						 <div class="prdt-cost">
							 <ul>								 
								 <li>售价:</li>
								 <li class="active">¥ <s:property value="%{book.price}"/></li>
								 <a href="ConfirmSimple.action?book.bookid=<s:property value="%{book.bookid}"/>">立即购买</a>
								 <a href="IntoCartAction.action?book.bookid=<s:property value="%{book.bookid}"/>">加入购物车</a>
								 
							 </ul>
						 </div>
						 <div class="clearfix"></div>
					  </div>
					  <div class="item-list">
						 <ul>
							 <li>ISBN: <s:property value="%{book.isbn}"/></li>
							 <li>出版社: <s:property value="%{book.press}"/></li>
							 <li>出版日期: <s:property value="%{book.pubdate}"/></li>
							 <li>版次: <s:property value="%{book.edition}"/></li>
						 </ul>
					  </div>
					  <div class="single-bottom1">
						<h6>销售详情</h6>
						<p class="prod-desc">本产品深受广大用户喜爱。</p>
						<p class="prod-desc">已售 :<s:property value="%{book.sellsum}"/></p>
						<p class="prod-desc">库存 :<s:property value="%{book.sum}"/></p>
					 </div>					 
				  </div>
				  <div class="clearfix"></div>
				  <div class="sofaset-info">
						 <h4><s:property value="%{book.name}"/>的详细内容</h4>
						 <ul>
							 <li>总页数: <s:property value="%{book.totalpages}"/></li>
							 <li>开本: <s:property value="%{book.booksize}"/></li>
							 <li>内容简介: <s:property value="%{book.content}"/></li>
							 <li>目录：<s:property value="%{book.catalog}"/></li>
						 </ul>
				  </div>				  					
		    </div>
			<div class="rsidebar span_1_of_left">		  									 			 
			   </div>
		</div>	     				
		     <div class="clearfix"></div>
	  </div>	 
</div>
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
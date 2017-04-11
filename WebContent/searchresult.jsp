<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String title = request.getParameter("keyword");
%>
<!DOCTYPE HTML>
<html>
<head>
<title>搜索"<%=title%>"的结果</title>
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
  
</head>
<body>
<%@include file="head.jsp"%>
<!--header//-->
<div class="product-model">	 
	 <div class="container">
			<ol class="breadcrumb">
		  <li><a href="LoadProduct.action">主页</a></li>
		  <li class="active">商品</li>
		 </ol>
			<h2>商品列表</h2>			
		 <div class="col-md-9 product-model-sec">	
		 <s:if test="#request.list.size()==0">
		 <div class="product-grid love-grid">
				<h5>很抱歉，没有搜索到任何商品！</h5>
				</div>
		 </s:if><s:else>
		 <s:iterator value="#request.list" id="book">			
		<a href="detailPBook!detail.action?book.bookid=<s:property value="#book.bookid"/>"><div class="product-grid love-grid">
				<div class="more-product"><span></span></div>						
				<div class="product-img b-link-stripe b-animate-go  thickbox">
					<img src='upload/<s:property value="#book.cover"/>' class="img-responsive" alt=""/>
					<div class="b-wrapper">
					<h4 class="b-animate b-from-left  b-delay03">							
					<button class="btns"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>查看详情</button>
					</h4>
					</div>
				</div></a>						
				<div class="product-info simpleCart_shelfItem">
					<div class="product-info-cust">
						<h4><s:property value="#book.name" /></h4>
						<p>作者: <s:property value="#book.author" /></p>
						<span class="item_price">¥<s:property value="#book.price" /></span>
						<input type="text" class="item_quantity" value="1" />
						<table>
						<tr>
							<td>
						<a class="item_add items" href="IntoCartAction.action?book.bookid=<s:property value="#book.bookid"/>">加入购物车</a>
						</td><td><a class="item_add items" href="ConfirmSimple.action?book.bookid=<s:property value="#book.bookid"/>">购买</a>	
							</td>
						</tr>
						</table>
					</div>													
					<div class="clearfix"> </div>
				</div>
                </div>
				</s:iterator>					
				</s:else>
		</div>
		<div class="rsidebar span_1_of_left">
			 <section  class="sky-form">
				 <div class="product_right">
					 <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>图书种类</h4>
					 <div class="tab1">
						 <ul class="place">								
							 <li class="sort">文艺</li>
							 <li class="by"><img src="images/do.png" alt=""></li>
								<div class="clearfix"> </div>
						  </ul>
						 <div class="single-bottom">						
								<a href="searchTypeBook!findByStyle.action?style=小说传记"><p>小说传记</p></a>
								<a href="searchTypeBook!findByStyle.action?style=动漫幽默"><p>动漫幽默</p></a>
								<a href="searchTypeBook!findByStyle.action?style=青春文学"><p>青春文学</p></a>
								<a href="searchTypeBook!findByStyle.action?style=艺术摄影"><p>艺术摄影</p></a>
                                <a href="searchTypeBook!findByStyle.action?style=偶像明星"><p>偶像明星</p></a>
					     </div>
				      </div>						  
					  <div class="tab2">
						 <ul class="place">								
							 <li class="sort">生活</li>
							 <li class="by"><img src="images/do.png" alt=""></li>
								<div class="clearfix"> </div>
						  </ul>
						 <div class="single-bottom">						
								<a href="searchTypeBook!findByStyle.action?style=两性"><p>两性</p></a>
								<a href="searchTypeBook!findByStyle.action?style=家庭"><p>家庭</p></a>
								<a href="searchTypeBook!findByStyle.action?style=旅游"><p>旅游</p></a>
								<a href="searchTypeBook!findByStyle.action?style=美食"><p>美食</p></a>
                                <a href="searchTypeBook!findByStyle.action?style=运动"><p>运动</p></a>
					     </div>
				      </div>
					  <div class="tab3">
						 <ul class="place">								
							 <li class="sort">励志</li>
							 <li class="by"><img src="images/do.png" alt=""></li>
								<div class="clearfix"> </div>
						  </ul>
						 <div class="single-bottom">						
								<a href="searchTypeBook!findByStyle.action?style=励志/成功"><p>励志/成功</p></a>
								<a href="searchTypeBook!findByStyle.action?style=心灵修养"><p>心灵修养</p></a>
								<a href="searchTypeBook!findByStyle.action?style=职场"><p>职场</p></a>
					     </div>
				      </div>
					  <div class="tab4">
						 <ul class="place">								
							 <li class="sort">科技</li>
							 <li class="by"><img src="images/do.png" alt=""></li>
								<div class="clearfix"> </div>
						  </ul>
						 <div class="single-bottom">						
								<a href="searchTypeBook!findByStyle.action?style=科普读物"><p>科普读物</p></a>
								<a href="searchTypeBook!findByStyle.action?style=计算机网络"><p>计算机网络</p></a>
								<a href="searchTypeBook!findByStyle.action?style=工业设计"><p>工业设计</p></a>
								<a href="searchTypeBook!findByStyle.action?style=建筑"><p>建筑</p></a>
                                <a href="searchTypeBook!findByStyle.action?style=自然科学"><p>自然科学</p></a>
					     </div>
				      </div>
					  <div class="tab5">
						 <ul class="place">								
							 <li class="sort">人文社科</li>
							 <li class="by"><img src="images/do.png" alt=""></li>
								<div class="clearfix"> </div>
						  </ul>
						 <div class="single-bottom">						
								<a href="searchTypeBook!findByStyle.action?style=哲学宗教"><p>哲学宗教</p></a>
								<a href="searchTypeBook!findByStyle.action?style=历史"><p>历史</p></a>
								<a href="searchTypeBook!findByStyle.action?style=政治军事"><p>政治军事</p></a>
								<a href="searchTypeBook!findByStyle.action?style=社会科学"><p>社会科学</p></a>
                                <a href="searchTypeBook!findByStyle.action?style=经济"><p>经济</p></a>
					     </div>
				      </div>
                      <div class="tab6">
						 <ul class="place">								
							 <li class="sort">儿童</li>
							 <li class="by"><img src="images/do.png" alt=""></li>
								<div class="clearfix"> </div>
						  </ul>
						 <div class="single-bottom">						
								<a href="searchTypeBook!findByStyle.action?style=科普/百科"><p>科普/百科</p></a>
								<a href="searchTypeBook!findByStyle.action?style=动漫卡通"><p>动漫卡通</p></a>
								<a href="searchTypeBook!findByStyle.action?style=幼儿启蒙"><p>幼儿启蒙</p></a>
								<a href="searchTypeBook!findByStyle.action?style=婴儿读物"><p>婴儿读物</p></a>
                                <a href="searchTypeBook!findByStyle.action?style=少儿期刊"><p>少儿期刊</p></a>
					     </div>
				      </div>
					  
					  <!--script-->
					<script>
						$(document).ready(function(){
							$(".tab1 .single-bottom").slideToggle(300);
							$(".tab2 .single-bottom").hide();
							$(".tab3 .single-bottom").hide();
							$(".tab4 .single-bottom").hide();
							$(".tab5 .single-bottom").hide();
							$(".tab6 .single-bottom").hide();
							
							$(".tab1 ul").click(function(){
								$(".tab1 .single-bottom").slideToggle(300);
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								$(".tab6 .single-bottom").hide();
							})
							$(".tab2 ul").click(function(){
								$(".tab2 .single-bottom").slideToggle(300);
								$(".tab1 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								$(".tab6 .single-bottom").hide();
							})
							$(".tab3 ul").click(function(){
								$(".tab3 .single-bottom").slideToggle(300);
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab1 .single-bottom").hide();
								$(".tab6 .single-bottom").hide();
							})
							$(".tab4 ul").click(function(){
								$(".tab4 .single-bottom").slideToggle(300);
								$(".tab5 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab1 .single-bottom").hide();
								$(".tab6 .single-bottom").hide();
							})	
							$(".tab5 ul").click(function(){
								$(".tab5 .single-bottom").slideToggle(300);
								$(".tab4 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab1 .single-bottom").hide();
								$(".tab6 .single-bottom").hide();
							})
							$(".tab6 ul").click(function(){
								$(".tab6 .single-bottom").slideToggle(300);
								$(".tab4 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab1 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
							})	
						});
					</script>
					<!-- script -->					 
			 </section>
		 </div>				 
	     </div>
	</div>
</div>	
<!---->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>订单详情</title>
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
			 <li><a href="orderInfo.action">我的订单</a></li>
			 <li class="active">订单详情</li>
		 </ol>
		 <!-- start content -->	
			<div class="col-md-9 det">
				  <div class="single-left">
					 <h3><font color="#94B52F"><s:property value="%{order.bookname}"/></font></h3>
					 <div class="id"><h4></h4></div>
					  <div class="cost">
						 <div class="prdt-cost">
							 <ul>								 
								 <li><h4>单价:¥ <s:property value="%{order.price}"/></h4></li>
								 <li><h4>数量:<s:property value="%{order.num}"/></h4></li>
							 </ul>
						 </div>
						 <div class="clearfix"></div>
					  </div>
					  <div class="item-list">
						 <ul>
							 <li>订单号: <s:property value="%{order.orderid}"/></li>
							 <li>订单状态: <s:if test="#order.state == 0">未付款</s:if>
										<s:elseif test="#order.state == 1">未发货</s:elseif>
				                        <s:elseif test="#order.state == 2">等待收货</s:elseif>
				                        <s:elseif test="#order.state == 3">已完成</s:elseif>
				                        <s:elseif test="#order.state == 5">正在申请退款</s:elseif>
				                        <s:else>已关闭 </s:else></li>
							 <li>发货物流: <s:property value="%{order.passport}"/></li>
							 <li>物流单号: <s:property value="%{order.passportno}"/></li>
						 </ul>
					  </div>
					  <div class="single-bottom1">
						<h6>时间</h6>
						<p class="prod-desc">下单时间 :<s:property value="%{order.starttime}"/></p>
						<p class="prod-desc">支付时间 :<s:property value="%{order.paytime}"/></p>
						<p class="prod-desc">完成时间 :<s:property value="%{order.endtime}"/></p>
					 </div>					 
				  </div>
				  <div class="clearfix"></div>
				  <div class="sofaset-info">
						 <h4>收件人信息</h4>
						 <ul>
							 <li>收件人: <s:property value="%{address.receiver}"/></li>
							 <li>省市区: <s:property value="%{address.area}"/></li>
							 <li>街道: <s:property value="%{address.street}"/></li>
							 <li>详细地址: <s:property value="%{address.addressdetail}"/></li>
							 <li>邮政编码: <s:property value="%{address.zipcode}"/></li>
							 <li>手机: <s:property value="%{address.phone}"/></li>
						 </ul>
				  </div>				  					
		    </div>
			<div class="rsidebar span_1_of_left">
                    <section  class="sky-form">
                        <div class="product_right">
                            <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>详细信息</h4>
                            <div class="tab1">
                                <ul class="place">								
                                    <li class="sort">个人信息</li>
                                    <li class="by"><img src="images/do.png" alt=""></li>
                                    <div class="clearfix"> </div>
                                </ul>
                                <div class="single-bottom">		
                                    <a href="info.jsp"><p>查看个人信息</p></a>
                                    <a href="modifyinfo.jsp"><p>修改个人信息</p></a>
									<a href="forgetpassword.jsp"><p>密码修改</p></a>
                                </div>
                            </div>						  
                            <div class="tab2">
                                <ul class="place">								
                                    <li class="sort">收货地址管理</li>
                                    <li class="by"><img src="images/do.png" alt=""></li>
                                    <div class="clearfix"> </div>
                                </ul>
                                <div class="single-bottom">	
                                    <a href="ListUAddressAction?userid=<%=user.getUserid() %>"><p>查看现有收货地址</p></a>
                                    <a href="addaddress.jsp"><p>新增收货地址</p></a>
                                </div>
                            </div>
                            <div class="tab3">
                                <ul class="place">								
                                    <li class="sort">购物车</li>
                                    <li class="by"><img src="images/do.png" alt=""></li>
                                    <div class="clearfix"> </div>
                                </ul>
                                <div class="single-bottom">		
                                    <a href="cart.jsp"><p>查看购物车</p></a>
                                </div>
                            </div>
                            <div class="tab4">
                                <ul class="place">								
                                    <li class="sort">订单</li>
                                    <li class="by"><img src="images/do.png" alt=""></li>
                                    <div class="clearfix"> </div>
                                </ul>
                                <div class="single-bottom">
                                    <a href="orderInfo.action"><p>订单查询</p></a>
                                </div>
                            </div>
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
							});
						</script>
						<!-- script -->					 
				 </section>
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
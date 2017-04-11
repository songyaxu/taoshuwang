<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>收货地址</title>
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
<div class="contact">
	 <div class="container">
		 <ol class="breadcrumb">
		  <li><a href="info.jsp">个人账户</a></li>
		  <li class="active">收货地址</li>
		 </ol>
		 <div class="contact-head">
		 	 <h2>所有收货地址</h2>
				  <div class="col-md-6 contact-left">
				  <s:if test="#request.list.size()==0">
							<h5>您还没有收货地址，点击这里<a href="#">新增收货地址</a>。</h5>
				  </s:if><s:else>
					 <s:iterator value="#request.addresslist" id="address" status="st">	
					 <s:if test="#st.odd">	
						邮政编码: <s:property value="#address.zipcode"/></br>
						手        机: <s:property value="#address.phone"/></br>
						省  市   区: <s:property value="#address.area"/></br>
						街        道: <s:property value="#address.street"/></br>
						详细地址: <s:property value="#address.addressdetail"/></br>
						收  件   人: <s:property value="#address.receiver"/></br></br>
						<h4><a class="cpns" href="locationAddressAction.action?address.addressid=<s:property value="#address.addressid"/>">
						修改</a></h4></br>
					</s:if>
					</s:iterator>
					</s:else>
				 </div>
				 <div class="col-md-6 contact-right">
				 <s:if test="#request.list.size()==0">
					
				  </s:if><s:else>
					 <s:iterator value="#request.addresslist" id="address" status="st">	
					 <s:if test="#st.even">	
						邮政编码: <s:property value="#address.zipcode"/></br>
						手        机: <s:property value="#address.phone"/></br>
						省  市   区: <s:property value="#address.area"/></br>
						街        道: <s:property value="#address.street"/></br>
						详细地址: <s:property value="#address.addressdetail"/></br>
						收  件   人: <s:property value="#address.receiver"/></br></br>
						<h4><a class="cpns" href="locationAddressAction.action?address.addressid=<s:property value="#address.addressid"/>">
						修改</a></h4></br>
					</s:if>
					</s:iterator>
					</s:else>
				 </div>
				 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
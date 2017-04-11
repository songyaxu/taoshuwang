<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>用户注册</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
</head>
<body>
<!-- header -->
<%@include file="head.jsp"%>
<!---->
<div class="container">
	  <ol class="breadcrumb">
		  <li><a href="LoadProduct.action">主页</a></li>
		  <li class="active">账户</li>
		 </ol>
	 <div class="registration">
		 <div class="registration_left">
			 <h2>新用户? <span> 注册一个账户 </span></h2>
			 <!-- [if IE] 
				< link rel='stylesheet' type='text/css' href='ie.css'/>  
			 [endif] -->  
			  
			 <!-- [if lt IE 7]>  
				< link rel='stylesheet' type='text/css' href='ie6.css'/>  
			 <! [endif] -->  
			 <script>
				(function() {
			
				// Create input element for testing
				var inputs = document.createElement('input');
				
				// Create the supports object
				var supports = {};
				
				supports.autofocus   = 'autofocus' in inputs;
				supports.required    = 'required' in inputs;
				supports.placeholder = 'placeholder' in inputs;
			
				// Fallback for autofocus attribute
				if(!supports.autofocus) {
					
				}
				
				// Fallback for required attribute
				if(!supports.required) {
					
				}
			
				// Fallback for placeholder attribute
				if(!supports.placeholder) {
					
				}
				
				// Change text inside send button on submit
				var send = document.getElementById('register-submit');
				if(send) {
					send.onclick = function () {
						this.innerHTML = '...Sending';
					}
				}
			
			 })();
			 </script>
			 <div class="registration_form">
			 <!-- Form -->
				<s:form id="registration_form" action="saveUser!register.action">
					<div>
						<label>
							<input name="user.username" placeholder="用户名:" type="text" tabindex="1" required autofocus>
						</label>
					</div>
					<div>
						<label>
							<input name="user.address" placeholder="地址:" type="text" tabindex="2" required autofocus>
						</label>
					</div>
					<div>
						<label>
							<input name="user.email" placeholder="邮箱:" type="email" tabindex="3" required>
						</label>
					</div>
					<div>
						<label>
							<input name="user.phone" placeholder="手机:" type="text" tabindex="3" required>
						</label>
					</div>					
						<div class="sky_form1">
							<ul>
								<li><label class="radio left"><input type="radio" name="user.sex" value="男" checked=""><i></i>男</label></li>
								<li><label class="radio"><input type="radio" name="user.sex" value="女"><i></i>女</label></li>
								<div class="clearfix"></div>
							</ul>
						</div>
                     <div>
                     
                     <select name="user.check" placeholder="密保问题:" tabindex="4">
                            <option value="你父亲的名字？">你父亲的名字？</option>
                            <option value="你母亲的名字？">你母亲的名字？</option>
                            <option value="你父亲的生日？">你父亲的生日？</option>
                            <option value="你母亲的生日？">你母亲的生日？</option>
                            <option value="你的生日？">你的生日？</option>
                            <option value="你的出生地？">你的出生地？</option>                            
					</select>
                     </div>	
                     <div>
						<label>
							<input name="user.answer" placeholder="密保答案:" type="text" tabindex="4" required>
						</label>
					</div>					
					<div>
						<label>
							<input name="user.password" placeholder="密码:" type="password" tabindex="5" required>
						</label>
					</div>						
					<div>
						<label>
							<input name="password" placeholder="确认密码:" type="password" tabindex="5" required>
						</label>
					</div>	
					<div>
						<input method="register" type="submit" value="注册" id="register-submit">
					</div>
				</s:form>
				<!-- /Form -->
			 </div>
		 </div>
		 <div class="registration_left">
			 <h2>已经有账户</h2>
			 <div class="registration_form">
			 <!-- Form -->
				<form id="registration_form" action="userService!login.action">
					<div>
						<label>
							<input name="user.username" placeholder="用户名:" type="text" tabindex="5" required>
						</label>
					</div>
					<div>
						<label>
							<input name="user.password" placeholder="密码：" type="password" tabindex="6" required>
						</label>
					</div>						
					<div>
						<input method="login" type="submit" value="登录" id="register-submit">
					</div>
					<div class="forget">
						<a href="forgetpassword.jsp">忘记密码？</a>
					</div>
				</form>
			 <!-- /Form -->
			 </div>
		 </div>
		 <div class="clearfix"></div>
	 </div>
</div>
<!-- end registration -->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
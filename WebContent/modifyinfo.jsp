<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>修改个人信息</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

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
		  <li><a href="info.jsp">个人账户</a></li>
		  <li class="active">修改个人信息</li>
		 </ol>
	 <div class="registration">
		 <div class="registration_left">
			 <h2><span>请输入修改的个人信息 </span></h2>
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
				<s:form id="registration_form" action="userService!updateUser.action">
						<input name="user.userid" value=<%=user.getUserid() %> type="hidden">
					<div>
						<label>
							<input name="user.username" value=<%=user.getUsername() %> placeholder="用户名:" type="text" tabindex="1" required autofocus>
						</label>
					</div>
					<div>
						<label>
							<input name="user.address" value=<%=user.getAddress() %> placeholder="地址:" type="text" tabindex="2" required autofocus>
						</label>
					</div>
					<div>
						<label>
							<input name="user.email" value=<%=user.getEmail() %> placeholder="邮箱:" type="email" tabindex="3" required>
						</label>
					</div>
					<div>
						<label>
							<input name="user.phone" value=<%=user.getPhone() %> placeholder="手机:" type="text" tabindex="3" required>
						</label>
					</div>					
						<div class="sky_form1">
							<ul><%if(user.getSex().equals("男")){ %>
								<li><label class="radio left"><input type="radio" name="user.sex" value="男" checked=""><i></i>男</label></li>
								<li><label class="radio"><input type="radio" name="user.sex" value="女"><i></i>女</label></li>
								<%}else{ %>
								<li><label class="radio left"><input type="radio" name="user.sex" value="男" ><i></i>男</label></li>
								<li><label class="radio"><input type="radio" name="user.sex" value="女" checked=""><i></i>女</label></li>
								<%} %>
								<div class="clearfix"></div>
							</ul>
						</div>
                     <div>
                     
                     <select name="user.check" value=<%=user.getCheck() %> placeholder="密保问题:" tabindex="4">
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
							<input name="user.answer" value=<%=user.getAnswer() %> placeholder="密保答案:" type="text" tabindex="4" required>
						</label>
					</div>					
					<div>
						<label>
							<input name="user.password" value=<%=user.getPassword() %> placeholder="密码:" type="password" tabindex="5" required>
						</label>
					</div>							
					<div>
						<input type="submit" value="修改" id="register-submit">
					</div>
				</s:form>
			 </div>
		 </div>
		 <div class="registration_left">
		 </div>
		 <div class="clearfix"></div>
	 </div>
</div>
<!-- end registration -->
<%@include file="foot.jsp"%>
<!---->
</body>
</html>
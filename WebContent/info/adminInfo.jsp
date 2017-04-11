<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>管理员管理首页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body>
		<s:a href="/taoshuwang/LoadProduct.action">主页</s:a>
		<h1>
			<center><font color="red">管理菜单</font></center>
		</h1>
		<center><s:a href="/taoshuwang/authorityAdmin/listUser.action">客户管理</s:a>
		&nbsp;
		<s:a href="/taoshuwang/authorityAdmin/listBook.action">图书管理</s:a>
		&nbsp;
		<s:a href="/taoshuwang/authorityAdmin/listOrder.action">订单管理</s:a>
		&nbsp;
		<s:a href="/taoshuwang/authorityAdmin/adminService!loginOut">退出</s:a>
		</center>
	</body>
</html>

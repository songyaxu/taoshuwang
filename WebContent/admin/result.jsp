<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>状态</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body>
		<%@include file="/info/adminInfo.jsp"%>
		<br />
		<br />
		<br />
		<center>提示：
		<red>
		<s:property value="message" />
		</red></center>
	</body>
</html>

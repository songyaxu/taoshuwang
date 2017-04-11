<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>修改用户资料</title>
	</head>
	<body>
		<%@include file="/info/adminInfo.jsp"%>
		<h1>
			<font color="red"><center>
					修改用户
				</center> </font>
		</h1>
		<s:form action="updateUser">
			<table align="center">
				<tr>
					<td>
						<s:hidden name="user.userid" value="%{user.userid}"></s:hidden>
						<s:hidden name="user.check" value="%{user.check}"></s:hidden>
						<s:hidden name="user.answer" value="%{user.answer}"></s:hidden>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="user.username" value="%{user.username}"
							label="用户名" readonly="true"></s:textfield>

					</td>
				</tr>
				<tr>
					<td>
						<!--<s:password name="user.password" value="%{user.password}" label="密码"></s:password>-->
						<s:textfield name="user.password" value="%{user.password}"
							label="密码"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="user.phone" value="%{user.phone}"
							label="手机号码"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="user.email" value="%{user.email}" label="邮箱地址"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="user.sex" value="%{user.sex}" label="性别"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="user.address" value="%{user.address}" label="地址"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:submit value="修改"></s:submit>
					</td>
				</tr>
			</table>
		</s:form>
	</body>
</html>
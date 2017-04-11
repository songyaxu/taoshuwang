<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户修改密码</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body>
		<h1>
			<font color="red">修改密码</font>
		</h1>
		<s:form action="userService">
			<table>
				<tr>
					<td>
						<s:hidden name="user.userid" value="%{user.userid}"></s:hidden>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield readonly="true" name="user.username"
							value="%{user.username}" label="用户名"></s:textfield>
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
						<s:textfield name="user.email" value="%{user.email}" label="邮箱"></s:textfield>
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
						<s:textfield name="user.check" value="%{user.check}" label="密保问题"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="user.answer" value="%{user.answer}" label="密保答案"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:submit method="updateUser" value="修改"></s:submit>
					</td>
				</tr>
			</table>
		</s:form>
	</body>
</html>

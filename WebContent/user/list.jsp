<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户列表</title>
		<script type="text/javascript">
function del() {
	if (confirm("你确定要删除该用户吗?")) {
		return true;
	}
	return false;
}
</script>
	</head>
	<body>
		<%@include file="/info/adminInfo.jsp"%>
		<h1>
			<font color="red">
				<center> 
					注册用户信息列表 
				</center> </font>
		</h1>
		<table border="1" width="80%" align="center">
			<tr>
				<td> 
					客户编号<br></td>
				<td> 
					客户姓名 
				</td>
                <td> 
					性别
				</td>
				<td> 
					联系电话 
				</td>
				<td> 
					电子邮箱 
				</td>
                <td> 
					地址 
				</td>
				<td>
					删除
				</td>
				<td> 
					修改<br></td>
			</tr>
			<s:iterator value="#request.list" id="us">
				<tr>
					<td>
						<s:property value="#us.userid" />
					</td>
					<td>
						<s:property value="#us.username" />
					</td>
                    <td>
						<s:property value="#us.sex" />
					</td>
					<td>
						<s:property value="#us.phone" />
					</td>
					<td>
						<s:property value="#us.email" />
					</td>
                    <td>
						<s:property value="#us.address" />
					</td>
					<td>
						<s:a href="deleteUser.action?user.userid=%{#us.userid}"
							onclick="return del();">删除</s:a>
					</td>
					<td>
						<s:a href="updatePUser.action?user.userid=%{#us.userid}">更新</s:a>
					</td>
				</tr>
			</s:iterator>
		</table>
	</body>
</html>
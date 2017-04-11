<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>图书列表</title>
<script type="text/javascript">
function del() {
	if (confirm("确定删除图书信息吗?")) {
		return true;
	}
	return false;
}
</script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body>
		<%@include file="/info/adminInfo.jsp"%>
		<h1 align="center">
			<font color="red">
				图书列表
			</font> 
		</h1>
		<center><s:a href="/taoshuwang/book/add.jsp">增加图书</s:a></center>
		<table border="1" width="80%" align="center">
			<tr>
				<td width="9%">
					图书序号
				</td>
				<td width="10%">
					图书名称
				</td>
				<td width="9%">
					图书价格
				</td>
                <td width="8%">
                	已售数量
                </td>
                <td width="9%">
                	图书总数
                </td>
				<td width="16%"> 
					图书一级分类
				</td>
				<td width="14%">
					图书二级分类
				</td>
				<td width="7%">
					删除
				</td>
				<td width="7%">
					更新
				</td>
                <td width="11%">
					详细信息
				</td>
			</tr>
			<s:iterator value="#request.list" id="book">
				<tr>
					<td height="30">
						<s:property value="#book.bookid" />
					</td>
					<td>
						<s:property value="#book.name" />
				  </td>
					<td>
						<s:property value="#book.price" />
					</td>
                    <td>
                    	<s:property value="#book.sellsum" />
                    </td>
                    <td>
                   		<s:property value="#book.sum" />
                    </td>
					<td>
						<s:property value="#book.type" />
					</td>
					<td>
						<s:property value="#book.type2" />
					</td>
					<td>
						<s:a href="deleteBook.action?book.bookid=%{#book.bookid}"
							onclick="return del();">删除</s:a>
					</td>
					<td>
						<s:a href="updatePBook.action?book.bookid=%{#book.bookid}">更新</s:a>
					</td>
                    <td>
						<s:a href="detailPBook.action?book.bookid=%{#book.bookid}">详细信息</s:a>
					</td>
			  </tr>
			</s:iterator>
		</table>
	</body>
</html>

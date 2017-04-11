<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>增加图书</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
<body>
		<%@include file="/info/adminInfo.jsp"%>
		<h1 align="center">
			<font color="red">详细信息</font>
		</h1>
		<s:form theme="simple">
        <table width="911" height="909" border="1" align="center">
		  <tr>
		    <td width="437" height="370"><img src='../upload/<s:property value="%{book.cover}"/>'></td>
		    <td width="458"><table width="459" border="1">
		      <tr>
		        <td height="52">书名:<s:textfield name="book.name" value="%{book.name}"
							label="书名"></s:textfield></td>
	          </tr>
		      <tr>
		        <td height="56">作者:<s:textfield name="book.author" value="%{book.author}"
							label="作者"></s:textfield></td>
	          </tr>
		      <tr>
		         <td height="56">ISBN:<s:textfield name="book.isbn" value="%{book.isbn}"
							label="ISBN"></s:textfield></td>
	          </tr>
		      <tr>
		         <td height="55">推荐指数:<s:textfield name="book.recommend" value="%{book.recommend}"
							label="推荐指数"></s:textfield></td>
	          </tr>
		      <tr>
		        <td height="54">价格:
	              <s:textfield name="book.price" value="%{book.price}"
							label="价格"></s:textfield></td>
	          </tr>
              <tr>
		        <td height="53">已出售数量:
                <s:textfield name="book.sellsum" value="%{book.sellsum}"
							label="已出售数"></s:textfield></td>
	          </tr>
              <tr>
		        <td height="53">图书总数:<s:textfield name="book.sum" value="%{book.sum}"
							label="图书总数"></s:textfield></td>
	          </tr>
              <tr>
              	<td height="53">开本:<s:textfield name="book.booksize" value="%{book.booksize}"
							label="开本"></s:textfield></td>
              </tr>
	        </table></td>
	      </tr>
		  <tr>
		    <td height="44">图书一级分类:
		       <s:textfield name="book.type" value="%{book.type}"
							label="图书一级分类"></s:textfield>
	        </td>
		    <td>图书二级分类:<s:textfield name="book.type2" value="%{book.type2}"
							label="图书二级分类"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="44">出版社:
            <s:textfield name="book.press" value="%{book.press}"
							label="出版社"></s:textfield></td>
		    <td>版次:
           <s:textfield name="book.edition" value="%{book.edition}"
							label="版次"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="44">页数:
            <s:textfield name="book.totalpages" value="%{book.totalpages}"
							label="页数"></s:textfield></td>
		    <td>出版时间:
	        <s:textfield name="book.pubdate" value="%{book.pubdate}"
							label="出版时间"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="230"> 目录:
            <s:textarea name="book.catalog" cols="60" rows="15" value="%{book.catalog}"
							label="目录"></s:textarea></td>
		    <td>内容介绍:
		       <s:textarea name="book.content" cols="60" rows="15" value="%{book.content}"
							label="内容介绍"></s:textarea>
	        </td>
          </tr>
   		</table>
</s:form>
	</body>
</html>
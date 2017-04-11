<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>订单详情</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
<body>
		<%@include file="/info/adminInfo.jsp"%>
		<h1 align="center">
			<font color="red">订单详细信息</font>
		</h1>
		<s:form theme="simple" name="form1" action="orderAdminService!sendPackage.action" >
		<table width="717" border="1" align="center">
		  <tr>
		    <td width="707" align="center">
		    	<s:if test="#request.order.state == 1"><s:submit value="发货"></s:submit></s:if>
		    	<s:if test="#request.order.state == 5"><s:submit value="退款" onClick="form1.action='orderAdminService!refund.action';form1.submit()"></s:submit></s:if>
		    	<s:submit value="关闭订单" onClick="form1.action='orderAdminService!close.action';form1.submit()"></s:submit>
          		</td>
	      </tr>
		</table>
        <table width="911" height="416" border="1" align="center">
		  <tr>
          	<td width="432" height="40">订单号:
            <s:textfield name="order.orderid" value="%{order.orderid}"
							label="订单号" readonly="true"></s:textfield>
            </td>
            <td width="463">图书ID： 
            <s:textfield name="order.bookid" value="%{order.bookid}"
							label="图书ID" readonly="true"></s:textfield>
            </td>
	      </tr>
		  <tr>
		    <td height="44">
	        用户ID：
            <s:textfield name="order.userid" value="%{order.userid}"
							label="用户ID" readonly="true"></s:textfield></td>
		    <td>用户名:
                <s:textfield name="order.username" value="%{order.username}" label="用户名" readonly="true"></s:textfield>
		   </td>
	      </tr>
          <tr>
		    <td height="44">书名:
		        <s:textfield name="order.bookname" value="%{order.bookname}"
							label="书名" readonly="true"></s:textfield>
		    </td>
		    <td>价钱:
            <s:textfield name="order.price" value="%{order.price}"
							label="价钱" readonly="true"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="44">数量:
                <s:textfield name="order.num" value="%{order.num}"
							label="数量" readonly="true"></s:textfield>
		    </td>
		    <td>下单时间：<s:textfield name="order.starttime" value="%{order.starttime}"
							label="下单时间" readonly="true"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="44">支付时间:
                <s:textfield name="order.paytime" value="%{order.paytime}"
							label="数量" readonly="true"></s:textfield>
		    </td>
		    <td>完成时间：<s:textfield name="order.endtime" value="%{order.endtime}"
							label="下单时间" readonly="true"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="44">物流:
                <s:textfield name="order.passport" value="%{order.passport}"
							label="物流"></s:textfield>
		    </td>
		    <td>物流单号：<s:textfield name="order.passportno" value="%{order.passportno}"
							label="物流单号"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="230">收货地址信息:
		      <table width="421" border="1">
		        <tr>
		          <td width="411" height="34">邮政编码：<s:textfield name="address.zipcode" value="%{address.zipcode}"
							label="邮政编码" readonly="true"></s:textfield></td>
	            </tr>
		        <tr>
		          <td height="28">手机号码：<s:textfield name="address.phone" value="%{address.phone}"
							label="手机号码" readonly="true"></s:textfield></td>
	            </tr>
		        <tr>
		          <td height="31">省市区：<s:textfield name="address.area" value="%{address.area}"
							label="省市区" readonly="true"></s:textfield></td>
	            </tr>
		        <tr>
		          <td height="29">街道：<s:textfield name="address.street" value="%{address.street}"
							label="街道" readonly="true"></s:textfield></td>
	            </tr>
		        <tr>
		          <td height="33">详细地址：<s:textfield name="address.addressdetail" value="%{address.addressdetail}"
							label="详细地址" readonly="true"></s:textfield></td>
	            </tr>
		        <tr>
		          <td height="39">收件人：<s:textfield name="address.receiver" value="%{address.receiver}"
							label="收件人" readonly="true"></s:textfield></td>
	            </tr>
            </table></td>
		    <td>
            留言:
            <s:textarea name="order.message" cols="60" rows="15" value="%{order.message}"
							label="留言" readonly="true"></s:textarea>
	        </td>
          </tr>
          <tr>
		    <td height="230">
		    <s:hidden name="order.state" value="%{order.state}"></s:hidden>
		    订单状态:<s:if test="#request.order.state == 0">未付款</s:if>
						<s:elseif test="#request.order.state == 1">未发货</s:elseif>
                        <s:elseif test="#request.order.state == 2">等待收货</s:elseif>
              			<s:elseif test="#request.order.state == 3">已完成</s:elseif>
                        <s:elseif test="#request.order.state == 5">申请退款</s:elseif>
                        <s:else>已关闭</s:else></td>
		    <td>
            评论:
            <s:textarea name="order.commentid" cols="60" rows="15" value="%{order.commentid}"
							label="留言" readonly="true"></s:textarea>
	        </td>
          </tr>
   		</table>
</s:form>
	</body>
</html>
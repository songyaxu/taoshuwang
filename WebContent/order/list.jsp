<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>图书销售列表</title>
<script type="text/javascript">					
function judgeRadioClicked()
{
	var radios = document.getElementsByName("RadioGroup1");
	for(var i=0;i<radios.length;i++)
	{ 
		if(radios[i].checked)
		{
			if(i-1==-1)
			{
				var url="/taoshuwang/authorityAdmin/listOrder.action";
	        	window.location.href=url;
			}
			else
			{
				var url="/taoshuwang/authorityAdmin/listOrderByState.action?state="+(i-1);
	        	window.location.href=url;
			}
		} 
	} 
}
</script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body>
		<%@include file="/info/adminInfo.jsp"%>
		<h1>
			<font color="red"><center>
					图书销售列表
		  </center> </font>
		</h1>
          <p align="center">订单状态选择：
            <label>
              <input name="RadioGroup1" type="radio" id="RadioGroup1_0" value="0" onClick="judgeRadioClicked()">
              全部</label>
            <label>
              <input type="radio" name="RadioGroup1" value="1" id="RadioGroup1_1" onClick="judgeRadioClicked()">
              未付款</label>
             <label>
              <input name="RadioGroup1" type="radio" id="RadioGroup1_0" value="2" onClick="judgeRadioClicked()">
              未发货</label>
            <label>
              <input type="radio" name="RadioGroup1" value="3" id="RadioGroup1_1" onClick="judgeRadioClicked()">
              等待收货</label>
              <label>
              <input name="RadioGroup1" type="radio" id="RadioGroup1_0" value="4" onClick="judgeRadioClicked()">
              已完成</label>
            <label>
              <input type="radio" name="RadioGroup1" value="5" id="RadioGroup1_1" onClick="judgeRadioClicked()">
              已关闭</label>
              <label>
              <input type="radio" name="RadioGroup1" value="6" id="RadioGroup1_1" onClick="judgeRadioClicked()">
             申请退款</label>
          </p>
<table border="1" width="80%" align="center">
	<tr>
				<td width="10%">订单号</td>
				<td width="11%">书名</td>
				<td width="9%">用户名</td>
				<td width="5%">数量</td>
				<td width="9%">价钱</td>
				<td width="11%">下单时间</td>
				<td width="26%">留言</td>
				<td width="8%">状态</td>
                <td width="5%">管理</td>
				<td width="6%">详情</td>
			</tr>
			<s:iterator value="#request.list" id="order">
				<tr>
					<td>
						<s:property value="#order.orderid" />
					</td>
					<td>
						<s:property value="#order.bookname" />
					</td>
					<td>
						<s:property value="#order.username" />
					</td>
					<td>
						<s:property value="#order.num" />
					</td>
                    <td>
						<s:property value="#order.price" />
					</td>
					<td>
						<s:property value="#order.starttime" />
					</td>
					<td>
						<s:property value="#order.message" />
					</td>
					<td>
						<s:if test="#request.order.state == 0">未付款</s:if>
						<s:elseif test="#request.order.state == 1">未发货</s:elseif>
                        <s:elseif test="#request.order.state == 2">等待收货</s:elseif>
                        <s:elseif test="#request.order.state == 3">已完成</s:elseif>
                        <s:elseif test="#request.order.state == 5">申请退款</s:elseif>
                        <s:else>已关闭</s:else>
					</td>
                    <td>
						<s:a href="updatePOrder.action?order.orderid=%{#order.orderid}">管理</s:a>
					</td>
                    <td>
						<s:a href="detailPOrder.action?order.orderid=%{#order.orderid}">详情</s:a>
					</td>
				</tr>
			</s:iterator>
		</table>
	</body>
</html>
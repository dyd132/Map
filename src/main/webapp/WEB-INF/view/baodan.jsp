<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/js/index.css" type="text/css"></link>
 <script type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>

</head>
<body background="<%=request.getContextPath()%>/picture/14.jpg">
<div style="margin: 200px;"></div>
	<center>
	<h1>投保人详细信息资料</h1>
	<table style="width: 800px;">
		<tr>
			<td>投保人姓名</td>
			<td>投保人身份证号</td>
			<td>投保人手机号</td>
			<td>投保时间</td>
			<td>保单到期时间</td>
			<td>车牌号</td>
		</tr>
		<c:forEach items="${list}" var="q">
			<tr>
			<td>${q.tou_name}</td>
			<td>${q.idcard}</td>
			<td>${q.phone}</td>
			<td>${q.startdate}</td>
			<td>${q.enddate}</td>
			<td>${q.chepai}</td>
		</tr>
		</c:forEach>
	</table>
	</center>
</body>
</html>
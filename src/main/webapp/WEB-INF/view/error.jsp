<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>错误信息</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
	<script src="<%=request.getContextPath() %>/res/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/bootstrap/bootstrap.min.js"></script>
 <link href="<%=request.getContextPath() %>/bootstrap/UAform.css" rel="stylesheet">
</head>
<style type="text/css">
.s{color:#737357;}
.s:hover{color:#005bac;}


</style>
<body>
<center>
<div>
		<br/>
		<br/><br/>
		<br/><br/>
		<p style="width: 400px;height:200px;padding-top: 50px;padding-left: 130px;font-size: 16px;background: no-repeat url('<%=request.getContextPath()%>/picture/123.gif');">输入的信息有误！！请输入正确的信息。。......</p>
	
</div>
	<p><a href="<%=request.getContextPath() %>/check.jsp" style="font-size: 18px; text-decoration: none;" class="s"  >>>重新查询</a></p>
</center> 


</body>
</html>

 




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>已存在报案</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
	<script src="<%=request.getContextPath() %>/res/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/bootstrap/bootstrap.min.js"></script>
 <link href="<%=request.getContextPath() %>/bootstrap/UAform.css" rel="stylesheet">
</head>
<style type="text/css">
.a{color:#737357;}
.a:hover{color:#005bac;}


</style>
<body>
<center>
<div>
		<br/>
		<br/>
		<p style="width: 400px;height:170px;padding-top: 50px;padding-left: 130px;font-size: 16px;background: no-repeat url('<%=request.getContextPath()%>/image/there.png');">您已经成功报案,正在处理您的报案业务,请勿多次报案....</p>
	
</div>
	<p><a href="#" style="font-size: 18px; text-decoration: none;"  class="a"  data-toggle="modal" data-target="#myModal">>>查看理赔进度</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=request.getContextPath() %>/index.jsp" class="a" style="font-size: 18px; text-decoration: none;">>>返回主页面</a></p>
</center> 

<!-- 按钮触发模态框 -->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<br/><br/><br/><br/><br/><br/>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					理赔进度
				</h4>
			</div>
			<div class="modal-body">
			<table  id="proTab" class="table table-bordered table-hover">
					<tr class="seltProdTr">
						<td>身份证:</td>
						<td>${reportbyIdCard.rep_identity }</td>
					</tr>
					<tr class="seltProdTr">
						<td>保单号:</td>
						<td>${reportbyIdCard.rep_policy_id }</td>
					</tr>
					<tr class="seltProdTr">
						<td>受保人:</td>
						<td>${reportbyIdCard.rep_insured }</td>
					</tr>
					<tr class="seltProdTr">
						<td>报案时间:</td>
						<td>${reportbyIdCard.rep_date}</td>
					</tr>
					<c:if test="${reportbyIdCard.rep_state ==1}">
					<tr class="seltProdTr">
						<td>理赔进程:</td>
						<td>正在紧急处理当中.......</td>
					</tr>
					</c:if>
				</table>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>
</html>
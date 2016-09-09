<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>理赔结束</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
	<script src="<%=request.getContextPath() %>/res/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/bootstrap/bootstrap.min.js"></script>
 <link href="<%=request.getContextPath() %>/bootstrap/UAform.css" rel="stylesheet">
</head>
<body>
<center>
<br/><br/><br/><br/><br/><br/>
	  <table  id="proTab" class="table table-bordered table-hover" style="width: 800px;" >
					<tr class="seltProdTr">
						<th colspan="11">理赔成功</th>
					</tr>
					<tr class="seltProdTr">
						<td>身份证:</td>
						<td>${reportByUserId.rep_identity }</td>
					</tr>
					<tr class="seltProdTr">
						<td>保单号:</td>
						<td >${reportByUserId.rep_policy_id }</td>
					</tr>
					<tr class="seltProdTr">
						<td>受保人:</td>
						<td >${reportByUserId.rep_insured }</td>
					</tr>
					<tr class="seltProdTr">
						<td>报案时间:</td>
						<td >${reportByUserId.rep_date }</td>
					</tr>
					<tr class="seltProdTr" >
						<td>出事时间:</td>
						<td >${reportByUserId.rep_happened_date }</td>
					</tr>
					<tr class="seltProdTr" >
						<td>出事地点:</td>
						<td >${reportByUserId.rep_happened_place }</td>
					</tr>
					<tr class="seltProdTr">
						<td>出事原因:</td>
						<td >${reportByUserId.rep_happened_reason }</td>
					</tr>
					<tr class="seltProdTr">
						<td>理赔进程:</td>
						<td id="5" class="w">理赔成功</td>
					</tr>
					<tr class="seltProdTr">
						<td colspan="11">
							<a href="reset.do?user_id=${reportByUserId.user_id}" class="btn b tn-primary btn-sm">进行新的理赔</a>
							<a href="http://localhost:8080/CarInsurance" class="btn btn-primary btn-sm">返回首页</a>
						</td>
					</tr>
				</table>
    </div>
</center>

</body>
</html>
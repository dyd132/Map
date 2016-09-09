<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/js/index.css" type="text/css"></link>

<%-- <script type="text/javascript">
	function check(){
			 name=$("#tou_name").val();
			 phone=$("#phone").val();
			alert(phone)
			$.ajax({
	  			url:"<%=request.getContextPath()%>/cha/check.do",
	  			type:"post",
	  			data:$("#tou").serialize(),
	  			dataType:"json",
	  			success:function(data){
			  				for(var i in data){
			  					a=data[i].tou_name;
			  					b=data[i].phone;
			  					alert(a+b)
			  				}
	  				location.href="cha/qucha.do";	
	  					
	  			}
	  		});
	}
</script>
 --%>


</head>
 
<body background="picture/14.jpg">
	<div style="margin: 200px;"></div>
	<center>
  		<h1>查保单</h1>
	<form id="tou" action="<%=request.getContextPath()%>/cha/check.do" method="post">
  		<table style="width: 500px;">
  			<tr>
  				<td>投保人</td>
  				<td>
  					<input type="text" id="tou_name" name="tou_name"/>
  				</td>
  			</tr>
  			<tr>
  				<td>手机号</td>
  				<td>
  					<input type="text" name="phone" id="phone"/>
  				</td>
  			</tr>
  			<tr>	
  				<td colspan="10">
  					<input type="submit" value="查询" />
  					<input type="reset" value="重置"/>
  				</td>
  			</tr>
  		</table>
 	</form>
</center>













</body>
</html>
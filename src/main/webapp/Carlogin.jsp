<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
<form action="<%=request.getContextPath()%>/cars/carlogin.do">
	<table>
		<tr>
			<td>username:</td>
		</tr>
		<tr>
			<td><input type="text" name="user_name"/></td>
		</tr>
		<tr>
			<td>password:</td>
		</tr>
		<tr>
			<td><input type="text" name="user_pwd"/></td>
		</tr>
		<tr>
			<td colspan="11">
				<input type="submit" value="login"/>
				<input type="reset" value="reset"/>
			</td>
		</tr>
	</table>
</form>	
</center>
</body>
</html>
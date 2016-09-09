<%@page import="javax.mail.Session"%>
<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/select.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jQuery-shopping.js"></script>
<script type="text/javascript">
	$(function(){
				$.ajax({
					url:"<%=request.getContextPath()%>/store/findinsurance.do",
					type:"post",
					dataType:"json",
					success:function(obj){
						for(var i in obj){
							if(obj[i].au_suggest==0){
								var suggest="可选择险";
							}else{
								suggest="必交险"
							}
							$("#insurance").append("<tr class='warning'><td>"+obj[i].au_id+"</td><td>"+obj[i].au_name+"</td><td>"+obj[i].au_disc+"</td><td>"+obj[i].au_price+"</td><td>"+suggest+"</td><td><input type='button' class='up' value='购买'/><input type='hidden' value='"+obj[i].au_id+"'/><input type='hidden' value='"+obj[i].au_price+"'/><input type='button' class='gw' value='加入购物车'/></td></tr>")
						}
					}
				})	
				
				
				$(".up").live('click',function(){
					var id=$(this).next().val();
					var price=0;
					price=$(this).next().next().val();
					if(id!=10){
						if(confirm("用户你好,交强险是必交险,欲购买必须购买[交强险]"+confirm("是否继续购买?"))){
							var	 monry=0;
							monry=eval("("+price+")")+1111;
							alert(monry);
							$.ajax({
									url:"<%=request.getContextPath()%>/store/addorder.do",
									type:"post",
									data:{monry:monry},
									dataType:"json",
									success:function(obj){
										if(obj.flag){
											alert("订单以保存")
										}else{
											alert("订单失败")
										}
									}
							})
						}
					}
				})
				
				
				 $(".gw").live('click',function(){
					var gid=$(this).prev().prev().val();
					alert(gid)
					location.href="<%=request.getContextPath()%>/store/buysession.do?id="+gid;
					<%-- $.ajax({
						url:"<%=request.getContextPath()%>/store/addshoping.do",
						type:"post",
						data:{gid:gid},
						dataType:"json",
						success:function(obj){
							if(obj.flag){
								alert("加入购物车成功")
							}else{
								alert("失败")
							}
						}
				}) --%>
				}) 
			 	$("#ck").click(function(){
						location.href="<%=request.getContextPath()%>/store/seegw.do";			
				}) 
				
				/*  $('.Q-buy-btn').shoping(); //调用shoping函数 */
	})
</script>

</head>
<body>
		 <pre class="prettyprint     linenums"><h4 style="color: red">
			<% String id=(String)session.getAttribute("suggesr");
				String name="";
				if(id.equals("1")){
					name="新用户";
				}else{
					name="老用户";
				}
			%> 
		尊敬的<%=name%>你好,你以登录成功,以下是本公司的车险详情<input class="btn btn-info" type="button" id="ck" value="查看购物车" style="float: right;"></h4> </pre>
		<table id="insurance" class="table  table-striped table-bordered table-condensed">
			<tr class="danger">
				<th colspan="10"><center>具体车险情况</center></th>
			</tr>
			<tr class="warning">
				<td>保险ID</td>
				<td>保险类型</td>
				<td>保险类型描述</td>
				<td>保险价格</td>
				<td>是否是强交险</td>
				<td>操作</td>
			</tr>
		</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
	<script src="<%=request.getContextPath() %>/res/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/bootstrap/bootstrap.min.js"></script>
    <link href="<%=request.getContextPath() %>/bootstrap/UAform.css" rel="stylesheet">
</head>
<script type="text/javascript">
	
</script>
<style type="text/css">
.ass{color:#737357;}
.ass:hover{color:#005bac;}

.qss{
	color:#005bac;
}
.qss:hover{
	color:#ffffff;
	background-color:#005bac;
}
body{
	text-align: center;
	width: 1350px;
	height:800px;
}
</style>
<body >
<div style="width:1350px;height:170px; background-image:url('<%=request.getContextPath() %>/image/f.png');">
	<p style="font-family: '楷体';color: white; padding-top: 15px; padding-left: 10px; ">个人用户 : 登陆 或  注册 | 个人入口   <span style="float: right; margin-right: 150px;">   东哥保险: 财产保险  | 人寿保险  | 资产管理</span></p>
</div>
<a href="<%=request.getContextPath()%>/cars/claims.do" class="btn btn-lg btn-info">进行理赔</a>
<a href="<%=request.getContextPath()%>/cars/claimsjin.do" class="btn btn-lg btn-success">查询理赔进度理赔</a>
<div style="width: 100%;height:100%;">
	
	<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
			<img src="<%=request.getContextPath() %>/images/q.png" alt="First slide">
		</div>
		<div class="item">
			<img src="<%=request.getContextPath() %>/images/qq.png" alt="Second slide">
		</div>
		<div class="item">
			<img src="<%=request.getContextPath() %>/images/qqq.png" alt="Third slide">
		</div>
		<div class="item">
			<img src="<%=request.getContextPath() %>/images/qqqq.png" alt="Four slide">
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="carousel-control left" href="#myCarousel"-
	   data-slide="prev">&lsaquo;</a>
	<a class="carousel-control right" href="#myCarousel" 
	   data-slide="next">&rsaquo;</a>
</div> 
</div>
</body>
</html>

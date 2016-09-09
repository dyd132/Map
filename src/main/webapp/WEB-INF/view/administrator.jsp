<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>大西洋车险管理平台</title>
<jsp:include page="/include/bootstrap.jsp"></jsp:include>
</head>
<body>
	 <header>
	<div class="container-fluid navbar-fixed-top bg-primary">
		<ul class="nav navbar-nav  left">
			<li class="text-white h4">&nbsp;&nbsp;&nbsp;&nbsp;<span
				class="glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;<b>大西洋车险管理平台</b>
			</li>
		</ul>
		<ul class="nav navbar-nav nav-pills right ">
			<li class="bg-warning "><a href="#"><span
					class="glyphicon glyphicon-tasks"></span><span class="badge">1</span></a>
			</li>
			<li class="bg-success"><a href="#"><span
					class="glyphicon glyphicon-envelope"></span><span class="badge">2</span></a>
			</li>
			<li class="bg-danger"><a href="#"><span
					class="glyphicon glyphicon-bell"></span></a></li>
			<li class="bg-info dropdown"><a class="dropdown-toggle" href="#"
				data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>&nbsp;<span>系统管理员</span><span
					class="caret"></span>
			</a>
				<ul class="dropdown-menu dropdown-menu-right">
					<li class="text-center"><a href="#"><span
							class="text-primary">账号设置</span></a></li>
					<li class="text-center"><a href="#"><span
							class="text-primary">消息设置</span></a></li>
					<li class="text-center"><a href="#"><span
							class="text-primary">帮助中心</span></a></li>
					<li class="divider"><a href="#"></a></li>
					<li class="text-center"><a
						href="http://localhost:8080/CarInsurance/login.html"><span
							class="text-primary">退出</span></a></li>
				</ul></li>
		</ul>
	</div>
	</header> 

	<div class="container-fluid">
		<div class="row ">
			<!--左侧导航开始-->
			<div class="col-xs-2 bg-blue">
				<br />
				<div class="panel-group sidebar-menu" id="accordion"
					aria-multiselectable="true">
					<div class="panel panel-default menu-first menu-first-active">
						<a data-toggle="collapse" data-parent="#accordion"
							href="index.html" aria-expanded="true"
							aria-controls="collapseOne"> <i class="icon-home icon-large"></i>
							主页
						</a>
					</div>
					<div class="panel panel-default menu-first">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne" aria-expanded="true"
							aria-controls="collapseOne"> <i
							class="icon-user-md icon-large"></i> 用户管理
						</a> </a>

						<div id="collapseOne" class="panel-collapse collapse ">
							<ul class="nav nav-list menu-second">
								<li><a href="<%=request.getContextPath()%>/carstore/datagrid.do"><i class="icon-user"></i>
										用户信息</a></li>
								<li><a href="<%=request.getContextPath()%>/carstore/lookCharts.do"><i class="icon-edit"></i>
										查看图表</a></li>
								<li><a href="#"><i class="icon-trash"></i>阿斯顿廷</a></li>
								<li><a href="#"><i class="icon-list"></i>阿斯顿廷</a></li>
							</ul>
						</div>
					</div>
					<div class="panel panel-default menu-first">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo"> <i
							class="icon-book icon-large"></i> 理赔管理
						</a> </a>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<ul class="nav nav-list menu-second">
								<li><a href="#"><i class="icon-user"></i> 理赔进度</a></li>
								<li><a href="#"><i class="icon-edit"></i> 阿斯顿廷</a></li>
								<li><a href="#"><i class="icon-trash"></i> 阿斯顿廷</a></li>
								<li><a href="#"><i class="icon-list"></i> 阿斯顿廷</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
			<!--左侧导航结束-->
			<!----------------------------------------------------------------------------------------------------->
			<!--右侧内容开始-->
			<div class="col-xs-10">
				<br />
				<ol class="breadcrumb">
					<li><a href="index.html"><span
							class="glyphicon glyphicon-home"></span>&nbsp;后台首页</a></li>
					<li class="active">理赔管理 - 进度</li>
				</ol>
				<form id="rep" >
					<table id="proTab"
						class="table table-bordered table-striped text-center bg-info">
						<thead>
							<tr>
								<th colspan="22">查看用户报案信息</th>
							</tr>
						</thead>
						<tbody>
							<tr class="seltProdTr">
								<!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
								<td>用户id</td>
								<td>保单号</td>
								<td>受保人</td>
								<td>身份证信息</td>
								<td>报案时间</td>
								<td>是否进行处理</td>
								<td>操作</td>
							</tr>
							<c:forEach items="${report }" var="g">
								<tr class="seltProdTr">
									<td>${g.user_id }</td>
									<td>${g.rep_policy_id }</td>
									<td>${g.rep_insured }</td>
									<td>${g.rep_identity }</td>
									<td>${g.rep_date }</td>
									<c:if test="${g.rep_state==1 }">
										<td>
										<input type="checkbox" value="${g.user_id }#y"
											class="a" />是
										 <input type="checkbox" value="${g.user_id }#n"
											class="a" />否
											
										</td>
									</c:if>
									<c:if test="${g.rep_state==2 }">
										<td>是</td>
										<td>
											<a href="javascript:void(0);"
									onclick="SelectCar('${g.user_id}')"
									class="btn btn-primary btn-sm">查看车损材料</a>
										</td>
									</c:if>
									<c:if test="${g.rep_state==-1 }">
										<td>否
										<td></td>
										</td>
									</c:if>
									<c:if test="${g.rep_state==3 }">
										<td>已通过理赔正在处理中
										<td></td>
										</td>
									</c:if>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="11">
									<button class="btn btn-primary btn-sm" onclick="Sure()">确定</button>
								</td>
							</tr>
						</tbody>
				</form>
					</table>
				
				
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">
									<h3>车损图片</h3>
								</h4>
							</div>
							<div class="modal-body">
								<table id="proTab" class="table table-bordered table-hover">
									<div id="myCarousel" class="carousel slide">
										<!-- 轮播（Carousel）指标 -->
										<!-- 轮播（Carousel）项目 -->
										<div class="carousel-inner" id="qqq"></div>
										<!-- 轮播（Carousel）导航 -->
										<a class="carousel-control left" href="#myCarousel"
											data-slide="prev">&lsaquo;</a> <a
											class="carousel-control right" href="#myCarousel"
											data-slide="next">&rsaquo;</a>
									</div>
									<tr>
										<td>
										<button class="btn btn-primary btn-sm" onclick="Pass()">通过</button>
										<button class="btn btn-primary btn-sm" >不通过</button>
										</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
			</div><!-- 右侧内容结束 -->
	<footer class="bg-primary navbar-fixed-bottom">
		<p class="text-center text-white">版权所有&copy;YYGRYCP2016-09-01</p>
	</footer>
	<script type="text/javascript">
function SelectCar(ss){
	$('#myModal').modal("show");
	$.ajax({
		url:"<%=request.getContextPath()%>/cars/getImages.do",
		type:"post",
		dataType:"json",
		data:{sd:ss},
		success:function(obj)
		{
			if(obj=="")
			{
				$("#qqq").empty();
				$("#qqq").append("用户还没有提交车损图");
			}
		else{
			for(var i in obj )
			{
				if(i==0)
					{
						$("#qqq").empty();
						$("#qqq").append("<div class='item active'><img src='"+obj[i].cd_image_url+"'></div>")
					}
				else
					{
						$("#qqq").append("<div class='item'><img src='"+obj[i].cd_image_url+"'></div>");
					}
			}
		}
		}
		
		});
	}

	function Sure(){
				var s="";
				$(".a:checked").each(function(){
					s+=","+$(this).val();
				});
				s=s.substring(1);
			if(s!=""){
				$.ajax({
					url:"<%=request.getContextPath()%>/cars/adminpass.do",
					type:"post",
					data:{userid:s},
					async:false,
					dataType:"json",
					success:function(obj){
						if(obj)
						{
						alert("设置成功提示用户提交材料!!!!");
						}
					}
				});
				}
			else{
				alert("已经设置成功等待用户提交材料");
			}
	
		}
		
	function Pass(){
		if(confirm("确定同意理赔"))
		{
			 	location.href="<%=request.getContextPath()%>/cars/wancheng.do";
		}
	}	
</script>
</body>
</html>
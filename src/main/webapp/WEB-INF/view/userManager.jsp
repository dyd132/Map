<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>大西洋车险管理平台</title>
<jsp:include page="/include/bootstrap.jsp"></jsp:include>
<script type="text/javascript">
	

</script>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-paginator.js"></script>
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
			<li class="bg-warning "><a href="javascript:void(0);"><span
					class="glyphicon glyphicon-tasks"></span><span class="badge">1</span></a>
			</li>
			<li class="bg-success"><a href="javascript:void(0);"><span
					class="glyphicon glyphicon-envelope"></span><span class="badge">2</span></a>
			</li>
			<li class="bg-danger"><a href="javascript:void(0);"><span
					class="glyphicon glyphicon-bell"></span></a></li>
			<li class="bg-info dropdown"><a class="dropdown-toggle" href="javascript:void(0);"
				data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>&nbsp;<span>系统管理员</span><span
					class="caret"></span>
			</a>
				<ul class="dropdown-menu dropdown-menu-right">
					<li class="text-center"><a href="javascript:void(0);"><span
							class="text-primary">账号设置</span></a></li>
					<li class="text-center"><a href="javascript:void(0);"><span
							class="text-primary">消息设置</span></a></li>
					<li class="text-center"><a href="javascript:void(0);"><span
							class="text-primary">帮助中心</span></a></li>
					<li class="divider"><a href="javascript:void(0);"></a></li>
					<li class="text-center"><a
						href="http://localhost:8080/CarInsurance/login.html"><span
							class="text-primary">退出</span></a></li>
				</ul></li>
		</ul>
	</div>
	</header>

	<section>
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

						<div id="collapseOne" class="panel-collapse collapse in">
							<ul class="nav nav-list menu-second">
								<li><a href="<%=request.getContextPath()%>/carstore/datagrid.do"><i class="icon-user"></i>
										用户信息</a></li>
								<li><a href="<%=request.getContextPath()%>/carstore/lookCharts.do"><i class="icon-edit"></i>
										查看图表</a></li>
								<li><a href="javascript:void(0);"><i class="icon-trash"></i>阿斯顿廷</a></li>
								<li><a href="javascript:void(0);"><i class="icon-list"></i>阿斯顿廷</a></li>
							</ul>
						</div>
					</div>
					<div class="panel panel-default menu-first">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo"> <i
							class="icon-book icon-large"></i> 理赔管理
						</a> </a>
						<div id="collapseTwo" class="panel-collapse collapse">
							<ul class="nav nav-list menu-second">
								<li><a
									href="http://localhost:8080/CarInsurance/cars/administrator.do"><i
										class="icon-user"></i> 理赔进度</a></li>
								<li><a href="javascript:void(0);"><i class="icon-edit"></i> 阿斯顿廷</a></li>
								<li><a href="javascript:void(0);"><i class="icon-trash"></i> 阿斯顿廷</a></li>
								<li><a href="javascript:void(0);"><i class="icon-list"></i> 阿斯顿廷</a></li>
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
					<li class="active">系统管理 - 表格</li>
				</ol>
				<div class="input-group line left">
					<span class="input-group-addon" id="basic-addon2"><span
						class="glyphicon glyphicon-search"></span></span> <input type="text"
						class="form-control" id="search" value="${search}"
						placeholder="输入用户名搜索" aria-describedby="basic-addon2">
				</div>
				<a href="javascript:void(0);" onclick="Search()"
					class=" btn btn-primary "><span
					class="glyphicon glyphicon-search"></span></a> <a href="downpoi.do"
					class=" btn btn-primary "><span
					class="glyphicon glyphicon-download"></span></a> <a
					href="javascript:void(0);" class="btn btn-primary btn-sm"
					onclick="Add()">添加</a> <br />
				<br />
				<table
					class="table table-bordered table-striped text-center bg-info">
					<thead>
						<tr class="info">
							<th class="text-center">序号</th>
							<th class="text-center">用户名</th>
							<th class="text-center">用户密码</th>
							<th class="text-center">状态</th>
							<th class="text-center">邮箱</th>
							<th class="text-center">备注</th>
							<th class="text-center">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userlist}" var="l" varStatus="a">
							<tr>
								<td>${a.index+1}</td>
								<td>${l.user_name}</td>
								<td>${l.user_pwd}</td>
								<td>${l.user_lock==1?"可用":"禁用"}</td>
								<td>${l.user_mail}</td>
								<td>无</td>
								<td><a href="javascript:void(0);"
									onclick="Update('${l.user_name}','${l.user_pwd}','${l.user_mail}',${l.user_lock})"
									class="btn btn-primary btn-sm">编辑</a> <input type="hidden"
									value="${l.user_id}" /> <a href="javascript:void(0);"
									onclick="Del('${l.user_id}')" class="btn btn-primary btn-sm">删除</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>

					<tfoot>
						<tr>
							<td colspan="3">
								<div class="pagination" id="pagination"
									style="margin: 4px 0 0 0"></div>
							</td>
						</tr>
					</tfoot>


					<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">用户操作</h4>
								</div>
								<div class="modal-body">
									<form id="f2">
										<ul>
											<li><label><span>用户名 ：</span></label> <input type="text"
												id="user_name" name="user_name" /></li>
											<li><label><span>密 码 ：</span></label> <input type="text"
												id="user_pwd" name="user_pwd" /></li>

											<li><label><span>邮 箱 ：</span></label> <input type="text"
												id="user_mail" name="user_mail" /></li>
											<li><label class="checkbox-inline"> <input
													type="radio" style="width: 10px;" name="user_lock"
													value="1" checked> 可用
											</label> <label class="checkbox-inline"> <input type="radio"
													style="width: 10px;" name="user_lock" value="0"> 禁用
											</label></li>
										</ul>
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default btn-sm"
										data-dismiss="modal">取消</button>
									<button type="button" class="btn btn-primary btn-sm">保存</button>
								</div>
							</div>
						</div>
					</div>
				</table>
					
					<div>
					    <ul id='bp-3-element-test'></ul>
					</div>

			</div>
		</div>
	</div>
	</section>
	<footer class="bg-primary navbar-fixed-bottom">
	<p class="text-center text-white">版权所有&copy;YYGRYCP2016-09-01</p>
	</footer>
	<script type="text/javascript">
	var element = $('#bp-3-element-test');
	var CurrentPage="${CurrentPage}";
	var LastPage="${LastPage}";
	var page="${page}";
	var search="${search}";
		    options = {
		        size:"small",
		        bootstrapMajorVersion:3,
		        currentPage: CurrentPage,
		        numberOfPages: 3,
		        totalPages:LastPage,
		        pageUrl: function(type, page, current){
		        	
		        	return "<%=request.getContextPath()%>/carstore/datagrid.do?search="+search+"&page="+page;

	            }
		    };
	    element.bootstrapPaginator(options);
	</script>
	
	<script type="text/javascript">
 	//删除 
 	function Del(user_id){
 		$.ajax({
 			url:"<%=request.getContextPath()%>/carstore/user_delete.do?user_id="+user_id,
 			type:"post",
 			dataType:"json",
 			success:function(data){
 				if(data){
 					alert("删除成功");
 					location.reload();
 				}
 			}
 		});
 	}
 	//修改
 	function Update(name,pwd,mail,lock){
 		$('#myModal').modal("show");
 		$('#user_name').val(name);
 		$('#user_pwd').val(pwd);
 		$('#user_mail').val(mail);
 		$("[value="+lock+"]").prop('checked',true);
 		
 	}
 	//添加
 	function Add(){
 		$('#myModal').modal("show");
 		$('#user_name').val("");
 		$('#user_pwd').val("");
 		$('#user_mail').val("");
 		$("[value=1]").prop('checked',true);
 	}
 	//搜索
 	function Search(){
 		var search=$("#search").val();
 		location.href="<%=request.getContextPath()%>/carstore/datagrid.do?search="+search;
 	}
 //分页
 $(function(){
 	
	 
 });
	
</script>


</body>
</html>
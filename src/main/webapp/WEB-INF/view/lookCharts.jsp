<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <li class="text-white h4">
                &nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;<b>大西洋车险管理平台</b>
            </li>
        </ul>
        <ul class="nav navbar-nav nav-pills right ">
            <li class="bg-warning ">
                <a href="#"><span class="glyphicon glyphicon-tasks"></span><span class="badge">1</span></a>
            </li>
            <li class="bg-success">
                <a href="#"><span class="glyphicon glyphicon-envelope"></span><span class="badge">2</span></a>
            </li>
            <li class="bg-danger">
                <a href="#"><span class="glyphicon glyphicon-bell"></span></a>
            </li>
            <li class="bg-info dropdown">
                <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user"></span>&nbsp;<span>系统管理员</span><span class="caret"></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <li class="text-center"><a href="#"><span class="text-primary">账号设置</span></a></li>
                    <li class="text-center"><a href="#"><span class="text-primary">消息设置</span></a></li>
                    <li class="text-center"><a href="#"><span class="text-primary">帮助中心</span></a></li>
                    <li class="divider"><a href="#"></a></li>
                    <li class="text-center"><a href="http://localhost:8080/CarInsurance/login.html"><span class="text-primary">退出</span></a></li>
                </ul>
            </li>
        </ul>
    </div>
</header>

<section >
    <div class="container-fluid">
        <div class="row ">
            <!--左侧导航开始-->
            <div class="col-xs-2 bg-blue">
                <br/>
                <div class="panel-group sidebar-menu" id="accordion" aria-multiselectable="true">
                    <div class="panel panel-default menu-first menu-first-active">
                        <a data-toggle="collapse" data-parent="#accordion" href="index.html" aria-expanded="true"
                           aria-controls="collapseOne">
                            <i class="icon-home icon-large"></i> 主页
                        </a>
                    </div>
                    <div class="panel panel-default menu-first">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true"
                           aria-controls="collapseOne">
                            <i class="icon-user-md icon-large"></i> 用户管理</a>
                        </a>
                        <div id="collapseOne" class="panel-collapse collapse in " >
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
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
                           aria-expanded="false" aria-controls="collapseTwo">
                            <i class="icon-book icon-large"></i>  理赔管理</a>
                        </a>
                        <div id="collapseTwo" class="panel-collapse collapse ">
                            <ul class="nav nav-list menu-second">
                                <li><a href="http://localhost:8080/CarInsurance/cars/administrator.do"><i class="icon-user"></i>  理赔进度</a></li>
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
                <br/>
                <ol class="breadcrumb">
                    <li><a href="index.html"><span class="glyphicon glyphicon-home"></span>&nbsp;后台首页</a></li>
                    <li class="active">系统管理 - 图表</li>
                </ol>
                <div class="chart">
                    <div class="canvas" >
                        <h3 class="text-primary">折线图</h3>
                        <canvas id="canvas"></canvas>
                    </div>
                    <div  class="canvas">
                        <h3 class="text-primary">柱状图</h3>
                        <canvas id="canvas1" ></canvas>
                    </div>

                </div>

            </div>
            <!--右侧内容结束-->
        </div>
    </div>
</section>

<footer class="bg-primary navbar-fixed-bottom">
    <p class="text-center text-white">版权所有&copy;YYGRYCP2016-09-01</p>
</footer>
</body>
<script type="text/javascript">
/*Chart的柱状图数据*/
function lineChart() {
    var ctx = document.getElementById('canvas').getContext("2d")
    var data = {
        labels: ["2014-10", "2014-11", "2014-12", "2015-1", "2015-2", "2015-3"],
        datasets: [{
            label: "My First dataset",
            fillColor: "rgba(200,200,200,0.2)",
            strokeColor: "rgba(200,200,200,1)",
            pointColor: "rgba(200,200,200,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(200,200,200,1)",
            data: [65, 59, 80, 81, 56, 55, 40]
        },
            {
                label: "My Second dataset",
                fillColor: "rgba(151,187,205,0.2)",
                strokeColor: "rgba(151,187,205,1)",
                pointColor: "rgba(151,187,205,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,187,205,1)",
                data: [28, 48, 40, 19, 86, 27, 90]
            }]
    };
    var salesVolumeChart = new Chart(ctx).Line(data);
}


/*Chart的折线图数据*/
function barChart() {
    var ctx = document.getElementById('canvas1').getContext("2d")
    var data = {
        labels: ["2014-10", "2014-11", "2014-12", "2015-1", "2015-2", "2015-3"],
        datasets: [{
            label: "",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: [1.27, 1.30, 1.30, 1.41, 1.04, 1.29]
        }]
    };
     var salesVolumeChart = new Chart(ctx).Bar(data, {
        // 点击的小提示
        <%-- tooltipTemplate: "<%if ("") {%><%=label%> 销量：<%}%><%=value%>万辆" --%>
        });
	}
	// 启动
	setTimeout(function() {
		// 避免IE7-8 调用getContext报错，使用setTimeout
		lineChart()
		barChart()
	}, 0);
	
		 if(/Mobile/i.test(navigator.userAgent)) {
			//针对手机，性能做一些降级，看起来就不会那么卡了
			Chart.defaults.global.animationSteps = Chart.defaults.global.animationSteps / 6;
			Chart.defaults.global.animationEasing = "linear";
		}
</script>

</html>
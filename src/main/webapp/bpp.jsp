<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en-US">
<jsp:include page="/include/bootstrap.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>全部保险-国内旅行保险-国内旅游保险-境外旅游保险-旅游意外保险-境外工作保险-境外留学保险-中国平安官方直销网站</title>
<meta name="Keywords"
	content="国内旅游保险,国内旅行保险,旅游保险网,旅行意外保险,自助游保险,自驾游保险,境外旅游保险,申根签证保险,境外工作保险,境外留学保险,个人旅游保险" />
<meta name="Description"
	content="旅游保险，也称旅行保险或旅游意外保险，提供被保险人在出行期间因遭受意外伤害事故而死亡、伤残或住院医疗等的保险赔偿。网上购买平安旅游保险低至4折优惠！买旅游保险就是买平安，详情请登陆中国平安官方直销网站。" />
<link rel="stylesheet"
	href="//pcss1.4008000000.com/app_css/4008000000/v20/base.css" />
<link rel="stylesheet"
	href="//pcss1.4008000000.com/app_css/4008000000/v20/public.css" />
<link rel="stylesheet"
	href="//pcss1.4008000000.com/app_css/4008000000/v20/zaixiangoumai/baoxian/prolistall.css" />
<script type="text/javascript"
	src="//pscript1.4008000000.com/app_js/paui/1.0.1/build/pa.ui.min.js"></script>
<style type="text/css">
.default_box_p {
	height: 250px;
}

.current_box_btn0624 {
	display: block;
	width: 160px;
	height: 40px;
	margin: 6px auto 0;
	background: none repeat scroll 0 0 #999;
	color: #FFF;
	text-align: center;
	font-size: 18px;
	line-height: 40px;
}

.current_box_btn0624:hover {
	text-decoration: none;
	background: #999;
	color: #fff;
}

.current_box_list li.wz0624 {
	color: #F00;
	font-size: 14px;
	text-align: center;
	padding-top: 30px;
}
#cx{
	background-color: #585854;
	color:#fff;
}
#cx:hover{
	background-color: #ff6632;
	color:#fff;
}
</style>
	<script type="text/javascript">
		$(function(){
				$(".current_box_btn").click(function(){
						location.href="<%=request.getContextPath()%>/store/finduser.do";					
				})		
		})	
	</script>
</head>
<body>
	<div class="por z9">
		<div class="htmltop">
			<div class="wrap c">
				<dl>
					<dd>
						<a href="http://www.pingan.com/" id="htmltop-a01" title="车险平台"
							otitle="车险平台-顶部导航" otype="button" target="_blank">车险平台</a>
					</dd>
					<dt>|</dt>
					<dd class="top-bar-weibo">
						<a href="http://weibo.com/u/1770607377" id="htmltop-a03"
							title="官方微博" otitle="官方微博-顶部导航" otype="button" target="_blank">官方微博</a><i
							class="top-bar-weibo-icon"></i>
					</dd>
					<dt>|</dt>
					<dd>
						<a href="http://www.4008000000.com/yule/home/index.shtml"
							id="htmltop-a01" title="车险平台" otitle="车险平台-顶部导航" otype="button"
							target="_blank">车险平台</a>
					</dd>
					<dt>|</dt>
					<dd id="J_appCodeH" class="por">
						<a href="http://www.4008000000.com/fuwuzhongxin/app.shtml"
							id="htmltop-a02" title="车险平台-顶部导航" otitle="官方微信" otype="button"
							target="_blank">官方微信</a>
						<div id="J_topbarAppCode" class="topbar-app-item">
							<i class="app-arrow"></i>
							<div class="topbar-app-item-img"></div>
							<div class="topbar-app-txt">
								<p class="f12">关注车险微信公众号</p>
							</div>
						</div>
					</dd>
					<dt>|</dt>
					<dd class="htmltop_help">
						<a
							href="http://www.4008000000.com/help/toubao/chexian/aboutchexian.shtml"
							id="htmltop-a03" title="帮助中心" otitle="帮助中心-顶部导航" otype="button"
							target="_blank">帮助中心</a><em></em>
						<ul>
							<li><a
								href="http://www.4008000000.com/help/toubao/chexian/aboutchexian.shtml"
								otitle="投保帮助-帮助中心-顶部导航" otype="button" target="_blank">投保帮助</a></li>
							<li><a
								href="http://www.4008000000.com/help/zhifu/index.shtml"
								otitle="支付指南-帮助中心-顶部导航" otype="button" target="_blank">支付指南</a></li>
							<li><a
								href="http://www.4008000000.com/help/ziliaoxiazai.shtml"
								otitle="资料下载-帮助中心-顶部导航" otype="button" target="_blank">资料下载</a></li>
							<li><a
								href="http://www.4008000000.com/zaixiankefu/index.shtml"
								otitle="联系客服-帮助中心-顶部导航" otype="button" target="_blank">联系客服</a></li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
		<script>
			$(function() {
				$mobile = $("#J_appCodeH");
				$mobile.hover(function() {
					$(this).find("#J_topbarAppCode").show();
				}, function() {
					$(this).find("#J_topbarAppCode").hide();
				});
			});
		</script>
		<div class="wrap por z3">
			<div class="htmlheader c">
				<div class="fr">
					<div class="posr htmlheader_search">
						<input type="text" id="keyword" value="" otitle="搜索输入框-搜索模块"
							otype="button" title="搜索"
							class="htmlheader_search_ipt search-text" /> <a
							href="javascript:var bd_sousuo;" class="htmlheader_search_btn"
							onclick="common_search_baoxian('');" title="搜索" otitle="搜索-搜索模块"
							otype="button">搜索</a>
						<div class="htmlheader_search_keyword">
							<a href="" class="hot_keyword" title="车险" otitle="车险-搜索模块"
								otype="button">车险</a>
								<a href="" title="意外险" otitle="意外险-搜索模块"
								otype="button">意外险</a>
								<a href="" title="健康险" otitle="健康险-搜索模块"
								otype="button">健康险</a>
						</div>
					</div>
					<div class="htmlheader_baoxian">
						<a href="<%=request.getContextPath()%>/store/carmanage.do" title="全部保险"
							otitle="全部保险-页头" otype=" button" target="_blank">全部保险</a>
					</div>
					<div class="htmlheader_login">
						<a href="#" 
							title="会员登录" otitle="会员登录-会员模块" otype="button">会员登录</a> 
							<a href="#"
							title="注册" otitle="注册-会员模块" otype="button">注册</a>
					</div>
					<div class="htmlheader_user" style="display: none;">
					</div>
				</div>
			</div>
		</div>
	
		<div class="htmlNav">
			<div class="wrap c">
				<div class="por">
					<ul class="MainNav">
					<li><a href="#" otitle="首页-头部导航"
							otype="menu" class="htmlNav_a htmlNav01">首页</a></li>
						
						<!-- 车险 -->
						<div class="btn-group">
							<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown"  style="widows: 250px;height:48px;font-size: 18px;background-color:#585854">车险查询
							<span class="caret"></span></button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=request.getContextPath()%>/check.jsp">车保查询</a></li>
							</ul>
						</div>

						<!-- 进行理赔 -->
						<div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="widows: 250px;height:48px;font-size: 18px;" id="cx">车险理赔
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
        <li>
            <a href="<%=request.getContextPath()%>/cars/claims.do">进行理赔</a>
        </li>
       	<li>
            <a href="<%=request.getContextPath()%>/cars/claimsjin.do">查询理赔进度</a>
        </li>
    </ul>
</div> 
						</li>
						<li><a href="#"
							otitle="会员俱乐部-头部导航" otype="menu" class="htmlNav_a htmlNav03"
							aria-haspopup="true">会员俱乐部<i class="htmlNav_down"></i></a>
						</li>
						<li><a href="#"
							otitle="车主商城-头部导航" otype="menu" class="htmlNav_a htmlNav04">车主商城</a></li>
						<li><a href="#"
							otitle="关于我们-头部导航" otype="menu" class="htmlNav_a htmlNav05">关于我们</a></li>
					</ul>
					<ul class="AssistantNav">
						<li><a
							href="#"
							otitle="特色保险-头部导航" otype="menu" class="htmlNav_a htmlNav06"><i
								class="Nav_icon_ts"></i><span class="Nav_ts">特色保险</span></a></li>
						<li class="por"><a
							href="#"
							otitle="保险攻略-头部导航" otype="menu" class="htmlNav_a htmlNav07"><i
								class="Nav_icon01"></i>保险攻略</a></li>
						<li><a href="#"
							otitle="理财中心-头部导航" otype="menu" class="htmlNav_a htmlNav08"><i
								class="Nav_icon03"></i>理财中心</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="wrap por z2 c">
		<div class="page_location mt15">
			<a otype="button" otitle="首页-面包屑" title="首页" href="/index.shtml">首页</a>
			<span class="location_next">&gt;</span><span id="location-text"
				class="f_c_999">全部保险</span>
		</div>
		<div class="c">
			<div class="prolist_left">
				<ul class="prolist-main-tab c">
					<li class="curr">全部<span id="allNum"></span><em></em></li>
					<li>私家车险<span id="carNum"></span><em></em></li>
				</ul>
				<ul id="carMenuTab" class="prolist_tab c">
					<li class="cut"><strong class="sub-type">类别：</strong>全部<span
						id="subCarNumAll"></span></li>
					<li>私家保险<span id="subCarNumA"></span></li>
					<li>组合购买<span id="subCarNumB"></span></li>
					<li>车主加保<span id="subCarNumC"></span></li>
				</ul>
				<ul class="prolist_cont s_pr_list c" id="tabCnt">
					<li class="prolist_cont_item carCnt carTypeA">
						<div class="default_box">
							<div class="default_box_Img">
								<img
									src="//pimg1.4008000000.com/app_images/4008000000/v20/zaixiangoumai/baoxian/productList/qichenbaoxian.jpg"
									alt="私家车险-私家车险">
							</div>
							<span class="default_box_name">私家车险</span>
							<p class="default_box_text">万元以下，3天到账；人伤案件，在线调解；百公里免费道路救援。</p>
						</div>
						<div class="resident_box c">
							<ul>
								<li>免费配送纸质保单</li>
								<li>电子保单</li>
								<li>理赔查询</li>
							</ul>
							<div class="resident_box_price">
								<input type="button" class="current_box_btn" value="去看看"/>
								<p>
									<span>¥998.00</span>起
								</p>
							</div>
						</div>
					</li>
					<li class="prolist_cont_item carCnt carTypeB">
						<div class="default_box">
							<div class="default_box_Img">
								<img
									src="//pimg1.4008000000.com/app_images/4008000000/v20/zaixiangoumai/baoxian/productList/qichenbaoxian-jsr.jpg"
									alt="驾驶人意外险-组合购买">
							</div>
							<span class="default_box_name">私家车险＋驾驶人意外险</span>
							<p class="default_box_text">车险搭配意外险，享双重15%优惠，保车保人一招搞定！</p>
						</div>
						<div class="resident_box c">
							<ul>
								<li>免费配送纸质保单</li>
								<li>电子保单</li>
								<li>理赔查询</li>
							</ul>
							<div class="resident_box_price">
							<input type="button" class="current_box_btn"  value="去看看"/>
								<p>
									<span>¥1083.00</span>起
								</p>
							</div>
						</div>
					</li>
					<li class="prolist_cont_item carCnt carTypeB">
						<div class="default_box">
							<div class="default_box_Img">
								<img
									src="//pimg1.4008000000.com/app_images/4008000000/v20/zaixiangoumai/baoxian/productList/qichenbaoxian-zh.jpg"
									alt="综合意外险-组合购买">
							</div>
							<span class="default_box_name">私家车险＋综合意外险</span>
							<p class="default_box_text">车险搭配意外险，享双重15%优惠，保车保人一招搞定!</p>
						</div>
						<div class="resident_box c">
							<ul>
								<li>免费配送纸质保单</li>
								<li>电子保单</li>
								<li>理赔查询</li>
							</ul>
							<div class="resident_box_price">
								<input type="button" class="current_box_btn"  value="去看看"/>
								<p>
									<span>¥1148.00</span>起
								</p>
							</div>
						</div>
					</li>
					<li class="prolist_cont_item carCnt carTypeB">
						<div class="default_box">
							<div class="default_box_Img">
								<img
									src="//pimg1.4008000000.com/app_images/4008000000/v20/zaixiangoumai/baoxian/productList/qichenbaoxian-jt.jpg"
									alt="交通意外险-组合购买">
							</div>
							<span class="default_box_name">私家车险＋交通意外险</span>
							<p class="default_box_text">车险搭配意外险，享双重15%优惠，保车保人一招搞定!</p>
						</div>
						<div class="resident_box c">
							<ul>
								<li>免费配送纸质保单</li>
								<li>电子保单</li>
								<li>理赔查询</li>
							</ul>
							<div class="resident_box_price">
								<input type="button" class="current_box_btn"  value="去看看"/>
								<p>
									<span>¥1100.00</span>起
								</p>
							</div>
						</div>
					</li>
					<li class="prolist_cont_item carCnt carTypeB">
						<div class="default_box">
							<div class="default_box_Img">
								<img
									src="//pimg1.4008000000.com/app_images/4008000000/v20/zaixiangoumai/baoxian/productList/qichenbaoxian-hk.jpg"
									alt="航空意外险-组合购买">
							</div>
							<span class="default_box_name">私家车险＋航空意外险</span>
							<p class="default_box_text">车险搭配意外险，享双重15%优惠，保车保人一招搞定!</p>
						</div>
						<div class="resident_box c">
							<ul>
								<li>免费配送纸质保单</li>
								<li>电子保单</li>
								<li>理赔查询</li>
							</ul>
							<div class="resident_box_price">
								<input type="button" class="current_box_btn"  value="去看看"/>
								<p>
									<span>¥1148.00</span>起
								</p>
							</div>
						</div>
					</li>
					<li class="prolist_cont_item carCnt carTypeC">
						<div class="default_box_p por c">
							<div class="default_box_Img">
								<img
									src="//pimg1.4008000000.com/app_images/4008000000/v20/zaixiangoumai/baoxian/productList/sheshuixian.jpg"
									alt="涉水险-车主加保">
							</div>
							<span class="default_box_name">涉水险</span>
							<p class="default_box_text">再也不怕暴雨，涉水，地库进水等等威胁。若涉水使发动机受损，修理费可能达到全车30%。</p>
						</div>
						<div class="resident_box c">
							<ul>
								<li>涉水行驶可赔</li>
								<li>支持不计免赔</li>
								<li>快速生效</li>
							</ul>
							<div class="resident_box_price">
								<input type="button" class="current_box_btn"  value="去看看"/>
								<p>
									<span>¥32.00</span>起
								</p>
							</div>
						</div>
					</li>
					<li class="prolist_cont_item carCnt carTypeC">
						<div class="default_box_p por c">
						<div class="default_box_Img">
								<img
									src="//pimg1.4008000000.com/app_images/4008000000/v20/zaixiangoumai/baoxian/productList/cheshangrenyuanxian.jpg"
									alt="车上人员责任险-车主加保">
							</div>
							<span class="default_box_name">车上人员责任险</span>
							<p class="default_box_text">人的保障永远比车的保障重要，转移驾驶员风险首选车 上人员责任险。</p>
						</div>
						<div class="resident_box c">
							<ul>
								<li>好司机标配</li>
								<li>新手上路必备保障</li>
								<li>支持按座位数赔偿</li>
							</ul>
							<div class="resident_box_price">
								<input type="button" class="current_box_btn"  value="去看看"/>
								<p>
									<span>¥48.00</span>起
								</p>
							</div>
						</div>
					</li>
					<li class="prolist_cont_item carCnt carTypeC">
						<div class="default_box_p por c">
							<div class="default_box_Img">
								<img
									src="//pimg1.4008000000.com/app_images/4008000000/v20/zaixiangoumai/baoxian/productList/ziranxiang.jpg"
									alt="自燃险-车主加保">
							</div>
							<span class="default_box_name">自燃险</span>
							<p class="default_box_text">防患于未“燃”，保障整车安全，降低高温风险！</p>
						</div>
						<div class="resident_box c">
							<ul>
								<li>露天高温保障</li>
								<li>支持不计免赔</li>
								<li>快速生效</li>
							</ul>
							<div class="resident_box_price">
								<input type="button" class="current_box_btn"  value="去看看"/>
								<p>
									<span>¥80.00</span>起
								</p>
							</div>
						</div>
					</li>
	</div>
	<div class="wrap htmlfeature c">
		<dl class="feature01">
			<dt></dt>
			<dd>
				7*24*365服务<br>全年不打烊
			</dd>
		</dl>
		<dl class="feature02">
			<dt></dt>
			<dd>
				快捷投保<br>闪电出单
			</dd>
		</dl>
		<dl class="feature03">
			<dt></dt>
			<dd>
				保险行业领导者<br>权威可信赖
			</dd>
		</dl>
		<dl class="feature04">
			<dt></dt>
			<dd>
				快易免服务<br>理赔有保障
			</dd>
		</dl>
	</div>
	<div class="footer_nav c">
		<ul class="wrap c">
			<li class="footer_nav_col_item footer_nav_col_item1">
				<h3>投保指引</h3>
				<ul class="footer_nav_list">
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/fuwuzhongxin/chexian/zhuanti/tiaokuan.shtml"
						target="_blank" title="了解车险产品" otitle="了解车险产品-投保指引-页脚"
						otype="button">了解车险产品</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/fuwuzhongxin/chexian/zhuanti/toubao.jsp"
						target="_blank" title="车险投保指南" otitle="车险投保指南-投保指引-页脚"
						otype="button">车险投保指南</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/fuwuzhongxin/zhifu/index.shtml"
						target="_blank" title="网上支付帮助" otitle="网上支付帮助-投保指引-页脚"
						otype="button">网上支付帮助</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/zixun/chexian/zhishi/index.shtml"
						target="_blank" title="车险投保知识" otitle="车险投保知识-投保指引-页脚"
						otype="button">车险投保知识</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/zixun/baoxian/baoxianshuyu/index.shtml"
						target="_blank" title="保险术语解读" otitle="保险术语解读-投保指引-页脚"
						otype="button">保险术语解读</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/fuwuzhongxin/chexian/tqdjmcx.jsp"
						target="_blank" title="车险可以提前多久买" otitle="车险可以提前多久买-投保指引-页脚"
						otype="button">车险可以提前多久买</a></li>
				</ul>
			</li>
			<li class="footer_nav_col_item footer_nav_col_item2">
				<h3>服务帮助</h3>
				<ul class="footer_nav_list">
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/login.shtml?pageNo=deliver"
						target="_blank" title="车险配送进度查询" otitle="车险配送进度查询-服务帮助-页脚"
						otype="button">车险配送进度查询</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/login.shtml?pageNo=policy"
						target="_blank" title="查询保单信息" otitle="查询保单信息-服务帮助-页脚"
						otype="button">查询保单信息</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.pingan.com/property_insurance/pa18AutoInquiry/mapIndex.do"
						target="_blank" title="服务网点查询" otitle="服务网点查询-服务帮助-页脚"
						otype="button">服务网点查询</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/huiyuan/weizhangfuwu.shtml"
						target="_blank" title="全国交通违章查询" otitle="全国交通违章查询-服务帮助-页脚"
						otype="button">全国交通违章查询</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/fuwuzhongxin/chexian/toubaochangjianwenti.shtml"
						target="_blank" title="常见问题" otitle="常见问题-服务帮助-页脚" otype="button">常见问题</a></li>
					<li class="footer_nav_list_item"><a
						href="http://www.4008000000.com/help/toubao/tuibao.shtml"
						target="_blank" title="车险退保指引" otitle="车险退保指引-服务帮助-页脚"
						otype="button">车险退保指引</a></li>
				</ul>
			</li>
			<li class="footer_nav_col_item footer_nav_col_item3">
				<h3>理赔指南</h3>
				<div class="footer_nav_tabTitle c">
					<a href="javascript:var bd_chexianyejiao;" class="first current"
						hidefocus="hidefocus" title="车险" otitle="车险-理赔指南-页脚"
						otype="button">车险</a> <a href="javascript:var bd_qitabaoxian;"
						hidefocus="hidefocus" title="其他保险" otitle="其他保险-理赔指南-页脚"
						otype="button">其他保险</a>
				</div>
				<div class="footer_nav_tabCont">
					<div>
						<ul class="footer_nav_list">
							<li class="footer_nav_list_item"><a
								href="http://www.4008000000.com/fuwuzhongxin/chexian/zhuanti/lipei.jsp"
								target="_blank" title="车险理赔指南" otitle="车险理赔指南-车险-理赔指南-页脚"
								otype="button">车险理赔指南</a></li>
							<li class="footer_nav_list_item"><a
								href="http://www.4008000000.com/fuwuzhongxin/chexian/lipeiliucheng.shtml"
								target="_blank" title="车险理赔流程" otitle="车险理赔流程-车险-理赔指南-页脚"
								otype="button">车险理赔流程</a></li>
							<li class="footer_nav_list_item"><a
								href="http://www.4008000000.com/fuwuzhongxin/chexian/ziliaoxiazai.shtml"
								target="_blank" title="常见索赔单证下载" otitle="常见索赔单证下载-车险-理赔指南-页脚"
								otype="button">常见索赔单证下载</a></li>
							<li class="footer_nav_list_item"><a
								href="http://www.4008000000.com/fuwuzhongxin/chexian/emergency.shtml"
								target="_blank" title="紧急救援服务" otitle="紧急救援服务-车险-理赔指南-页脚"
								otype="button">紧急救援服务</a></li>
						</ul>
					</div>
					<div class="dn">
						<ul class="footer_nav_list">
							<li class="footer_nav_list_item"><a
								href="http://www.4008000000.com/fuwuzhongxin/chexian/lipeiliucheng.shtml"
								target="_blank" title="理赔流程查询" otitle="理赔流程查询-其他保险-理赔指南-页脚"
								otype="button">理赔流程查询</a></li>
							<li class="footer_nav_list_item"><a
								href="http://www.pingan.com/property_insurance/pa18AutoInquiry/mapIndex.do"
								target="_blank" title="理赔网点" otitle="理赔网点-其他保险-理赔指南-页脚"
								otype="button">理赔网点</a></li>
							<li class="footer_nav_list_item"><a
								href="http://www.4008000000.com/fuwuzhongxin/lipeitesefuwu.shtml"
								target="_blank" title="特色理赔服务" otitle="特色理赔服务-其他保险-理赔指南-页脚"
								otype="button">特色理赔服务</a></li>
							<li class="footer_nav_list_item"><a
								href="http://www.4008000000.com/fuwuzhongxin/chexian/lipeichangjianwenti.shtml"
								target="_blank" title="理赔常见问题" otitle="理赔常见问题-其他保险-理赔指南-页脚"
								otype="button">理赔常见问题</a></li>
						</ul>
					</div>
				</div>
			</li>
			<li class="footer_nav_col_item footer_nav_col_item4">
				<h3>汽车保险百科</h3>
				<div class="footer_nav_tabTitle c">
					<a href="javascript:var bd_zhishiqichebaoxian;"
						class="first current" hidefocus="hidefocus" title="知识"
						otitle="知识-汽车保险百科-页脚" otype="button">知识</a> <a
						href="javascript:var bd_zixun;" hidefocus="hidefocus" title="资讯"
						otitle="资讯-汽车保险百科-页脚" otype="button">资讯</a> <a
						href="javascript:var bd_baoyang;" hidefocus="hidefocus" title="保养"
						otitle="保养-汽车保险百科-页脚" otype="button">保养</a> <a
						href="javascript:var bd_fuwu;" hidefocus="hidefocus" title="服务"
						otitle="服务-汽车保险百科-页脚" otype="button">服务</a> <a
						href="javascript:var bd_ershouche;" hidefocus="hidefocus"
						title="二手车" otitle="二手车-汽车保险百科-页脚" otype="button">二手车</a>
				</div>
				<div class="footer_nav_tabCont domainLink">
					<div>
						<ul class="footer_menu_list">
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="全保与交强险的区别这么大" otype="button"
								otitle="全保与交强险的区别这么大-知识-汽车保险百科-页脚"
								href="/zixun/chexian/zhishi/1465193778008.shtml">全保与交强险的区别这么大</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="平安交强险补办收取手续费吗" otype="button"
								otitle="平安交强险补办收取手续费吗-知识-汽车保险百科-页脚"
								href="/zixun/chexian/zhishi/1465193693154.shtml">平安交强险补办收取手续费吗</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="交强险赔付原理是什么" otype="button"
								otitle="交强险赔付原理是什么-知识-汽车保险百科-页脚"
								href="/zixun/chexian/zhishi/1465192382675.shtml">交强险赔付原理是什么</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="没交强险可以审车吗，为什么" otype="button"
								otitle="没交强险可以审车吗，为什么-知识-汽车保险百科-页脚"
								href="/zixun/chexian/zhishi/1465192392051.shtml">没交强险可以审车吗，为什么</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="交强险有责死亡赔付都有哪些方面" otype="button"
								otitle="交强险有责死亡赔付都有哪些方面-知识-汽车保险百科-页脚"
								href="/zixun/chexian/zhishi/1465192387138.shtml">交强险有责死亡赔付都有哪些方面</a>
							</li>
						</ul>
					</div>
					<div class="dn">
						<ul class="footer_menu_list">
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="买节能车减免购置税，保险要怎么买" otype="button"
								otitle="买节能车减免购置税，保险要...-资讯-汽车保险百科-页脚"
								href="/zixun/chexian/zixun/1465193140503.shtml">买节能车减免购置税，保险要...</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="洛阳交强险在哪里交都一样吗" otype="button"
								otitle="洛阳交强险在哪里交都一样吗-资讯-汽车保险百科-页脚"
								href="/zixun/chexian/zixun/1465192935585.shtml">洛阳交强险在哪里交都一样吗</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="买购置税上牌要多久才能好" otype="button"
								otitle="买购置税上牌要多久才能好-资讯-汽车保险百科-页脚"
								href="/zixun/chexian/zixun/1465192940486.shtml">买购置税上牌要多久才能好</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="国3车三明可以上牌需要保险吗" otype="button"
								otitle="国3车三明可以上牌需要保险吗-资讯-汽车保险百科-页脚"
								href="/zixun/chexian/zixun/1465184424054.shtml">国3车三明可以上牌需要保险吗</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="国4车可以去哪些地方，买什么车险" otype="button"
								otitle="国4车可以去哪些地方，买什么...-资讯-汽车保险百科-页脚"
								href="/zixun/chexian/zixun/1465184429590.shtml">国4车可以去哪些地方，买什么...</a>
							</li>
						</ul>
					</div>
					<div class="dn">
						<ul class="footer_menu_list">
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="车喷整漆要走保险吗，为什么" otype="button"
								otitle="车喷整漆要走保险吗，为什么-保养-汽车保险百科-页脚"
								href="/zixun/chexian/qichebaoyang/1464941849112.shtml">车喷整漆要走保险吗，为什么</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="车身全漆可以报啥险保险安全" otype="button"
								otitle="车身全漆可以报啥险保险安全-保养-汽车保险百科-页脚"
								href="/zixun/chexian/qichebaoyang/1464941864517.shtml">车身全漆可以报啥险保险安全</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="如何决定车漆划痕报保险吗" otype="button"
								otitle="如何决定车漆划痕报保险吗-保养-汽车保险百科-页脚"
								href="/zixun/chexian/qichebaoyang/1464941854668.shtml">如何决定车漆划痕报保险吗</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="车第一次保养要多久，保险应该怎么买" otype="button"
								otitle="车第一次保养要多久，保险应...-保养-汽车保险百科-页脚"
								href="/zixun/chexian/qichebaoyang/1464600022193.shtml">车第一次保养要多久，保险应...</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="车内饰塑料划痕修复小诀窍" otype="button"
								otitle="车内饰塑料划痕修复小诀窍-保养-汽车保险百科-页脚"
								href="/zixun/chexian/qichebaoyang/1464600027258.shtml">车内饰塑料划痕修复小诀窍</a>
							</li>
						</ul>
					</div>
					<div class="dn">
						<ul class="footer_menu_list">
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="车险全保有哪些服务是可以享受的" otype="button"
								otitle="车险全保有哪些服务是可以享受的-服务-汽车保险百科-页脚"
								href="/zixun/chexian/fuwu/1465178503829.shtml">车险全保有哪些服务是可以享受的</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="平安直通车险服务有哪些？" otype="button"
								otitle="平安直通车险服务有哪些？-服务-汽车保险百科-页脚"
								href="/zixun/chexian/fuwu/1464925025983.shtml">平安直通车险服务有哪些？</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="平安换车胎竟然是免费的" otype="button"
								otitle="平安换车胎竟然是免费的-服务-汽车保险百科-页脚"
								href="/zixun/chexian/fuwu/1462417258242.shtml">平安换车胎竟然是免费的</a></li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="平安车险有哪些免费服务你知道吗" otype="button"
								otitle="平安车险有哪些免费服务你知道吗-服务-汽车保险百科-页脚"
								href="/zixun/chexian/fuwu/1461832346315.shtml">平安车险有哪些免费服务你知道吗</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="平安车险的车险免费服务有哪些，应该注意哪些事项？"
								otype="button" otitle="平安车险的车险免费服务有哪...-服务-汽车保险百科-页脚"
								href="/zixun/chexian/fuwu/1461122223834.shtml">平安车险的车险免费服务有哪...</a>
							</li>
						</ul>
					</div>
					<div class="dn">
						<ul class="footer_menu_list">
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="为什么国三车不好跨省过户" otype="button"
								otitle="为什么国三车不好跨省过户-二手车-汽车保险百科-页脚"
								href="/zixun/chexian/esc/1465191853892.shtml">为什么国三车不好跨省过户</a></li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="国4车能过户吗要看这些方面" otype="button"
								otitle="国4车能过户吗要看这些方面-二手车-汽车保险百科-页脚"
								href="/zixun/chexian/esc/1465191401604.shtml">国4车能过户吗要看这些方面</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="国三车本地能过户吗，保险能买吗" otype="button"
								otitle="国三车本地能过户吗，保险能买吗-二手车-汽车保险百科-页脚"
								href="/zixun/chexian/esc/1465191407451.shtml">国三车本地能过户吗，保险能买吗</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="抵押车买卖风险有多大，能买保险吗" otype="button"
								otitle="抵押车买卖风险有多大，能买...-二手车-汽车保险百科-页脚"
								href="/zixun/chexian/esc/1464918662046.shtml">抵押车买卖风险有多大，能买...</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="抵押车面临的风险保险能化解吗" otype="button"
								otitle="抵押车面临的风险保险能化解吗-二手车-汽车保险百科-页脚"
								href="/zixun/chexian/esc/1464918667260.shtml">抵押车面临的风险保险能化解吗</a>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li class="footer_nav_col_item footer_nav_col_item5">
				<h3>保险案例</h3>
				<div class="footer_nav_tabTitle c">
					<a href="javascript:var bd_chexianbaoxiananli;"
						class="first current" hidefocus="hidefocus" title="车险"
						otitle="车险-保险案例-页脚" otype="button">车险</a> <a
						href="javascript:var bd_yiwaixiananli;" hidefocus="hidefocus"
						title="意外险" otitle="意外险-保险案例-页脚" otype="button">意外险</a> <a
						href="javascript:var bd_lvyouxiananli;" hidefocus="hidefocus"
						title="旅游险" otitle="旅游险-保险案例-页脚" otype="button">旅游险</a> <a
						href="javascript:var bd_jiacaixiananli;" hidefocus="hidefocus"
						title="家财险" otitle="家财险-保险案例-页脚" otype="button">家财险</a>
				</div>
				<div class="footer_nav_tabCont domainLink">
					<div>
						<ul class="footer_menu_list">
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="投保险之后车被偷了赔多少" otype="button"
								otitle="投保险之后车被偷了赔多少-车险案例-保险案例-页脚"
								href="/zixun/chexian/anli/1464596068105.shtml">投保险之后车被偷了赔多少</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="发生高空坠物砸坏车保险公司怎么赔" otype="button"
								otitle="发生高空坠物砸坏车保险公司...-车险案例-保险案例-页脚"
								href="/zixun/chexian/anli/1464596077954.shtml">发生高空坠物砸坏车保险公司...</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="车非自燃着火理赔吗，自燃险要不要购买" otype="button"
								otitle="车非自燃着火理赔吗，自燃险...-车险案例-保险案例-页脚"
								href="/zixun/chexian/anli/1464596072717.shtml">车非自燃着火理赔吗，自燃险...</a>
							</li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="车被划了用什么险理赔" otype="button"
								otitle="车被划了用什么险理赔-车险案例-保险案例-页脚"
								href="/zixun/chexian/anli/1464595392953.shtml">车被划了用什么险理赔</a></li>
							<li class="footer_menu_list_item"><span class="point">·</span>
								<a target="_blank" title="被后车追尾如何处理，要不要走保险" otype="button"
								otitle="被后车追尾如何处理，要不要...-车险案例-保险案例-页脚"
								href="/zixun/chexian/anli/1462413751251.shtml">被后车追尾如何处理，要不要...</a>
							</li>
						</ul>
					</div>
			</li>
		</ul>
	</div>
	<script src="//pscript1.4008000000.com/app_js/youhui/v30/hrefChange.js"
		type="text/javascript"></script>
</body>
</html>
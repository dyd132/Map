<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

</script>
  </head>

  <body>
<%--     <h2>商品结算</h2>
        <h3><a href="/day11/sessionDemo3">清空购物车</a></h3>
    <%
        //获取session里面商品信息
        Map<String,Integer> map = (Map<String,Integer>)request.getSession().getAttribute("cart");
        //判断map是否为空
        if(map == null) {
    %>
        <h3>没有任何购物信息</h3>
    <%      
        } else {
            //现在map里面存储的是商品名称和数量
            //遍历map   两种 ：1 获取所有key；2 获取key-value关系
            Set<String> set = map.keySet();//所有商品的名称
            //遍历set  两种 增强for  迭代
            for(String name : set) {
                //得到value值（商品数量）
                int num = map.get(name);
    %>
        <h3>商品名称 ：<%=name%>,商品数量：<%=num%></h3>
    <% 
            }       
        }
     %>
<hr> --%>
<!-- 
<h1>购物车列表</h1>


     //1.获得购物车列表
     Map<String, Integer> cart=(Map<String, Integer>)session.getAttribute("cart");
    //2.遍历map输出
    if(cart!=null){
    Set<String> keys=cart.keySet();
    for(String id:keys)
    {
        int number=cart.get(id);//每件商品的数量
        int idInt=Integer.parseInt(id);
        String productName=arr[idInt-1];
        out.println("商品名称:"+productName+",商品数量："+number+"<br/>");
        }
    }


<hr/> -->
<h1>最近访问记录</h1><h5><a href="<%=request.getContextPath()%>/store/clearcookie.do">清空数据</a> </h5>
<%
    String[] arr = {"车辆损失险","第三者责任险","盗抢险","车上座位责任险","玻璃单独碎险","自燃险","	划痕险","不计免赔率"};
    // 获得所有cookie
    Cookie[] cookies = request.getCookies();

    // 在cookie中查找商品浏览记录
    String visitlist = null;
    if(cookies!=null){
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("visitlist")) {
                visitlist = cookie.getValue();
                break;
            }
        }
        
        if(visitlist==null){ // 商品列表不存在
            out.println("无");
        }else{
            String[] existIds = visitlist.split(",");
            for(String existId:existIds){
                int id = Integer.parseInt(existId);
                out.println(arr[id-1]+"<br/>");
            }
        }
    }
%>
<hr>

<h1>购物车列表</h1>

<%
     //1.获得购物车列表
     Map<String, Integer> cart=(Map<String, Integer>)session.getAttribute("cart");
    double money=0.00;
    double money1=0.00;
    double money2=0.00;
    double money3=0.00;
    double money4=0.00;
    double money5=0.00;
    double money6=0.00;
    double money7=0.00;
    double money8=0.00;
    //2.遍历map输出
    if(cart!=null){
    Set<String> keys=cart.keySet();
    for(String id:keys)
    {
        int number=cart.get(id);//每件商品的数量
        int idInt=Integer.parseInt(id);
        String productName=arr[idInt-1];
        
    	    if(idInt==1){
    	    	 money1=999*number;
    	    }
    	    if(idInt==2){
    	    	money2=9999*number;
    	    }
    	    if(idInt==3){
    	    	money3=1111*number;
    	    }
    	    if(idInt==4){
    	    	money4=2111*number;
    	    }
    	    if(idInt==5){
    	    	money5=3333*number;
    	    }
    	    if(idInt==6){
    	    	money6=4444*number;
    	    }
    	    money=money1+money2+money3+money4+money5+money6;
    	    out.println("商品名称:"+productName+",商品数量："+number+"<br/>");
   		 }
    		out.println("商品的总价格"+money);
    }
%>
<hr/>
	<input type="hidden" id="money" value="<%=money%>"/>
    <script src="http://fuqian.la/jssdk/pcjssdk.3.0.js"></script>
    <style>
        button { width: 200px; height: 35px; background-color: #000; border-radius: 5px; color: #fff; border: 0; margin: 15px;}
    </style>
     <button id="test">付钱拉收银台</button>
    <button id="test2">微信扫码支付</button>
    <button id="test3">支付宝支付</button>
    
    <script>
   		var money=$("#money").val();
    	money=eval("("+money+")");
        $('#test').on('click', function(){
            FUQIANLAPC.init({
                appId: 'bm5ZHRTdvb89KYD1B6xg0Q', //应用ID号
                orderId: Date.now(), //订单号，此处为模拟订单号。具体以接入为准
                merchId: 'm1604080001', //商户号
                channel: 'ali_direct_pay_pc,wx_pay_pub_scan,bd_direct_pay_pc,jd_pay_pc', //开通的通道简称
                amount:money+'.00', 
                subject: 'pc测试数据', //商品标题
                notifyUrl: 'http://fuqian.la', //异步支付结果通知地址
                extra: {
                    jd_pay_pc: {
                        return_url: 'http://fuqian.la'
                    }
                }
            });
        });
        $('#test2').on('click', function(){
            FUQIANLAPC.init({
                isCashierDesk: false,
                appId: 'bm5ZHRTdvb89KYD1B6xg0Q',
                clientIp: '127.0.0.1',
                orderId: Date.now(), //订单号，
                merchId: 'm1604080001',
                channel: 'wx_pay_pub_scan',
                amount: '0.01',
                subject: '测试商品',
                notifyUrl: 'http://xxx.xx.xx/notify.html'
            });
        });
        $('#test3').on('click', function(){
            FUQIANLAPC.init({
                isCashierDesk: false,
                appId: 'bm5ZHRTdvb89KYD1B6xg0Q',
                clientIp: '127.0.0.1',
                orderId: Date.now(), //订单号，
                merchId: 'm1604080001',
                channel: 'ali_direct_pay_pc',
                amount: '0.01',
                subject: '测试商品',
                notifyUrl: 'http://xxx.xx.xx/notify.html'
            });
        });
    </script>
  </body>
</html>
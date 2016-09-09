<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>跳转页面</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/index.css"/>
<link href="<%=request.getContextPath()%>/carcss/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/carcss/js/script.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
window.onload = function()
{
	  var oBox = document.getElementById('box');
	  var oPrev = getByClass(oBox,'prev')[0];
	  var oNext = getByClass(oBox,'next')[0];
	  var oBigUl = getByClass(oBox,'bigUl')[0];
	  var aLiBig = oBigUl.getElementsByTagName('li');
	  var oNumUl = getByClass(oBox,'numberUl')[0];
	  var aLiNumber = oNumUl.getElementsByTagName('li');
	  var oTextUl = getByClass(oBox,'textUl')[0];
	  var aLiText = oTextUl.getElementsByTagName('li');
	  var nowZindex = 1;
	  var now = 0;
	  function tab()
	  {
		   for(var i=0; i<aLiNumber.length; i++)
			  {
				  aLiNumber[i].className = '';
			  }
			  aLiNumber[now].className = 'night';
			  
		  aLiBig[now].style.zIndex = nowZindex++;
		  aLiBig[now].style.opacity = 0;
		  startMove(aLiBig[now],'opacity',100);
		  for(var i=0; i<aLiText.length; i++)
		  {
			  aLiText[i].style.display = 'none';
		  }
		  aLiText[now].style.display = 'block'
		  
	  }
	  
	  for(var i=0; i<aLiNumber.length; i++)
	  {
		  aLiNumber[i].index = i;
		  aLiNumber[i].onclick = function()
		  {
			 
			  if(this.index==now)return;
			  now = this.index;
			 
			  tab();
		  }
	  }
	  oNext.onmouseover = oPrev.onmouseover = oBigUl.onmouseover = function()
	  {
		  startMove(oPrev,'opacity',100);
		   startMove(oNext,'opacity',100)
	  }
	   oNext.onmouseout = oPrev.onmouseout = oBigUl.onmouseout = function()
	  {
		  startMove(oPrev,'opacity',0);
		  startMove(oNext,'opacity',0)
	  }
	  oPrev.onclick = function()
	  {
		  now--
		  if(now==-1)
		  {
			  now=aLiNumber.length-1;
		  }
		  tab();
	  }
	  
	    oNext.onclick = function()
	  {
		  now++
		  if(now==aLiNumber.length)
		  {
			  now=0;
		  }
		  tab();
	  }
	  
	  var timer = setInterval(oNext.onclick,3000)
	  oBox.onmouseover = function()
	  {
		  clearInterval(timer)
	  }
	  oBox.onmouseout = function()
	  {
		  timer = setInterval(oNext.onclick,3000)//改变速度修改3000 ，例如3000=3秒钟
	  }
}
	$(function(){
		$("#storeup").click(function(){
				var suggest;
				if($("#suggest").attr("checked")){
					suggest=1;
				}else{
					suggest=0;
				}
				/* var suggest=$("#suggest").val(); */
				alert(suggest)
				location.href="<%=request.getContextPath()%>/store/findlogin.do?suggest="+suggest;
		})
	})
</script>
</head>
<base target="_blank" />
<body>	
	<div id="box">
    <div class="prev"></div>
    <div class="next"></div>
    <ul class="bigUl">
       <li style="z-index:1"><a href="http://www.17sucai.com/"><img src="<%=request.getContextPath()%>/carcss/images/1.jpg" alt="图1" /></a></li>
       <li><a href="http://www.17sucai.com/"><img src="<%=request.getContextPath()%>/carcss/images/2.jpg" alt="图2" /></a></li>
       <li><a href="http://www.17sucai.com/"><img src="<%=request.getContextPath()%>/carcss/images/3.jpg" alt="图3" /></a></li>
       <li><a href="http://www.17sucai.com/"><img src="<%=request.getContextPath()%>/carcss/images/4.jpg" alt="图4" /></a></li>
       <li><a href="http://www.17sucai.com/"><img src="<%=request.getContextPath()%>/carcss/images/5.jpg" alt="图5" /></a></li>
       <li><a href="http://www.17sucai.com/"><img src="<%=request.getContextPath()%>/carcss/images/6.jpg" alt="图6" /></a></li>
       <li><a href="http://www.17sucai.com/"><img src="<%=request.getContextPath()%>/carcss/images/7.jpg" alt="图7" /></a></li>
    </ul>
    <ul class="numberUl">
      <li class="night"><a href="javascript:;">1</a></li>
      <li><a href="javascript:;">2</a></li>
      <li><a href="javascript:;">3</a></li>
      <li><a href="javascript:;">4</a></li>
      <li><a href="javascript:;">5</a></li>
      <li><a href="javascript:;">6</a></li>
      <li><a href="javascript:;">7</a></li>
    </ul>
    <div>
      <ul class="textUl">
        <li style="display:block;"><a href="http://www.17sucai.com/">定位精品路线 原创试驾奇瑞艾瑞泽3</a></li>
        <li><a href="http://www.17sucai.com/">锂电池是亮点 米儿低速电动车设计解读</a></li>
        <li><a href="http://www.17sucai.com/">舒适及操控更上一层楼 测试长安金欧诺</a></li>
        <li><a href="http://www.17sucai.com/">外观动感/配置丰富 天籁2.0L用车记</a></li>
        <li><a href="http://www.17sucai.com/">走到哪都信心十足 普拉多用车心得</a></li>
        <li><a href="http://www.17sucai.com/">全新东风标致508 驾乘尽享的中高级杰座</a></li>
        <li><a href="http://www.17sucai.com/">C4L 动力快人一步礼遇更胜一筹</a></li>
      </ul>
    </div>
 </div>
</div>
	<table>
		<tr>
			<th>车辆信息登记</th>
		</tr>
		<tr>
			<td>
				行车城市:
				<select>
					<option value="">---请选择---</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				车牌号码:<input type="text" value="粤B12121"/>
			</td>
		</tr>
		<tr>
			<td>
				车主姓名:<input type="text" value="张三"/>
			</td>
		</tr>
		<tr>
			<td>
				是否是新用户:<input type="checkbox" value="0" id="suggest"/>
			</td>
		</tr>
		<tr>
			<td>
				<input type="button" value="提交" id="storeup"/>
			</td>
		</tr>
	</table>
</body>
</html>
	

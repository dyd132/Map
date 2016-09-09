<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'list.jsp' starting page</title>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/js/index.css" type="text/css"></link>
 <script type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script></head>
  <script type="text/javascript">
  	$(function(){
  		/**var time=$("#goodsTime").val();
  		$.validator.addMethod("dt",function(){
  			var d=/^[1,2]\d{3}[年]([1-9]|[1][0,1,2])[月][1,2]\d[日]$/;
  			return d.test(time);
  		},"日期格式不合法");**/
  		
  		$.ajax({
  			url:"<%=request.getContextPath()%>/findType",
  			type:"post",
  			dataType:"json",
  			success:function(obj){
  				for(var i in obj){
  					$("[name='tname']").append("<option value="+obj[i].tid+">"+obj[i].tname+"</option>");
  				}
  			}
  		});
  		
  		//表单验证
  		
  	});
  </script>
  <body>
  	<form>
  		<table>
  			<tr>
  				<td>商品名称</td>
  				<td>
  					<input type="text" id="rep_identity" name="rep_identity"/>
  				</td>
  			</tr>
  			<tr>
  				<td>商品价格</td>
  				<td>
  					<input type="text" id="goodsPrice" name="goodsPrice"/>
  				</td>
  			</tr>
  			<tr>
  				<td>生产日期</td>
  				<td>
  					<input type="text" id="goodsTime" name="goodsTime" />
  				</td>
  			</tr>
  			
  			<tr>
  				<td>商品保质期</td>
  				<td>
  					<input type="radio" name="gstoretime" value="1个月"/>1个月
  					<input type="radio" name="gstoretime" value="3个月"/>3个月
  					<input type="radio" name="gstoretime" value="6个月"/>6个月
  					<input type="radio" name="gstoretime" value="永久"/>永久
  				</td>
  			</tr>
  			<tr>
  				<td>保存方式</td>
  				<td>
  					<input type="checkbox" name="gstoretype" value="冷藏"/>冷藏
  					<input type="checkbox" name="gstoretype" value="密封"/>密封
  					<input type="checkbox" name="gstoretype" value="透气"/>透气
  					<input type="checkbox" name="gstoretype" value="勿压"/>勿压
  					<input type="checkbox" name="gstoretype" value="随意"/>随意
  				</td>
  			</tr>
  			<tr>
  				<td>商品类别</td>
  				<td>
  					<select name="tname">
  						<option value="">--请选择--</option>
  					</select>
  				</td>
  			</tr>
  			<tr>
  				<td colspan="10">
  					<input type="submit" value="提交"/>
  					<input type="button" value="取消"/>
  				</td>
  			</tr>
  			
  		</table>
 	</form>
  </body>
</html>

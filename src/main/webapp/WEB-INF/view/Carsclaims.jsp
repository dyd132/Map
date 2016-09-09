<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>进行理赔</title>
 <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
  <link href="<%=request.getContextPath() %>/bootstrap/UAform.css" rel="stylesheet">
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
	$(function(){
		$("#rep").validate({
  			rules:{
  				rep_identity:{
  					required:true,
  					rangelength:[18,18],
  					number:true
  				},
  				rep_policy_id:{
					required:true,
					number:true
				},
				rep_insured:{
					required:true
					
				}
  				
  			},
  			messages:{
  				rep_identity:{
  					required:" &nbsp;&nbsp;&nbsp;X 身份证不能为空",
  					rangelength:" &nbsp;&nbsp;&nbsp;X 请输入18位身份信息",
  					number:" &nbsp;&nbsp;&nbsp;X 请输入数字"
  				},
  				rep_policy_id:{
  					required:" &nbsp;&nbsp;&nbsp;X 保单号不能为空",
  					number:" &nbsp;&nbsp;&nbsp;X 请输入数字"
  				},
  				rep_insured:{
  					required:"  &nbsp;&nbsp;&nbsp;X 受保人不能为空"
  				}
  			},
  			submitHandler:function(){
  				
  				$.post(
  					"<%=request.getContextPath()%>/cars/addrep.do",
  					{
  						rep_identity:$("#rep_identity").val(),
  						rep_policy_id:$("#rep_policy_id").val(),
  						rep_insured:$("#rep_insured").val(),
  					},
  					function(obj){
  						if(obj==1)
  						{
  							location.href="<%=request.getContextPath()%>/cars/Claimsuccess.do"
  						}
  						else if(obj==0)
  						{
  							location.href="<%=request.getContextPath()%>/cars/ClaimThere.do"
  						}
  					},
  					"json"
  				)

  			}
  		});
			
				
		
	});
</script>
<body>
<center>
<br/><br/><br/>
<form class="well" id="rep" style="width: 900px;">
<table id="proTab" class="table table-bordered table-hover" >
      <thead>
        <tr>
          <th colspan="22">提交报案信息</th>
        </tr>
      </thead>
      <tbody>
        <tr class="seltProdTr"><!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
          <td><label>身份证:</label></td>
          <td style="width: 500px;">
          	<input type="text" class="span3" style="width: 200px;" placeholder="请输入身份信息..." name="rep_identity" id="rep_identity">
          </td>
          <td><span class="help-inline">* 注册保单时填写的身份信息</span>  </td>
        </tr>
        <tr class="seltProdTr"><!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
          <td><label>保单号:</label></td>
          <td>
          	<input type="text" class="span3" style="width: 200px;" placeholder="请输入保单号..." name="rep_policy_id" id="rep_policy_id">
          </td>
          <td><span class="help-inline">* 注册保单时回馈给您的保单号信息</span>  </td>
        </tr>
        <tr class="seltProdTr"><!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
          <td><label>受保人:</label></td>
          <td>
          	<input type="text" class="span3" style="width: 200px;" placeholder="请输入受保人..."  name="rep_insured" id="rep_insured">
          </td>
          <td><span class="help-inline">* 您在购买保单时的被保人姓名</span>  </td>
        </tr>
        <tr class="seltProdTr"><!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
          <td colspan="11">
				<input type="submit" class="btn btn-primary" value="提交"/>&nbsp;&nbsp;&nbsp;
				<input type="reset" class="btn btn-remove" value="取消"/>
          </td>
        </tr>
      </tbody>
    </table>
</form>
</center>
</body>
</html>
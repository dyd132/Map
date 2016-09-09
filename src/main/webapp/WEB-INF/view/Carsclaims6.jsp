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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/diyUpload/css/webuploader.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/diyUpload/css/diyUpload.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/diyUpload/js/webuploader.html5only.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/diyUpload/js/diyUpload.js"></script>
<style type="text/css">
*{ margin:0; padding:0;}
#box{ margin:20px auto; width:800px; min-height:300px; background:#FF9}
</style>
</head>
<script type="text/javascript">
	$(function(){
		$("#rep").validate({
  			rules:{
  				rep_happened_place:{
  					required:true
  				},
  				rep_happened_date:{
					required:true,
					date:true
				},
				rep_happened_reason:{
					required:true
					
				}
  				
  			},
  			messages:{
  				rep_happened_place:{
  					required:" &nbsp;&nbsp;&nbsp;X 出事地点不能为空"
  				},
  				rep_happened_date:{
  					required:" &nbsp;&nbsp;&nbsp;X 出事时间不能为空",
  					date:" &nbsp;&nbsp;&nbsp;X 请输入正确的时间格式"
  				},
  				rep_happened_reason:{
  					required:"  &nbsp;&nbsp;&nbsp;X 出事原因不能为空"
  				}
  			},
  			submitHandler:function(){
  				
  				$.post(
  					"<%=request.getContextPath()%>/cars/addPerfectInfo.do",
  					{
  						rep_happened_place:$("#rep_happened_place").val(),
  						rep_happened_date:$("#rep_happened_date").val(),
  						rep_happened_reason:$("#rep_happened_reason").val(),
  					},
  					function(obj){
  						if(obj)
  						{
  							location.href="<%=request.getContextPath()%>/cars/Wansuccess.do"
  						}
  						
  					},
  					"json"
  				)

  			}
  		});
			
				
		$('#test').diyUpload({
			url:'<%=request.getContextPath()%>/cars/updaload.do',
			success:function( data ) {
				console.info( data );
			},
			error:function( err ) {
				console.info( err );	
			}
		});
	});
</script>
<body>
<center>
<br/><br/><br/>
<form class="well" id="rep" style="width: 1300px;">
<table id="proTab" class="table table-bordered table-hover" >
      <thead>
        <tr>
          <th colspan="22">完善资料</th>
        </tr>
      </thead>
      <tbody>
        <tr class="seltProdTr"><!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
          <td><label>出事地点:</label></td>
          <td style="width: 500px;">
          	<input type="text" class="span3" style="width: 200px;" placeholder="请输入出事地点..." name="rep_happened_place" id="rep_happened_place">
          </td>
          <td><span class="help-inline">* 进行理赔时必须填写的信息</span>  </td>
        </tr>
        <tr class="seltProdTr"><!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
          <td><label>出事时间:</label></td>
          <td>
          	<input type="text" class="span3" style="width: 200px;" placeholder="请输入出事时间..." name="rep_happened_date" id="rep_happened_date">
          </td>
          <td><span class="help-inline">* 进行理赔时必须填写的信息</span>  </td>
        </tr>
        <tr class="seltProdTr"><!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
          <td><label>出事原因:</label></td>
          <td>
          	<input type="text" class="span3" style="width: 200px;" placeholder="请输入出事原因..."  name="rep_happened_reason" id="rep_happened_reason">
          </td>
          <td><span class="help-inline">* 进行理赔时必须填写的信息</span>  </td>
        </tr>
        <tr class="seltProdTr"><!--动态表格proTab 下复选框被选择 tr 添加一个类 selProdTr 的背景色-->
          <td><label>上传车损图:</label></td>
          <td>
          	<div id="box">
				<div id="test" ></div>
			</div>
          	
          </td>
          <td><span class="help-inline">* 请提供尽量全面的信息方便我们进行合理的理赔</span>  </td>
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
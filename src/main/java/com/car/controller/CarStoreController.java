package com.car.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.CellRangeAddress;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.CarUser;
import com.car.entity.User;
import com.car.service.CarStoreService;
import com.car.utils.PageUtil;

@Controller
@RequestMapping("carstore")
public class CarStoreController {

	@Resource(name="carstoreservice")
	private CarStoreService storeservice;
	
	
	
	@RequestMapping("login")
	@ResponseBody
	public Integer login(User user,HttpServletRequest request){
		User user1 =storeservice.getUserInfo(user.getUser_name());
		System.out.println(user1);
		if(user1!=null){
			if(user1.getUser_pwd().equals(user.getUser_pwd())){
				request.getSession().setAttribute("carUserByUser", user1);
				if(user1.getUser_state()==1){
					return 1 ;
				}else{
				CarUser carUser = new CarUser(user1.getUser_id(), user1.getUser_name(), user1.getUser_pwd(), user1.getUser_lock(), user1.getUser_state(), user1.getUser_mail());
				request.getSession().setAttribute("carUserByUser", carUser);
					return 2 ;
				}
				
			}else{
				return 0 ;
			}
		}else{
			return 0;
		}
	}
	
	
	@RequestMapping("lookCharts")
	public String lookCharts(){
		return "lookCharts";
	}
	
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	
	@RequestMapping("datagrid")
	public String datagrid(Model model,HttpServletRequest request,String search,String page){
		if(search==null){
			search="";
		}
		
		int count = storeservice.getCount(search);
		
		PageUtil pageUtil = new PageUtil(page, 3, count);
		System.out.println(page);
		List<User> userlist = storeservice.getUserDatagrid(search,pageUtil.getStartPage(),pageUtil.getpageSize());
		model.addAttribute("userlist", userlist);
		model.addAttribute("search", search);
		model.addAttribute("CurrentPage", pageUtil.getCurrentPage());
		model.addAttribute("LastPage", pageUtil.getLastPage());
		model.addAttribute("page", page);
		return "userManager";
	}
	
	@RequestMapping("user_edit")
	@ResponseBody
	public String user_edit(Integer user_id){
		System.out.println("edit........"+user_id);
		return "updateAndadd";
	}
	
	@RequestMapping("user_delete")
	@ResponseBody
	public boolean user_delete(Integer user_id){
		int i =storeservice.delUser(user_id);
		if(i>0){
			return true;
		}else{
			return false;
		}
		
	}
	
	@RequestMapping("user_add")
	@ResponseBody
	public String user_add(){
		return null;
	}
	
	@RequestMapping("downpoi")
	public String downpoi(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		response.setContentType("application/x-execl");
		response.setHeader("Content-Disposition", "attachment;filename=" + new String("用户信息表.xls".getBytes(), "ISO-8859-1"));
		
		ServletOutputStream outputStream = response.getOutputStream();
		
		//1.先创建工作薄对
		HSSFWorkbook workBook2003 = new HSSFWorkbook();
		
		//2.创建sheet工作表
		HSSFSheet sheet = workBook2003.createSheet("sheet1");
		
		//创建一个合并单元格
		CellRangeAddress ra = new CellRangeAddress(0, 0, 0, 4);
		
		//创建单元格样式
		HSSFCellStyle style1 = workBook2003.createCellStyle();
		style1.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		style1.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		//创建字体
		HSSFFont font1 = workBook2003.createFont();
		font1.setBoldweight((short) 800);
		font1.setFontHeightInPoints((short) 18);
		//将字体赋给样式
		style1.setFont(font1);
		
		//创建单元格样式
		HSSFCellStyle style2 = workBook2003.createCellStyle();
		style2.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		style2.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		//创建字体
		HSSFFont font2 = workBook2003.createFont();
		font2.setBoldweight((short) 800);
		font2.setFontHeightInPoints((short) 14);
		//将字体赋给样式
		style2.setFont(font2);
		
		//将创建好的单元格对象赋予给表1
		sheet.addMergedRegion(ra);
		
		//3.创建行
		HSSFRow row = sheet.createRow(0);
		//获取第一行中的第一个单元格
		HSSFCell cell = row.createCell(0);
		//将样式赋予给单元格
		cell.setCellStyle(style1);
		cell.setCellValue("用户列表");
		
		//*************************************************
		
		//获取第二行
		HSSFRow row2 = sheet.createRow(1);
		String[] titles = {"序号","姓名","密码","邮箱"};
		for (int i = 0; i < titles.length; i++) {
			HSSFCell cell2 = row2.createCell(i);
			cell2.setCellStyle(style2);
			cell2.setCellValue(titles[i]);
		}
		
		//接受数据源
		List<User> list = storeservice.getAllUserInfo();
		//创建行
		
		HSSFRow rowTemp =  null;
		HSSFCell cellTemp =  null;
		
		for (int i=0 ; i < list.size(); i++) {
			rowTemp = sheet.createRow(i+2);
			
			//创建列并动态赋值
			cellTemp = rowTemp.createCell(0);
			cellTemp.setCellValue(list.get(i).getUser_id());
			
			cellTemp = rowTemp.createCell(1);
			cellTemp.setCellValue(list.get(i).getUser_name());
			
			cellTemp = rowTemp.createCell(2);
			cellTemp.setCellValue(list.get(i).getUser_pwd());
			
			cellTemp = rowTemp.createCell(3);
			cellTemp.setCellValue(list.get(i).getUser_mail());
		}
		
		//工作流
		workBook2003.write(outputStream);
		outputStream.close();
		return null;
	}
	
}

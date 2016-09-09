package com.car.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;  
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.car.entity.User;

public class Poi {
	public int POI(List<User> list) throws Exception{
		
	HSSFWorkbook hssfWorkbook = new HSSFWorkbook();
	HSSFSheet sheet = hssfWorkbook.createSheet("用户记录表");
	HSSFRow row = sheet.createRow(0);
	
	HSSFCell cel1 = row.createCell(0);
	cel1.setCellValue("序号");
	HSSFCell cel2 = row.createCell(1);
	cel1.setCellValue("用户名");
	HSSFCell cel3 = row.createCell(2);
	cel2.setCellValue("用户密码");
	HSSFCell cel4 = row.createCell(3);
	cel4.setCellValue("邮箱");
	
	int j=0;
	HSSFRow row1 = null;
	HSSFCell celn = null;
	for (int i = 1; i <list.size(); i++) {
		row1 = sheet.createRow(i);
		celn = row1.createCell(0);
		celn.setCellValue(list.get(i-1).getUser_id());
		celn = row1.createCell(1);
		celn.setCellValue(list.get(i-1).getUser_name());
		celn = row1.createCell(2);
		celn.setCellValue(list.get(i-1).getUser_pwd());
		celn = row1.createCell(3);
		celn.setCellValue(list.get(i-1).getUser_mail());
	}
	String filepath="D:/bbb";
	File file = new File(filepath);
	if(!file.exists()){
		file.mkdirs();
		System.out.println("false>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	}
	String path="D:/bbb/汽车交易记录.xls";
	File file2 = new File(path);
	FileOutputStream fileOutputStream = new FileOutputStream(file2);
	hssfWorkbook.write(fileOutputStream);
	fileOutputStream.close();
	return 1;
	
}
}


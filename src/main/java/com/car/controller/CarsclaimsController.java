package com.car.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.car.entity.CarDamage;
import com.car.entity.CarUser;
import com.car.entity.Report;
import com.car.service.CatClaimService;

@Controller
@RequestMapping("cars")
public class CarsclaimsController {

	@Autowired
	private CatClaimService catClaimService;
	
	
	/**
	 * 
	 * 用户登录方法
	 * @return
	 */
	@RequestMapping("carlogin")
	public String carlogin(CarUser carUser,HttpServletRequest request){
		
		CarUser carUserByUser=catClaimService.getCarUserByUser(carUser);
		request.getSession().setAttribute("carUserByUser", carUserByUser);
		if(carUserByUser.getUser_state()==0)
		{
			return "redirect:/cars/claims.do";
		}
			return "redirect:/cars/administrator.do";
	}
	
	/**
	 * 
	 * 管理员账号登录
	 */
	@RequestMapping("administrator")
	public String administrator(HttpServletRequest request){
		
		List<Report> reportList =catClaimService .getReportList();
		request.getSession().setAttribute("report", reportList);
		return "administrator";
	}
	
	/**
	 * 管理员通过报案信息
	 */
	@ResponseBody
	@RequestMapping("adminpass")
	public boolean adminpass(String userid){
		System.out.println(userid);
		Report report;
		
		String[] split = userid.split(",");
		for (int i = 0; i < split.length; i++) {
			String[] split2 = split[i].split("#");
			report=catClaimService.getReportByUserId(Integer.parseInt(split2[0]));
			if(split2[1].equals("y"))
			{
				report.setRep_state(2);
				catClaimService.updateReportState(report);
			}
			if(split2[1].equals("n"))
			{
				report.setRep_state(-1);
				catClaimService.updateReportState(report);
			}
		}
		
		return true;
	}
	
	/**
	 * 
	 * 普通用户登录
	 * @param request
	 * @return
	 */
	@RequestMapping("claims")
	public String ToclaimsPage(HttpServletRequest request){
		//需要连接用户登录修改
		CarUser carUser= (CarUser) request.getSession().getAttribute("carUserByUser");
		
		Integer user_id=carUser.getUser_id();
		
		
		Report reportByUserId=catClaimService.getReportByUserId(user_id);
		
		
		if(reportByUserId==null || reportByUserId.getRep_state()==1)
		{
			return "Carsclaims";
		}
		if(reportByUserId.getRep_state()==2)
		{
			return "Carsclaims6";
		}
		if(reportByUserId.getRep_state()==-1)
		{
			return "Carsclaims8";
		}
		request.getSession().setAttribute("reportByUserId", reportByUserId);
			return "Carsclaims7";
		
	}
	
	
	/**
	 * 重新进行报案
	 * @param request
	 * @param report
	 * @return
	 */
	@RequestMapping("agianReport")
	public String agianReport(HttpServletRequest request){
		
		CarUser carUser=(CarUser) request.getSession().getAttribute("carUserByUser");
		
		catClaimService.deleteByCarUser(carUser.getUser_id());
		return "redirect:/cars/claims.do";
	}
	
	/*
	 * 报案提交
	 * 
	 */
	@ResponseBody
	@RequestMapping("addrep")
	public Integer addrep(HttpServletRequest request,Report report){
		
		//需要切换到用户登录的id
		CarUser carUser= (CarUser) request.getSession().getAttribute("carUserByUser");
		
		Integer user_id=carUser.getUser_id();
		/*
		
		Report reportByUserId=catClaimService.getReportByUserId(user_id);*/
		
		
		report.setUser_id(user_id);
		
		
		Report reportbyIdCard=catClaimService.getReportByUserId(report.getUser_id());
		
		if(reportbyIdCard==null)
		{
			//判断状态
			int  state=1;
			
			report.setRep_state(state);
			
			int saveReport = catClaimService.saveReport(report);
			
			
			if(saveReport>0)
			{
				request.getSession().setAttribute("report", report);
				
				return  1;
			}
			else
			{
				return -1;
			}
		}
		else
		{
			
			
			request.getSession().setAttribute("report", report);
			
			return 0;
		}
	}
	
	
	/**
	 * 
	 * 报案成功跳往success页面
	 * 
	 */
	@RequestMapping("Claimsuccess")
	public String Claimsuccess(){
		
		return "Carsclaims2";
	}
	
	/**
	 * 
	 * 报案已存在跳往存在页面
	 * 
	 */
	@RequestMapping("ClaimThere")
	public String ClaimThere(HttpServletRequest request){
		
		Report report = (Report)request.getSession().getAttribute("report");
		
		CarUser carUser= (CarUser) request.getSession().getAttribute("carUserByUser");
		
		Integer user_id=carUser.getUser_id();
		
		
		Report reportbyIdCard=catClaimService.getReportByUserId(user_id);
		
		request.getSession().setAttribute("reportbyIdCard", reportbyIdCard);
		
		List<CarDamage> list=catClaimService.getImagesByUserId(user_id);
		
		return "Carsclaims3";
	}
	
	
	/**
	 * 
	 * 查询保单进度页面
	 * 
	 */
	@RequestMapping("claimsjin")
	public String claimsjin(){
		
		return "Carsclaims4";
	}
	
	/**
	 * 
	 * 根据身份信息查询保单进度
	 * 
	 */
	
	@ResponseBody
	@RequestMapping("getReportprogress")
	public Report getReportprogress(Report report)
	{
		Report ReportAll=catClaimService.getReportByRe(report);
		
		return ReportAll;
	}
	
	/**
	 * 
	 * 不存在报案信息页面
	 */
	@RequestMapping("claimsBu")
	public String claimsBu(){
		
		return "Carsclaims5";
	}
	
	/**
	 * 
	 * 多文件上传
	 * 
	 */
	@RequestMapping(value = "updaload", method = RequestMethod.POST)
	@ResponseBody
    public String upload(HttpServletRequest request, @RequestParam("file") MultipartFile file, ModelMap model) {

			//需要连接用户登录修改
		CarUser carUser= (CarUser) request.getSession().getAttribute("carUserByUser");
		
		Integer user_id=carUser.getUser_id();
		
		List<CarDamage> list= new ArrayList<CarDamage>();
		CarDamage carDamage = new CarDamage();
		
		//tomcat中项目下的Upload文件中
        String path = request.getSession().getServletContext().getRealPath("upload");
        // String fileName = file.getOriginalFilename();
        
        String fileName = new Date().getTime()+".jpg";
        
        String pathimage=request.getContextPath()+"/upload/"+fileName;
       
        carDamage.setCd_image_url(pathimage);
        carDamage.setUser_id(user_id);
        File targetFile = new File(path, fileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }

        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        list.add(carDamage);
        
        catClaimService.saveUploadpictures(carDamage);
        return "result";
    }
	
	/**
	 * 
	 * 完善信息
	 */
	@ResponseBody
	@RequestMapping("addPerfectInfo")
	public boolean addPerfectInfo(HttpServletRequest request,Report report){
		
		CarUser carUser= (CarUser) request.getSession().getAttribute("carUserByUser");
		
		report.setUser_id(carUser.getUser_id());
		int i=catClaimService.updateReport(report);
		
		return true;
	}
	
	/**
	 * 
	 * 完善成功
	 */
	@RequestMapping("Wansuccess")
	public String Wansuccess(){
		
		return "Carsclaims9";
	}
	
	/**
	 * 
	 * 获得该用户的车损图
	 */
	@ResponseBody
	@RequestMapping("getImages")
	public List<CarDamage> getImages(HttpServletRequest request,String sd){
		
		request.getSession().setAttribute("sd", sd);
		List<CarDamage> list=catClaimService.getImagesByUserId(Integer.parseInt(sd));
		
		return list;
	}
		
	
	/**
	 * 
	 * 理赔完成
	 */
	@RequestMapping("wancheng")
	public String wancheng(HttpServletRequest request){
		int state=3;
		String s=(String) request.getSession().getAttribute("sd");
		Report report = new Report();
		report.setRep_state(state);
		report.setUser_id(Integer.parseInt(s));
		catClaimService.updateReportState(report);
		
		return "redirect:/cars/administrator.do";
	}
	
	/**
	 * 重新受理
	 */
	@RequestMapping("reset")
	public String reset(Integer user_id){
		catClaimService.deleteReport(user_id);
		return "redirect:/";
	}
	
			
}


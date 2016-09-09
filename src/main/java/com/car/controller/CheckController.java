package com.car.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.Checktou;
import com.car.service.CheckI;

@Controller
@RequestMapping("cha")	
public class CheckController {
	
	@Resource(name="cservice")
	private CheckI cservice;
	
	@RequestMapping("check")
	public String check(HttpServletRequest request,Checktou checktou){
		List<Checktou> list=cservice.check(checktou);
		if(list.size()>0){
			request.setAttribute("list", list);
			return "baodan";
		}else{
			return "error";
		}
	}
	



	
	
	
	

}

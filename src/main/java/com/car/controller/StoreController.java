package com.car.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.Insurance;
import com.car.entity.Order;
import com.car.service.StoreService;
import com.car.vo.SuccessVO;

@Controller
@RequestMapping("/store")
public class StoreController {

	@Resource(name="storeService")
	private StoreService storeservice;
	
	@RequestMapping("/finduser.do")
	public String finduser(){
		return "storereturn";
	}
	
	@RequestMapping("/findlogin.do")
	public String findlogin(HttpServletRequest request){
		String suggest = request.getParameter("suggest");
		HttpSession session = request.getSession();
		if(suggest=="1"){
			session.setAttribute("suggesr",suggest);
		}else{
			session.setAttribute("suggesr",suggest);
		}
		return "storesuccess";
	}
	
	@RequestMapping("/findinsurance.do")
	@ResponseBody
	public List<Insurance> findinsurance(HttpServletRequest request){
		List<Insurance> list=storeservice.findinsurance();
		return list;
	}
	
	@RequestMapping("/addorder.do")
	@ResponseBody
	public SuccessVO addorder(HttpServletRequest request){
		String monry = request.getParameter("monry");
		UUID randomUUID = UUID.randomUUID();
		String uuid = randomUUID.toString();
		Date date = new Date();
		String time = new SimpleDateFormat("yyyy-dd-mm").format(date);
		Order c = new Order();
		c.setOrder_price(Double.parseDouble(monry));
		c.setOrder_time(time);
		c.setOrder_uuid(uuid);
		int i=storeservice.addorder(c);
		SuccessVO successVO = new SuccessVO();
		if(i>0){
			boolean flag=true;
			successVO.setFlag(flag);
			return successVO;
		}else{
			boolean flag=false;
			successVO.setFlag(flag);
			return successVO;
		}
	}
	
	@RequestMapping("/addshoping.do")
	@ResponseBody
	public SuccessVO addshoping(HttpServletRequest request){
		String gid = request.getParameter("gid");
		Insurance insurance=storeservice.addshoping(gid);
		String name=insurance.getAu_name();
		Map<String,Integer> map = new HashMap<String,Integer>();
		SuccessVO successVO = new SuccessVO();
		if(insurance!=null){
			boolean flag=true;
			successVO.setFlag(flag);
			if(map == null) {
	            map.put(name, 1);
	        } else { 
	            if(map.containsKey(name)) {
	                int num = map.get(name);
	                map.put(name, num+1);
	            } else { 
	                map.put(name, 1);
	            }
	        }
	        request.getSession().setAttribute("cart", map);
			return successVO;
		}
		else{
			boolean flag=false;
			successVO.setFlag(flag);
			return successVO;
		}
		 
		
}
	
	@RequestMapping("/seegw.do")
	public String seegw(){
		return "gw";
	}
	
	@RequestMapping("/addcookie.do")
	public String addcookie(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 // 1、获得当前用户浏览商品id
        String id = request.getParameter("id");
        // 2、获得用户浏览记录列表
        Cookie[] cookies =  request.getCookies();
        // 查找访问记录列表 name:visitlist ----- 1,3,5,6
        String visitlist = null;
        if (cookies != null) { // 存在cookie
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("visitlist")) {
                    visitlist = cookie.getValue();
                    break;
                }
            }
            if (visitlist == null) {
                // 列表不存在,当前商品第一件商品
                Cookie cookie = new Cookie("visitlist", id);
                cookie.setMaxAge(60 * 60);
                response.addCookie(cookie);
                return "storesuccess";
            } else {
                // 3、判断当前商品是否已经在列表中
                String[] existIds = visitlist.split(",");
                for (String exsitId : existIds) {
                    if (exsitId.equals(id)) { // id存在在列表中
                        return "storesuccess";
                    }
                }
                // 4、如果当前商品不在列表中，添加到列表
                Cookie cookie = new Cookie("visitlist", visitlist + "," + id);
                cookie.setMaxAge(60 * 60);
                response.addCookie(cookie);
                return "storesuccess";
            }
        } else {
            // 表示 并没有该站点的任何cookie
            Cookie cookie = new Cookie("visitlist", id);
            cookie.setMaxAge(60 * 60);
            response.addCookie(cookie);
            return "storesuccess";
        }
	}
	
	@RequestMapping("/clearcookie.do")
	public String clearcookie(HttpServletRequest request, HttpServletResponse response) throws IOException{
		Cookie cookie=new Cookie("visitlist","");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
		return "storesuccess";
	}
	
	@RequestMapping("/buysession.do")
	public String buysession(HttpServletRequest request, HttpServletResponse response) throws IOException{
	    //1.获得商品的id
        String id=request.getParameter("id");
        //2.获得购物车cart--从session得到
        HttpSession session=request.getSession();
        Map<String, Integer> cart=(Map<String, Integer>)session.getAttribute("cart");//如果session中没有购物车呢
        if(cart==null)
        {//原来的session中并不存在购物车
            cart=new HashMap<String, Integer>();
        }
        //3.判断商品是否存在购物车中
        if(cart.containsKey(id))
        {
            //4.存在数量+1
            int number=cart.get(id);
            cart.put(id, number+1);
        }else{
            //5.不存在 将商品存入购物车   数量1
            cart.put(id, 1);
        }
        session.setAttribute("cart", cart);
        return "gw";
	}
	
	@RequestMapping("/carmanage.do")
	public String carmanage(HttpServletRequest request) throws Exception{
		HttpClient clite = HttpClients.createDefault();  
		 HttpGet get= new HttpGet("http://192.168.10.42:8080/CarManage/car/carList.action");
		 HttpResponse response = clite.execute(get);
		 HttpEntity entity = response.getEntity();
		 String string1 = EntityUtils.toString(entity,"UTF-8");
		 request.getSession().setAttribute("sssss", string1);
		 return "aa";
	}
}

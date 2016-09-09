package com.car.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.car.entity.User;

public class LoginInterceptor implements HandlerInterceptor {

	private List<String> excludedUrls;

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object ha) throws Exception {
		
		//定义不需要拦截的路径，最起码包含去往登陆页面以及真正的登陆不可以拦截。
		//System.out.println(excludedUrls);
		
		boolean flag = false;
		
		//获取当前访问所触发的controller
		String URI = request.getRequestURI().toString();
		//System.out.println(URI);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		if(excludedUrls.contains(URI)){    //直接放行，不需要拦截处理
			//System.out.println("放行>>>>>>>>>>>>>>");
			flag = true;
		}else{
			//System.out.println("已经拦截，即将做对应的预处理工作>>>>>>>>>>>>>>>");
			//判断用户是否已经登录。
			if(user != null){   //说明已经登录
				flag = true;
			}else{      //没有登陆，充定向到登陆页面
				flag = false;
				request.setAttribute("error", "您还未登录用户,请登陆！");
				request.getRequestDispatcher("/login.html").forward(request, response);  
			}
		}
		return flag;
	}
	
	
	
	
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
					throws Exception {
		
	}
	
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	
	//---------------------------------

	public List<String> getExcludedUrls() {
		return excludedUrls;
	}

	public void setExcludedUrls(List<String> excludedUrls) {
		this.excludedUrls = excludedUrls;
	}
}

package cn.xh.ssm1.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jsp")
public class RemoveUrlJsp {
	
	@RequestMapping("/*")
	public String remove(HttpServletRequest request) {
		
		System.out.println(request.getPathInfo());
		System.out.println(request.getRequestURI());
		System.out.println(request.getPathInfo());
		System.out.println(request.getPathInfo());
		return "success";
		
	}

}

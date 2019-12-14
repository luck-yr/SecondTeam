package com.hqyj.dlyzy.CRMsystem.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hqyj.dlyzy.CRMsystem.model.User;
import com.hqyj.dlyzy.CRMsystem.service.UserService;

@Controller
@RequestMapping("userController")
public class UserController {

	@Autowired
	private UserService UserServiceImpl;
	
	
	@RequestMapping("test")
	@ResponseBody
	public String test() {
		return "test";
	}
	
	@RequestMapping("/login.do")
	@ResponseBody
	public String login(User user) {
		Subject subject = SecurityUtils.getSubject();
		
		
		return "view/frame/main.jsp";
	}
	
}

package com.mycomp.addressbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycomp.addressbook.dto.Login;

@Controller
public class AddressBookController {
	
	@RequestMapping("welcome.htm")
	public String welcome() {
		return "welcome";
	}
	
	/*@RequestMapping("userlogin.htm")
	public ModelAndView userLogin(Login user) {
		Login response=userService.userLogin(user.getUserid(),user.getPassword());
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("loginresponse",response);
		modelAndView.setViewName("success.jsp");
		
		return modelAndView;
		
		
	}*/
}

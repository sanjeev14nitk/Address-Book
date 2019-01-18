package com.mycomp.addressbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddressBookController {
	@RequestMapping("welcome.htm")
	public String welcome() {
		return "welcome";
	}
}

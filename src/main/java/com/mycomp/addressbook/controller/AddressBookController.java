package com.mycomp.addressbook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.mycomp.addressbook.dao.LoginDao;
import com.mycomp.addressbook.dao.SearchDao;
import com.mycomp.addressbook.dao.SearchDaoImpl;
import com.mycomp.addressbook.dao.UserDAO;
import com.mycomp.addressbook.dto.Login;
import com.mycomp.addressbook.dto.Message;
import com.mycomp.addressbook.dto.SearchContact;
import com.mycomp.addressbook.dto.UserInfo;

@Controller
public class AddressBookController {
	
	@Autowired 
	private LoginDao loginDao;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private SearchDao searchDAO;
	private ModelAndView mv;
	
	@RequestMapping("login.htm")
	public String welcome() {
		return "login";
	}
	
	@RequestMapping("userlogin.htm")
	public ModelAndView userLogin(Login login) {
		String status = loginDao.userLogin(login);
		
		mv = new ModelAndView();
		if(status != null)
		{
			mv.setViewName("success");
			mv.addObject("user", login.getUserid());
		}
		
		return mv;

	}
	
	@RequestMapping("success.htm")
	public @ResponseBody Message addContact(@RequestBody UserInfo contact) {
		
		System.out.println("Inside Controller ---" + mv.getModel());
		
		String userId = (String) mv.getModel().get("user");
		String status = userDAO.addContact(contact, userId);
		
		System.out.println("Inside Controller ending -- " + status);
		Message msg = new Message();
		if(status.equals("successful")){
			msg.setType("success");
			msg.setMessage("updated Successfully");
		}
		else {
			msg.setType("failure");
			msg.setMessage("Problem updating contact");
		}
		return msg;
	}
	
	@RequestMapping("search.htm")
	public @ResponseBody UserInfo searchContact(@RequestParam("userId") String userId) {
		
		System.out.println("Inside Controller searchContact---" + userId);

		return searchDAO.SearchContact(userId);

	}
	
}

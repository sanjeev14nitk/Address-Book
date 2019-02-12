package com.mycomp.addressbook.dao;

import com.mycomp.addressbook.dto.Login;
import com.mycomp.addressbook.dto.SearchContact;
import com.mycomp.addressbook.dto.UserInfo;

public interface UserDAO {
	
	String addContact(UserInfo contact, String userId);
	
}

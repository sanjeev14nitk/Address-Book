package com.mycomp.addressbook.dao;

import com.mycomp.addressbook.dto.SearchContact;
import com.mycomp.addressbook.dto.UserInfo;

public interface SearchDao {
		
		UserInfo SearchContact(String userId);
}

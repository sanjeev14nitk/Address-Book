package com.mycomp.addressbook.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mycomp.addressbook.dto.Login;

@Repository
@Transactional
public class AbOperationsImpl implements AbOperations {

	@Autowired
	private JdbcTemplate jdbctemplate;

	public String userLogin(final Login login) {
		
		String qry = "SELECT userid FROM project.login WHERE username = ? AND password = ? ";
		
		String name = jdbctemplate.queryForObject(qry, new Object[] {login.getUsername(),login.getPassword()}, String.class);
		
        if(name!=null && !name.isEmpty()) {
        	return login.getUserid();        
        	}	
		else{
			return null;
			}
	}		
	
}



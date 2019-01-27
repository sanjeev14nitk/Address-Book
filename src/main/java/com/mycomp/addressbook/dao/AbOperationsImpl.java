package com.mycomp.addressbook.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.mycomp.addressbook.dto.Login;

@Service
public class AbOperationsImpl implements AbOperations {

	@Autowired
	private JdbcTemplate jdbctemplate;

	public boolean userLogin(final Login login) {
		
		String qry = "SELECT COUNT(*) FROM public.emp_Cred WHERE username = ? AND password = ? ";
		
		int count = jdbctemplate.queryForObject(qry, new Object[] {login.getUsername(),login.getPassword()}, Integer.class);
		

				if(count == 1)
				{
					return true;
				}
				else
				{
					return false;
				}
		    }		
		
	
	
}



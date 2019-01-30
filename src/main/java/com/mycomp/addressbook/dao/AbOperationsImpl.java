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

	public boolean userLogin(final Login login) {
		
		String qry = "SELECT COUNT(*) FROM project.login WHERE username = ? AND password = ? ";
		
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



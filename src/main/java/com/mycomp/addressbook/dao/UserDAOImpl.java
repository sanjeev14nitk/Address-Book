package com.mycomp.addressbook.dao;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mycomp.addressbook.dto.UserInfo;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private JdbcTemplate jdbctemplate;
	
	public String addContact(UserInfo contact, String userId) {
		System.out.println("Inside DAOImpl class");	
		
		String sql1="INSERT INTO project.generalinfo (infoid, userid, firstname, lastname, gender, dob) VALUES (?, ?, ?, ?, ?, ?)";
		Random rand1 = new Random();
		int infoKey = rand1.nextInt(100);
		int rowsAffectedgenInfo=jdbctemplate.update(sql1, infoKey, userId,contact.getfName(),contact.getlName(),contact.getGender(),contact.getDateOfBirth());
		
	
		String sql2="INSERT INTO project.address (addressid, userid, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?)";
		Random rand2 = new Random();
		int addrKey = rand2.nextInt(100);
		int rowsAffectedaddres=jdbctemplate.update(sql2, addrKey, userId,contact.getStreetAddr(),contact.getCity(),contact.getState(),contact.getZipCode());
	
		
		String sql3="INSERT INTO project.contactinfo (contactid, userid, homephone, officeno, cellno, email) VALUES (?, ?, ?, ?, ?, ?)";
		Random rand3 = new Random();
		int contactKey = rand3.nextInt(100);
		int rowsAffectedphone=jdbctemplate.update(sql3, contactKey, userId,contact.getHomePhone(),contact.getOfcPhone(),contact.getCellPhone(),contact.getEmail());
	
		if((rowsAffectedgenInfo == 1) && (rowsAffectedaddres == 1) && (rowsAffectedphone == 1)) {
			return "successful";
		}
		else {
		return "failure";
		}
	}


}

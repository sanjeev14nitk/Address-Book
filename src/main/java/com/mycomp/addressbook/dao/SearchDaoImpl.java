package com.mycomp.addressbook.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mycomp.addressbook.dto.UserInfo;


@Repository
@Transactional
public class SearchDaoImpl implements SearchDao {

	@Autowired
	private JdbcTemplate jdbctemplate;
	
	public UserInfo SearchContact(String userId) {
		
		String searchquery = 
				"SELECT A.firstname as fName, A.lastname as lName, A.gender as gender, A.dob as dateOfBirth," + " "
					+ " B.address as streetAddr, B.city as city, B.state as state, B.zip as zipCode," + " "
					+ " C.homephone as homePhone, c.officeno as ofcPhone, C.cellno as cellPhone, C.email as email\r\n"
					+ " FROM project.generalinfo A\r\n"
					+ " JOIN project.address B ON A.userid = B.userid\r\n"
					+ " JOIN project.contactinfo C ON A.userid = C.userid\r\n"
					+ " WHERE A.userid = ?";
		
		
		List<UserInfo> userinfo = jdbctemplate.query(searchquery, new Object[] {userId}, new BeanPropertyRowMapper<UserInfo>(UserInfo.class));
		
		if(userinfo!=null && userinfo.size()>0) {
			return userinfo.get(0);
		}
		return null;
	}
	
}

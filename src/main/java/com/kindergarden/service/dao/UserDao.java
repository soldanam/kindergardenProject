package com.kindergarden.service.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kindergarden.service.dto.UserDto;

@Repository
public class UserDao implements UserDaoImpl{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int userRegister(UserDto userDto) {
		String sql = 
				"INSERT INTO USER "+
				"(USER_NAME, USER_PASSWORD, USER_EMAIL, USER_PROFILE_IMAGE_URL) "+
				"VALUES(?,?,?,?)";
		return jdbcTemplate.update(sql, userDto.getUserName(), userDto.getUserPassword(), userDto.getUserEmail(), userDto.getProfileImageUrl());
	}

}

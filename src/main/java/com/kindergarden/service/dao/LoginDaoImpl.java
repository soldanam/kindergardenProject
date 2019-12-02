package com.kindergarden.service.dao;

import com.kindergarden.service.dto.UserDto;

public interface LoginDaoImpl {
	//public String login(String userEmail);
	public UserDto login(String userEmail);
}

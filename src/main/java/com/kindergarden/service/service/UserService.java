package com.kindergarden.service.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dto.UserDto;

public interface UserService {

	   //int userRegister(UserDto userDto);

	int userRegister(UserDto userDto, MultipartFile file) throws IllegalStateException, IOException;
	   
	//   public int userRegister(UserDto userDto);

	}
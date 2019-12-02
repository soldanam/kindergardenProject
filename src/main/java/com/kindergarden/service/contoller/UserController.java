package com.kindergarden.service.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dto.UserDto;
import com.kindergarden.service.service.UserService;
import com.kindergarden.service.service.UserServiceImpl;

@Controller
public class UserController {

	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping(value="/register",method = RequestMethod.GET)
	public String registerForm() {
		return "register";
	}
	
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	@ResponseBody
	public int register(UserDto userDto, MultipartFile file)  throws Exception{
		System.out.println("/register");
		return userService.userRegister(userDto, file);
	}
	
}

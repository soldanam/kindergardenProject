package com.kindergarden.service.contoller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kindergarden.service.dto.UserDto;
import com.kindergarden.service.service.LoginService;
import com.kindergarden.service.service.LoginServiceImpl;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginServiceImpl loginService;
	

	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String registerForm() {
		return "login";
	}
	
	/*
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	   @ResponseBody
	   public String login(String userEmail, String userPassword) {
	      
	      logger.debug("/login");
	      String pwd = loginService.login(userEmail);

	      if(pwd.equals(userPassword)) {
	         return "true";
	      }else {
	         return "false";
	      }
	   }
*/
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	   @ResponseBody
	   public String login(HttpSession session, String userEmail, String userPassword) {
	      
	      logger.debug("/login");
	      UserDto dto = loginService.login(userEmail);
	      System.out.println(dto.getUserEmail());
	      if(dto.getUserPassword().equals(userPassword)) {
	         session.setAttribute("userDto", dto);
	         return "true";
	      }else {
	         return "false";
	      }
	      
	   }
	
}

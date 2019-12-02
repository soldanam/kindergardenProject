package com.kindergarden.service.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.kindergarden.service.dao.LoginDaoImpl;

import com.kindergarden.service.dto.UserDto;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	  @Autowired
      LoginDaoImpl loginDao;
      
	  /*
      @Override
      public String login(String userEmail) {
         // TODO Auto-generated method stub
         return loginDao.login(userEmail);
      }*/
	  @Override
	   public UserDto login(String userEmail) {
	      return loginDao.login(userEmail);
	   }
}

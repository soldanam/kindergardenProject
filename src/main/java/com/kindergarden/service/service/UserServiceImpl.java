package com.kindergarden.service.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dao.UserDaoImpl;
import com.kindergarden.service.dto.UserDto;
@Service("userService")
public class UserServiceImpl implements UserService{
      @Autowired
         UserDaoImpl userDao;
         
  	
		 String userUploadRealPath = 
		         "C:" + File.separator + "eclipse-workspace" + File.separator + "kindergardenProject" + File.separator + 
		      "src" + File.separator + "main" + File.separator +
		         "webapp" + File.separator + "resources" + File.separator + "userFiles";
		   
		   String userFileFolder = "resources/userFiles";
		   
	   String userDeleteRealPath=
			   "C:" + File.separator + "eclipse-workspace" + File.separator + "kindergardenProject" + File.separator + 
			      "src" + File.separator + "main" + File.separator +
			         "webapp" + File.separator ;
	   
	   
         @Override
         public int userRegister(UserDto userDto, MultipartFile file) throws IllegalStateException, IOException {
            // TODO Auto-generated method stub
        	 
        	 if( file != null ) {
    	         //Random Fild Id
    	         UUID uuid = UUID.randomUUID();
    	         
    	         //file extention
    	         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
    	         
    	         String savingFileName = uuid + "." + extension;
    	         
    	         File saveFile = new File(userUploadRealPath, savingFileName); 
    	         file.transferTo(saveFile);
    	        
    	         String userFileUrl = userFileFolder + "/" + savingFileName;
    	         userDto.setProfileImageUrl(userFileUrl);
    	         
    	         
    	         
    	      }
            return userDao.userRegister(userDto);
         }
}
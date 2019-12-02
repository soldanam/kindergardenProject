package com.kindergarden.service.service;

import java.io.File;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dao.BabyDao;
import com.kindergarden.service.dao.BabyDaoImpl;
import com.kindergarden.service.dao.UserDaoImpl;
import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardFileDto;
import com.kindergarden.service.dto.UserDto;

@Service("babyService")
public class BabyServiceImpl implements BabyService{
	private static final Logger logger = LoggerFactory.getLogger(BabyServiceImpl.class);
	     
	@Autowired
         BabyDaoImpl babyDao;
         
         @Override
         public int babycheck(String userEmail) {
            
            return babyDao.babycheck(userEmail);
         }



		public String babyclassmatch(int year) {
			return babyDao.babyclassmatch(year);
		}
		
		
		 String babyUploadRealPath = 
		         "C:" + File.separator + "eclipse-workspace" + File.separator + "kindergardenProject" + File.separator + 
		      "src" + File.separator + "main" + File.separator +
		         "webapp" + File.separator + "resources" + File.separator + "babyFiles";
		   
		   String babyFileFolder = "resources/babyFiles";
		   
	   String babyDeleteRealPath=
			   "C:" + File.separator + "eclipse-workspace" + File.separator + "kindergardenProject" + File.separator + 
			      "src" + File.separator + "main" + File.separator +
			         "webapp" + File.separator ;
	   
	   @Override
	   @Transactional("txManager")
	   public int babyInsertFile(BabyDto dto, MultipartFile file) throws Exception{
	      
	      //int babyId = babyDao.babyInsertFile(dto,file);
	      if( file != null ) {
	         //Random Fild Id
	         UUID uuid = UUID.randomUUID();
	         
	         //file extention
	         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
	         
	         String savingFileName = uuid + "." + extension;
	         
	         File saveFile = new File(babyUploadRealPath, savingFileName); 
	         file.transferTo(saveFile);
	        
	         String babyFileUrl = babyFileFolder + "/" + savingFileName;
	         dto.setBabyProfileImageUrl(babyFileUrl);
	         
	         
	         
	      }
	      
	     
	      int babyId= babyDao.babyInsertFile(dto);
			return babyId;
	   }
			 
		
         
}
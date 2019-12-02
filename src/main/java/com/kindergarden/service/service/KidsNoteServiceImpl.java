package com.kindergarden.service.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;


import com.kindergarden.service.dao.BoardDaoImpl;
import com.kindergarden.service.dao.KidsNoteDaoImpl;
import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;
import com.kindergarden.service.dto.KidsNoteDto;

@Service("KidsNoteService")
public class KidsNoteServiceImpl implements KidsNoteService {
	

	private static final Logger logger = LoggerFactory.getLogger(KidsNoteServiceImpl.class);
   
	@Autowired
	KidsNoteDaoImpl kidsNoteDao;
	
	
	 @Override
	   public BabyDto kidsNoteSelect(String userEmail) {
	      return kidsNoteDao.kidsNoteSelect(userEmail);
	   }
	 
	 String kidsNoteUploadRealPath = 
	         "C:" + File.separator + "eclipse-workspace" + File.separator + "kindergardenProject" + File.separator + 
	      "src" + File.separator + "main" + File.separator +
	         "webapp" + File.separator + "resources" + File.separator + "kidsNoteFiles";
	   
	   String kidsNoteFileFolder = "resources/kidsNoteFiles";
	   
   String kidsNoteDeleteRealPath=
		   "C:" + File.separator + "eclipse-workspace" + File.separator + "kindergardenProject" + File.separator + 
		      "src" + File.separator + "main" + File.separator +
		         "webapp" + File.separator ;
   
   @Override
   @Transactional("txManager")
   public int kidsNoteInsertFile(KidsNoteDto dto, MultipartFile file) throws Exception{
      System.out.println(dto.getBabyId()+"servicekids");
      //int babyId = babyDao.babyInsertFile(dto,file);
      if( file != null ) {
         //Random Fild Id
         UUID uuid = UUID.randomUUID();
         
         //file extention
         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
         
         String savingFileName = uuid + "." + extension;
         
         File saveFile = new File(kidsNoteUploadRealPath, savingFileName); 
         file.transferTo(saveFile);
        
         String kidsNoteFileUrl = kidsNoteFileFolder + "/" + savingFileName;
         dto.setKidsnoteFileUrl(kidsNoteFileUrl);
         
      }
      
     
      int kidsNoteId= kidsNoteDao.kidsNoteInsertFile(dto);
      System.out.println(kidsNoteId+"SERVICE");
		return kidsNoteId;
   }
   
   @Override
   public List<KidsNoteDto> kidsNoteList(int limit, int offset, int babyId){
	   System.out.println(limit);
	   return kidsNoteDao.kidsNoteList(limit, offset,babyId);
   }
   
   @Override
   public KidsNoteDto kidsNoteDetail(int kidsNoteId) {
	   return kidsNoteDao.kidsNoteDetail(kidsNoteId);
   }
	
	  @Override 
	  public int kidsNoteListTotalCnt() { 
		  int cnt = kidsNoteDao.kidsNoteListTotalCnt(); 
		  System.out.println(cnt);
		  return cnt; 
	}
	 
	  @Override
	   @Transactional("txManager")
	   public int kidsNoteUpdateFile(KidsNoteDto dto, MultipartFile file) throws Exception{
	      System.out.println(dto.getBabyId()+"servicekids");
	      //int babyId = babyDao.babyInsertFile(dto,file);
	      if( file != null ) {
	         //Random Fild Id
	    	  kidsNoteDao.kidsNoteDelete(dto.getKidsnoteId());
	         UUID uuid = UUID.randomUUID();
	         
	         //file extention
	         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
	         
	         String savingFileName = uuid + "." + extension;
	         
	         File saveFile = new File(kidsNoteUploadRealPath, savingFileName); 
	         file.transferTo(saveFile);
	        
	         String kidsNoteFileUrl = kidsNoteFileFolder + "/" + savingFileName;
	         dto.setKidsnoteFileUrl(kidsNoteFileUrl);
	         
	      }
	      
	     
	      int kidsNoteId= kidsNoteDao.kidsNoteUpdateFile(dto);
	      System.out.println(kidsNoteId+"SERVICE");
			return kidsNoteId;
	   }
	  
	  
	  //11.20
	   @Override
	   @Transactional("txManager")
	   public int kidsNoteDelete(int kidsNoteId) {
		   	KidsNoteDto dto = kidsNoteDao.kidsNoteDetail(kidsNoteId);
	    
	     
	         File file = new File(kidsNoteDeleteRealPath, dto.getKidsnoteFileUrl());
	         logger.debug("file : " + file.getName());
	         
	         if(file.exists()) {
	            file.delete();
	         }
	      
	     
	      int ret = kidsNoteDao.kidsNoteDelete(kidsNoteId);

	      return ret;
	   }
	   
}
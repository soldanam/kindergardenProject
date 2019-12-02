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
import com.kindergarden.service.dao.ConsentFormDaoImpl;
import com.kindergarden.service.dao.KidsNoteDaoImpl;
import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;
import com.kindergarden.service.dto.ConsentFormDto;
import com.kindergarden.service.dto.KidsNoteDto;

@Service("KidsNoteSService")
public class ConsentFormServiceImpl implements ConsentFormService {
	

	private static final Logger logger = LoggerFactory.getLogger(ConsentFormServiceImpl.class);
   
	@Autowired
	ConsentFormDaoImpl consentFormDao;
	
	
	 
   @Override
   @Transactional("txManager")
   public int consentFormInsert(ConsentFormDto dto) {
      System.out.println(dto.getBabyId()+"servicekids");
      return consentFormDao.consentFormInsert(dto);
   }
   
   @Override
   public List<ConsentFormDto> consentFormList(int limit, int offset, int babyId){
	   System.out.println(limit);
	   return consentFormDao.consentFormList(limit, offset,babyId);
   }
   
   @Override 
	  public int consentFormListTotalCnt() { 
		  int cnt = consentFormDao.consentFormListTotalCnt(); 
		  System.out.println(cnt);
		  return cnt; 
	}
	 
	   
}
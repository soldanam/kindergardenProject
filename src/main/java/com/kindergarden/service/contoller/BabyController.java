package com.kindergarden.service.contoller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.BoardDto;

import com.kindergarden.service.service.BabyServiceImpl;

@Controller
public class BabyController {
	private static final Logger logger = LoggerFactory.getLogger(BabyController.class);

	   @Autowired
	   BabyServiceImpl babyService;
	   
	   @RequestMapping(value = "/baby/babycheck", method = RequestMethod.POST)
	   @ResponseBody
	   public int babycheck(String userEmail) throws Exception {
	      
	      logger.debug("/baby/babycheck");
	      
	      return babyService.babycheck(userEmail);
	   }
	   
	   
	   @RequestMapping(value = "/baby/babyinsertFile", method = RequestMethod.POST)
	   @ResponseBody
	   public int babyInsertFile(BabyDto dto, MultipartFile file) throws Exception {
	      
	      logger.debug("/baby/babyinsert");
	      
	      return babyService.babyInsertFile(dto, file);
	   }
	   
	   @RequestMapping(value = "/baby/classmatch", method = RequestMethod.POST)
	   @ResponseBody
	   public String babyclassmatch(int year) throws Exception {
	      
	     
	      String a=babyService.babyclassmatch(year);
	      System.out.println(a);
	      return a;
	   }
}

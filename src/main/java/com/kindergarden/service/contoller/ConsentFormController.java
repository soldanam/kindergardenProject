package com.kindergarden.service.contoller;

import java.util.List;

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
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;
import com.kindergarden.service.dto.ConsentFormDto;
import com.kindergarden.service.dto.KidsNoteDto;
import com.kindergarden.service.service.BoardService;
import com.kindergarden.service.service.BoardServiceImpl;
import com.kindergarden.service.service.ConsentFormServiceImpl;
import com.kindergarden.service.service.KidsNoteServiceImpl;

@Controller
public class ConsentFormController {

   private static final Logger logger = LoggerFactory.getLogger(ConsentFormController.class);

   @Autowired
   ConsentFormServiceImpl consentFormService;

   
   //페이징
   @RequestMapping(value = "/consentForm/list/totalCnt", method = RequestMethod.GET)
   @ResponseBody
   public int kidsNoteListCnt() {
      
      logger.debug("/consentForm/list/totalCnt");
      
      return consentFormService.consentFormListTotalCnt();
   }
 
   
   @RequestMapping(value = "/consentForm/insert", method = RequestMethod.POST)
   @ResponseBody
   public int kidsNoteInsertFile(ConsentFormDto dto, MultipartFile file) throws Exception {
      System.out.println(dto.getBabyName()+" consentcontroller");
      logger.debug("/consentForm/insert");
      
      int key =consentFormService.consentFormInsert(dto);
      System.out.println(key);
      return key;
      
   }
   
   @RequestMapping(value="/consentForm/list", method=RequestMethod.GET)
   @ResponseBody
   public List<ConsentFormDto> consentFormList(int limit, int offset, int babyId){
   	 logger.debug("/consentForm/list");
   	 System.out.println(babyId+" consentFormcontroller");
   	
   	 return consentFormService.consentFormList(limit, offset,babyId);
   	 
    }
   
   
   

}
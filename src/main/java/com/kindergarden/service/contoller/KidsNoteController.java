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
import com.kindergarden.service.dto.KidsNoteDto;
import com.kindergarden.service.service.BoardService;
import com.kindergarden.service.service.BoardServiceImpl;
import com.kindergarden.service.service.KidsNoteServiceImpl;

@Controller
public class KidsNoteController {

   private static final Logger logger = LoggerFactory.getLogger(KidsNoteController.class);

   @Autowired
   KidsNoteServiceImpl kidsNoteService;

   
   @RequestMapping(value = "/kidsNote/babyselect", method = RequestMethod.POST)
   @ResponseBody
   public BabyDto kidsNoteselect(String userEmail) throws Exception {
      
      logger.debug("/kidsNote/babyselect");
      
      BabyDto dto = kidsNoteService.kidsNoteSelect(userEmail);
      //System.out.println(dto.getBabyName()+"controller");
      return dto;
   }
   
   @RequestMapping(value = "/kidsNote/insertFile", method = RequestMethod.POST)
   @ResponseBody
   public int kidsNoteInsertFile(KidsNoteDto dto, MultipartFile file) throws Exception {
      System.out.println(dto.getBabyName()+"controller");
      logger.debug("/kidsNote/insertFile");
      
      return kidsNoteService.kidsNoteInsertFile(dto, file);
      
   }
   
   @RequestMapping(value="/kidsNote/list", method=RequestMethod.GET)
   @ResponseBody
   public List<KidsNoteDto> kidsNoteList(int limit, int offset, int babyId){
   	 logger.debug("/kidsNote/list");
   	 System.out.println(babyId+"controller");
   	
   	 return kidsNoteService.kidsNoteList(limit, offset,babyId);
   	 
    }
   
   
   @RequestMapping(value="/kidsNote/detail", method=RequestMethod.GET)
   @ResponseBody
   public KidsNoteDto kidsNoteDetail(int kidsNoteId) {
   	logger.debug("/kidsNote/detail");
   	return kidsNoteService.kidsNoteDetail(kidsNoteId);
   }
   
   //페이징
   @RequestMapping(value = "/kidsNote/list/totalCnt", method = RequestMethod.GET)
   @ResponseBody
   public int kidsNoteListCnt() {
      
      logger.debug("/kidsNote/list/totalCnt");
      
      return kidsNoteService.kidsNoteListTotalCnt();
   }
 
   
   @RequestMapping(value = "/kidsNote/updateFile", method = RequestMethod.POST)
   @ResponseBody
   public int kidsNoteUpdateFile(KidsNoteDto dto, MultipartFile file) throws Exception{
      System.out.println(dto.getBabyId()+"controller");
      logger.debug("/kidsNote/updateFile");
      //System.out.println(file+" boardController");
      return kidsNoteService.kidsNoteUpdateFile(dto, file);
   }  
   
   
   @RequestMapping(value="/kidsNote/delete", method=RequestMethod.POST)
   @ResponseBody
   public int kidsNoteDelete(int kidsNoteId) {
   	logger.debug("/kidsNote/delete");
   	return kidsNoteService.kidsNoteDelete(kidsNoteId);
   }

}
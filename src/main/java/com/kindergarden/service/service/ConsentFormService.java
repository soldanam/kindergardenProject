package com.kindergarden.service.service;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;
import com.kindergarden.service.dto.ConsentFormDto;
import com.kindergarden.service.dto.KidsNoteDto;



public interface ConsentFormService {

	List<ConsentFormDto> consentFormList(int limit, int offset, int babyId);

	int consentFormInsert(ConsentFormDto dto);

	int consentFormListTotalCnt();

	


}
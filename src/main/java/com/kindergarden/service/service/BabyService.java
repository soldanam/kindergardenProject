package com.kindergarden.service.service;

import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dto.BabyDto;


public interface BabyService {

	public String babyclassmatch(int year);

	public int babycheck(String userEmail);
	   
	int babyInsertFile(BabyDto dto, MultipartFile file) throws Exception;
}
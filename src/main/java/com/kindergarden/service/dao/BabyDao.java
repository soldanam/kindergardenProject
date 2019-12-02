package com.kindergarden.service.dao;

import com.kindergarden.service.dto.BabyDto;

public interface BabyDao {

	public int babyInsertFile(BabyDto babyDto);

	public int babycheck(String userEmail);
	
	public String babyclassmatch(int year);

}

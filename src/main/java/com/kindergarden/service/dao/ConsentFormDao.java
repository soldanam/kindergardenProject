package com.kindergarden.service.dao;

import java.util.List;

import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.ConsentFormDto;
import com.kindergarden.service.dto.KidsNoteDto;

public interface ConsentFormDao {

	int consentFormInsert(ConsentFormDto dto);

	List<ConsentFormDto> consentFormList(int limit, int offset, int babyId);

	int consentFormListTotalCnt();

	

}

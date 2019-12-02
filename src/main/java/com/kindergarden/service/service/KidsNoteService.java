package com.kindergarden.service.service;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;
import com.kindergarden.service.dto.KidsNoteDto;



public interface KidsNoteService {

	BabyDto kidsNoteSelect(String userEmail);

	//int babyInsertFile(BabyDto dto, MultipartFile file) throws Exception;

	int kidsNoteInsertFile(KidsNoteDto dto, MultipartFile file) throws Exception;

	//List<KidsNoteDto> kidsNoteList(int limit, int offset);

	KidsNoteDto kidsNoteDetail(int kidsNoteId);

	int kidsNoteListTotalCnt();

	int kidsNoteUpdateFile(KidsNoteDto dto, MultipartFile file) throws Exception;

	//int kidsNoteDelete(KidsNoteDto dto);

	int kidsNoteDelete(int kidsNoteId);

	List<KidsNoteDto> kidsNoteList(int limit, int offset, int babyId);
   


}
package com.kindergarden.service.dao;

import java.util.List;

import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.KidsNoteDto;

public interface KidsNoteDao {

	//int kidsNoteDelete(KidsNoteDto dto);

	//int kidsNoteInsert(KidsNoteDto dto);

	//List<KidsNoteDto> kidsNoteList(int limit, int offset);

	//int kidsNoteUpdate(KidsNoteDto dto);

	public int kidsNoteListTotalCnt();

	KidsNoteDto kidsNoteDetail(int kidsNoteId);

	BabyDto kidsNoteSelect(String userEmail);

	int kidsNoteInsertFile(KidsNoteDto dto);

	int kidsNoteUpdateFile(KidsNoteDto dto);

	int kidsNoteDelete(int kidsNoteId);

	List<KidsNoteDto> kidsNoteList(int limit, int offset, int babyId);
	
	

}

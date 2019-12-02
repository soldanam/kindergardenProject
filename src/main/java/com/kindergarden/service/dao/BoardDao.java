package com.kindergarden.service.dao;

import java.util.List;

import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;

public interface BoardDao {
	 int boardInsert(BoardDto dto);
	   
	   List<BoardDto2> boardList(int start, int end);
	   
	   BoardDto boardDetail(int boardId);
	   
	   int boardUpdate(BoardDto dto);
	   
	   int boardDelete(BoardDto dto);
	   public int boardListTotalCnt();
	    public int boardInsertFile(BoardFileDto dto);
	    public List<BoardFileDto> boardDetailFileList(int boardId);
	  public int boardDeleteFile(int boardId);
	  
	List<String> boardDeleteFileUrl(int boardId);
	
	
	//검색 11.26////////////////////////////////////////////////////////
	   public List<BoardDto2> boardListSearchWord(int limit, int offset, String searchWord);
	   public int boardListSearchWordTotalCnt(String searchWord);
}

package com.kindergarden.service.service;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;



public interface BoardService {
   //public int boardInsert(BoardDto dto);
   

   //public BoardDto boardDetail(int boardId);
   
   //int boardListTotalCnt();
   public int boardUpdate(BoardDto dto);
   public int boardDelete(BoardDto dto);
  
   public BoardDto boardDetail(int boardId);
   
   public int boardUpdateFile(BoardDto dto, MultipartFile file) throws Exception;
   int boardInsertFile(BoardDto dto, MultipartFile file) throws Exception;

   
   //검색11.26////////////////////////////////////////
   public List<BoardDto2> boardList(int limit, int offset, String searchWord);

   public int boardListTotalCnt(String searchWord);
  // public List<BoardDto> boardList(int limit, int offset);
   //List<BoardFileDto> boardListFile(int boardId);
  // public int boardListTotalCnt();


}
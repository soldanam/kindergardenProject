package com.kindergarden.service.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;


import com.kindergarden.service.dao.BoardDaoImpl;
import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;

@Service("BoardService")
public class BoardServiceImpl implements BoardService {
	

	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
   
	@Autowired
	BoardDaoImpl boardDao;
	
	
   
	/*
	 * @Override public int boardInsert(BoardDto dto) { return
	 * boardDao.boardInsert(dto); }
	 */
   
	/*
	 * @Override public List<BoardDto> boardList(int limit, int offset){
	 * 
	 * 
	 * return boardDao.boardList(limit, offset); }
	 */
	//검색11.26///////////////////////////////////////////////////////////////////////
	@Override
	   public List<BoardDto2> boardList(int limit, int offset, String searchWord) {
	      if("".equals(searchWord)) {
	         return boardDao.boardList(limit, offset);
	      }else {
	         return boardDao.boardListSearchWord(limit, offset, searchWord);
	      }
	   }

     
	/*
	 * @Override public BoardDto boardDetail(int boardId) { return
	 * boardDao.boardDetail(boardId); }
	 */
     //11.20 내가 추가 한거
	/*
	 * @Override public List<BoardFileDto> boardListFile(int boardId){
	 * 
	 * 
	 * return boardfileDao.board(boardId); }
	 */
	@Override
	public int boardUpdate(BoardDto dto) {
		return boardDao.boardUpdate(dto);
	}


	//tx 때문에 바꿈
	/*
	 * @Override
	 * 
	 * @Transactional("txManager") public int boardDelete(BoardDto dto) { int ret =
	 * boardDao.boardDelete(dto); return ret; }
	 */
	//11.19
	/*
	 * @Override
	 * 
	 * @Transactional("txManager") public int boardDelete(BoardDto dto) { int ret =
	 * boardDao.boardDeleteFile(dto.getBoardId());//delete 실행되면 첨부 파일도 삭제
	 * boardDao.boardDelete(dto); return ret; }
	 */
	
	/*
	 * @Override public int boardListTotalCnt() { int cnt =
	 * boardDao.boardListTotalCnt(); System.out.println(cnt); return cnt; }
	 */
	//검색11.26////////////////
	@Override
	   public int boardListTotalCnt(String searchWord) {
	      
	      if("".equals(searchWord)) {
	         return boardDao.boardListTotalCnt();
	      }else {
	         return boardDao.boardListSearchWordTotalCnt(searchWord);
	      }
	   }
	  
	  @Override
	   public BoardDto boardDetail(int boardId) {
	      System.out.println(boardId+" boardService");
	      BoardDto dto = boardDao.boardDetail(boardId);
	      List<BoardFileDto> fileList = boardDao.boardDetailFileList(boardId);
	      dto.setFileList(fileList);
	      System.out.println(fileList+" boardService");
	      return dto;
	   }
	  
	  
	   
	   
	   String boardUploadRealPath = 
		         "C:" + File.separator + "eclipse-workspace" + File.separator + "kindergardenProject" + File.separator + 
		      "src" + File.separator + "main" + File.separator +
		         "webapp" + File.separator + "resources" + File.separator + "boardFiles";
		   
		   String boardFileFolder = "resources/boardFiles";
		   
	   String boardDeleteRealPath=
			   "C:" + File.separator + "eclipse-workspace" + File.separator + "kindergardenProject" + File.separator + 
			      "src" + File.separator + "main" + File.separator +
			         "webapp" + File.separator ;
			 
		   
	   //11.20
	   @Override
	   @Transactional("txManager")
	   public int boardDelete(BoardDto dto) {
	      
	      List<String> fileUrlList = boardDao.boardDeleteFileUrl(dto.getBoardId());
	      for(String fileUrl : fileUrlList) {
	         File file = new File(boardDeleteRealPath, fileUrl);
	         logger.debug("file : " + file.getName());
	         
	         if(file.exists()) {
	            file.delete();
	         }
	      }
	      
	      boardDao.boardDeleteFile(dto.getBoardId());
	      int ret = boardDao.boardDelete(dto);

	      return ret;
	   }
	   
		   @Override
		   @Transactional("txManager")
		   public int boardInsertFile(BoardDto dto, MultipartFile file) throws Exception{
		      
		      int boardId = boardDao.boardInsert(dto);
		      logger.debug("boardId : " + boardId);
		      
		      if( file != null ) {
		         //Random Fild Id
		         UUID uuid = UUID.randomUUID();
		         
		         //file extention
		         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
		         
		         String savingFileName = uuid + "." + extension;
		         
		         File saveFile = new File(boardUploadRealPath, savingFileName); 
		         file.transferTo(saveFile);
		   
		         //File Save to folder
		         BoardFileDto fileDto = new BoardFileDto();
		         //fileDto.setFileContentType(file.getContentType());
		         
		         
		         //logger.debug("fileDto.getFileContentType : " + fileDto.getFileContentType());
		         
		         fileDto.setFileName(file.getOriginalFilename());
		        // fileDto.setFileSize(file.getSize());
		         
		         String boardFileUrl = boardFileFolder + "/" + savingFileName;
		         fileDto.setFileUrl(boardFileUrl);
		         
		         fileDto.setBoardId(boardId);
		         
		         boardDao.boardInsertFile(fileDto);
		      }
		      
		      return boardId;
		   }
	  
	  @Override
	   @Transactional("txManager")
	   public int boardUpdateFile(BoardDto dto, MultipartFile file) throws Exception{
	      System.out.println(file+" boardService");
	      int ret = boardDao.boardUpdate(dto);
	      
	      if( file != null ) {
	         //delete first
	         boardDao.boardDeleteFile(dto.getBoardId());
	         
	         //Random Fild Id
	         UUID uuid = UUID.randomUUID();
	         
	         //file extention
	         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
	         
	         String savingFileName = uuid + "." + extension;
	         
	         File saveFile = new File(boardUploadRealPath, savingFileName); 
	         file.transferTo(saveFile);
	   
	         //File Save to folder
	         BoardFileDto fileDto = new BoardFileDto();
	         //fileDto.setFileContentType(file.getContentType());
	         
	         
	         //logger.debug("fileDto.getFileContentType : " + fileDto.getFileContentType());
	         
	         fileDto.setFileName(file.getOriginalFilename());
	         //fileDto.setFileSize(file.getSize());
	         
	         String boardFileUrl = boardFileFolder + "/" + savingFileName;
	         fileDto.setFileUrl(boardFileUrl);
	         
	         fileDto.setBoardId(dto.getBoardId());
	         
	         boardDao.boardInsertFile(fileDto);
	      }
	      
	      return ret;
	   }
	  
	  //검색11.26//////////////////////////////////////////
	  
	  
	  
	
}
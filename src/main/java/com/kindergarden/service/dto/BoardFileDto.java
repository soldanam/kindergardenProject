package com.kindergarden.service.dto;

import java.util.Date;
//11.20 내가 추가 한거
public class BoardFileDto {
   private int fileId;
   private int boardId;
   private String fileName;
  
   private String fileUrl;

   
   public int getFileId() {
      return fileId;
   }
   public void setFileId(int fileId) {
      this.fileId = fileId;
   }
   public int getBoardId() {
      return boardId;
   }
   public void setBoardId(int boardId) {
      this.boardId = boardId;
   }
   public String getFileName() {
      return fileName;
   }
   public void setFileName(String fileName) {
      this.fileName = fileName;
   }
 

   public String getFileUrl() {
      return fileUrl;
   }
   public void setFileUrl(String fileUrl) {
      this.fileUrl = fileUrl;
   }
   
   @Override
   public String toString() {
      return "boardFile [fileId=" + fileId + ", boardId=" + boardId + ", fileName=" + fileName
            +  "]";
   }
}
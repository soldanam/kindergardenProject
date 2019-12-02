package com.kindergarden.service.dto;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BoardDto2 {

	   
	   
	   private int boardId;
	   private String userSeq;
	   private String userName;
	   private String userProfileImageUrl;
	   
	   private String title;
	   private String content;
	   @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone="Asia/Seoul")
	   private Date regDt;
	   private String fileUrl;
	   
	   
	   //private int fileId;
	   //private String fileName=null;
	  // private long fileSize;
	 //  private String fileCountentType;
	   //private String fileurl="resource/img/balloon.jpg";
	
	/*
	 * public String getFileName() { return fileName; } public void
	 * setFileName(String fileName) { this.fileName = fileName; } public String
	 * getFileurl() { return fileurl; } public void setFileurl(String fileurl) {
	 * this.fileurl = fileurl; }
	 */

	public String getFileUrl() {
		
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		if(fileUrl==null) {
			this.fileUrl= "resources/img/balloon.jpg";
		}
		else {
			this.fileUrl = fileUrl;
		}
		
	}


	private List<BoardFileDto> fileList;
	   
	   
	   
	   
	   
	   public List<BoardFileDto> getFileList() {
	   return fileList;
	}
	public void setFileList(List<BoardFileDto> fileList) {
	   this.fileList = fileList;
	}
	   public Date getRegDt() {
	      return regDt;
	   }
	   public void setRegDt(Date regDt) {
	      this.regDt = regDt;
	   }
	   public int getBoardId() {
	      return boardId;
	   }
	   public void setBoardId(int boardId) {
	      this.boardId = boardId;
	   }
	   public String getUserSeq() {
	      return userSeq;
	   }
	   public void setUserSeq(String userSeq) {
	      this.userSeq = userSeq;
	   }
	   public String getUserName() {
	      return userName;
	   }
	   public void setUserName(String userName) {
	      this.userName = userName;
	   }
	   public String getUserProfileImageUrl() {
	      return userProfileImageUrl;
	   }
	   public void setUserProfileImageUrl(String userProfileImageUrl) {
	      this.userProfileImageUrl = userProfileImageUrl;
	   }
	   public String getTitle() {
	      return title;
	   }
	   public void setTitle(String title) {
	      this.title = title;
	   }
	   public String getContent() {
	      return content;
	   }
	   public void setContent(String content) {
	      this.content = content;
	   }

	  
	   public BoardDto2() {
	      super();
	      // TODO Auto-generated constructor stub
	   }
	   
	   
	   
	   
	}
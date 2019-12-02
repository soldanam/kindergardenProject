package com.kindergarden.service.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class AlbumDto {
	private int albumId;
	private String title;
	 @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone="Asia/Seoul")
		private Date regDt;
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegDt() {
		return regDt;
	}
	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}
	 
}

package com.kindergarden.service.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BabyDto {
	private int babyId;
	private String babyName;
	private String userEmail;
	private String babyProfileImageUrl;
	private String className;
	private String babyDate ;
	 
	 

	
	
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getBabyDate() {
		return babyDate;
	}
	public void setBabyDate(String babyDate) {
		this.babyDate = babyDate;
	}
	public int getBabyId() {
		return babyId;
	}
	public void setBabyId(int babyId) {
		this.babyId = babyId;
	}
	public String getBabyName() {
		return babyName;
	}
	public void setBabyName(String babyName) {
		this.babyName = babyName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getBabyProfileImageUrl() {
		return babyProfileImageUrl;
	}
	public void setBabyProfileImageUrl(String babyProfileImageUrl) {
		if(babyProfileImageUrl==null) {
			this.babyProfileImageUrl= "resources/img/balloon.jpg";
		}
		else {
			this.babyProfileImageUrl = babyProfileImageUrl;
		}
		
	}
	
}

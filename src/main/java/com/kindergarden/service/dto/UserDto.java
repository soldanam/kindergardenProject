package com.kindergarden.service.dto;



public class UserDto {
	   private int userSeq;
	   private String userName;
	   private String userPassword;
	   private String userEmail;
	   private String profileImageUrl;
	   
	   
	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(int userSeq) {
		this.userSeq = userSeq;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getProfileImageUrl() {
		return profileImageUrl;
	}
	public void setProfileImageUrl(String profileImageUrl) {
		if(profileImageUrl==null) {
			this.profileImageUrl= "resources/img/balloon.jpg";
		}
		else {
			this.profileImageUrl = profileImageUrl;
		}
	}
	
	   

	   
	   

}

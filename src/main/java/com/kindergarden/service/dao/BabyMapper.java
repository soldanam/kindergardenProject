package com.kindergarden.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.kindergarden.service.dto.BabyDto;



public class BabyMapper implements RowMapper<BabyDto>{
	   @Override
	   public BabyDto mapRow(ResultSet rs, int count) throws SQLException {
		   BabyDto dto = new BabyDto();
		   dto.setBabyId(rs.getInt("baby_id"));
		   dto.setBabyName(rs.getString("baby_name"));
		   dto.setUserEmail(rs.getString("user_email"));
		   dto.setBabyProfileImageUrl(rs.getString("baby_profile_image_url"));
		   dto.setClassName(rs.getString("class_name"));
		 
		    dto.setBabyDate(rs.getString("baby_date"));
	      //dto.setFileurl(rs.getString("file_url"));
	      
	      return dto;
	   }   
	}
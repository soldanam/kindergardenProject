package com.kindergarden.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import com.kindergarden.service.dto.ConsentFormDto;



public class ConsentFormMapper implements RowMapper<ConsentFormDto>{
	   @Override
	   public ConsentFormDto mapRow(ResultSet rs, int count) throws SQLException {
		   ConsentFormDto dto = new ConsentFormDto();
		   dto.setBabyName(rs.getString("baby_name"));
		   dto.setBabyId(rs.getInt("baby_id"));
		   dto.setConsentformId(rs.getInt("consentform_id"));
		   dto.setTitle(rs.getString("title"));
		  dto.setContent(rs.getString("content"));
		    dto.setDate(rs.getString("date"));
	     
	      
	      return dto;
	   }   
	}
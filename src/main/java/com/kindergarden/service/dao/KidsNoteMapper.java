package com.kindergarden.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.kindergarden.service.dto.KidsNoteDto;


public class KidsNoteMapper implements RowMapper<KidsNoteDto>{
	   @Override
	   public KidsNoteDto mapRow(ResultSet rs, int count) throws SQLException {
		   KidsNoteDto dto = new KidsNoteDto();
		   //dto.setBoardId(rs.getInt("board_id"));
		   dto.setKidsnoteId(rs.getInt("kidsnote_id"));
		   dto.setBabyId(rs.getInt("baby_id"));
		   dto.setBabyName(rs.getString("baby_name"));
		   dto.setTitle(rs.getString("title"));
		   dto.setContent(rs.getString("content"));
		  
		    dto.setRegDt(rs.getString("reg_dt"));
		    dto.setKidsnoteFileUrl(rs.getString("kidsnote_file_url"));
	      return dto;
	   }   
	}
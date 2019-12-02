package com.kindergarden.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;


import org.springframework.jdbc.core.RowMapper;


import com.kindergarden.service.dto.BoardDto2;


public class BoardMapper2 implements RowMapper<BoardDto2>{
	   @Override
	   public BoardDto2 mapRow(ResultSet rs, int count) throws SQLException {
	      BoardDto2 dto = new BoardDto2();
	    
	      dto.setBoardId(rs.getInt("board_id"));
	      dto.setUserSeq(rs.getString("user_seq"));
	      dto.setUserName(rs.getString("user_name"));
	      dto.setUserProfileImageUrl(rs.getString("user_profile_image_url"));
	      dto.setTitle(rs.getString("title"));
	      dto.setContent(rs.getString("content"));
	      Calendar cal = new GregorianCalendar();
	      dto.setRegDt(rs.getTimestamp("reg_dt",cal));
	     
	      System.out.println("dto.getRegDt :" + dto.getRegDt());
	      dto.setFileUrl(rs.getString("file_url"));
	      System.out.println(dto.getUserName());
	      System.out.println(dto.getTitle());
	      return dto;
	   }   
	}
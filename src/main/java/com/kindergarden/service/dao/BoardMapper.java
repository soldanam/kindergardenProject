package com.kindergarden.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardFileDto;

public class BoardMapper implements RowMapper<BoardDto>{
	   @Override
	   public BoardDto mapRow(ResultSet rs, int count) throws SQLException {
	      BoardDto dto = new BoardDto();
	    
	      dto.setBoardId(rs.getInt("board_id"));
	      dto.setUserSeq(rs.getString("user_seq"));
	      dto.setUserName(rs.getString("user_name"));
	      dto.setUserProfileImageUrl(rs.getString("user_profile_image_url"));
	      dto.setTitle(rs.getString("title"));
	      dto.setContent(rs.getString("content"));
	      Calendar cal = new GregorianCalendar();
	      dto.setRegDt(rs.getTimestamp("reg_dt",cal));
	      //dto.setReadCount(rs.getInt("read_count"));
	      //dto.setFileName(rs.getString("file_name"));
	      //dto.setFileurl(rs.getString("file_url"));
	      System.out.println("dto.getRegDt :" + dto.getRegDt());
	      
	      
	      System.out.println(dto.getTitle());
	      return dto;
	   }   
	}
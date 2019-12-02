package com.kindergarden.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import com.kindergarden.service.dto.ScheduleDto;

public class ScheduleMapper implements RowMapper<ScheduleDto>{
	   @Override
	   public ScheduleDto mapRow(ResultSet rs, int count) throws SQLException {
		   ScheduleDto dto = new ScheduleDto();
		   dto.setClassId(rs.getInt("class_id"));
	     dto.setDay(rs.getInt("day"));
	     dto.setMonth(rs.getInt("month"));
	     dto.setYear(rs.getInt("year"));
	     dto.setTitle(rs.getString("title"));
	      Calendar cal = new GregorianCalendar();
	      dto.setDate(rs.getTimestamp("date",cal));
	      dto.setScheduleId(rs.getInt("schedule_id"));
	     
	    
	      return dto;
	   }   
	}
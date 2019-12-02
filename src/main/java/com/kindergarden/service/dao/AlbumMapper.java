package com.kindergarden.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.jdbc.core.RowMapper;

import com.kindergarden.service.dto.AlbumDto;

public class AlbumMapper implements RowMapper<AlbumDto> {
	@Override
	public AlbumDto mapRow(ResultSet rs, int count) throws SQLException{
		AlbumDto dto = new AlbumDto();
		
		dto.setAlbumId(rs.getInt("album_id"));
		dto.setTitle(rs.getString("title"));
		 Calendar cal = new GregorianCalendar();
	      dto.setRegDt(rs.getTimestamp("reg_dt",cal));
	      return dto;
	}

}

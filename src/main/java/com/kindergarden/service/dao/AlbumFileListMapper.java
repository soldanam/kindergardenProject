package com.kindergarden.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import com.kindergarden.service.dto.AlbumFileDto;


public class AlbumFileListMapper implements RowMapper<AlbumFileDto>{
   @Override
   public AlbumFileDto mapRow(ResultSet rs, int count) throws SQLException {
	   AlbumFileDto dto = new AlbumFileDto();
      dto.setAlbumId(rs.getInt("album_id"));
      dto.setAlbumFileId(rs.getInt("album_file_id"));
      dto.setAlbumFileName(rs.getString("album_file_name"));
      //dto.setFileContentType(rs.getString("file_content_type"));
     // dto.setFileSize(rs.getInt("file_size"));
      dto.setAlbumFileUrl(rs.getString("album_file_url"));
     // Calendar cal = new GregorianCalendar();
    //  dto.setRegDt(rs.getTimestamp("reg_dt", cal));
      return dto;
   }   
}
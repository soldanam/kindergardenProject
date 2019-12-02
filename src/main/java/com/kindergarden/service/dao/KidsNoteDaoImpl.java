package com.kindergarden.service.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.kindergarden.service.dto.BabyDto;
import com.kindergarden.service.dto.KidsNoteDto;

@Repository
public class KidsNoteDaoImpl implements KidsNoteDao {
	@Autowired
	   JdbcTemplate jdbcTemplate;
	//kidsNoteDelete
	@Override
	public int kidsNoteDelete(int kidsNoteId) {
		String sql=
				"delete from kidsnote "
				+" where KIDSNOTE_ID= ?";
		return jdbcTemplate.update(sql, kidsNoteId);
	}
	
	//kidsnoteInsert
	@Override
	public int kidsNoteInsertFile (KidsNoteDto dto) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		
		String sql = 
				"insert into kidsnote (" +
				" BABY_ID, TITLE, CONTENT, REG_DT, KIDSNOTE_FILE_URL) "+
				"values(?,?,?,?,?)";
		
		jdbcTemplate.update(connection -> {
	         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	         ps.setInt(1, dto.getBabyId());
	         ps.setString(2, dto.getTitle());
	         ps.setString(3, dto.getContent());
	         ps.setString(4, dto.getRegDt());
	         ps.setString(5, dto.getKidsnoteFileUrl());
	         return ps;
	      }, keyHolder);
		return keyHolder.getKey().intValue();
	}
	
	//kidsNote list
	@Override
	public List<KidsNoteDto> kidsNoteList(int limit, int offset, int babyId){
		
		String sql =
				"SELECT SQL_CALC_FOUND_ROWS A.* FROM ( "+
						"SELECT k.KIDSNOTE_ID, "+
						"		   b.BABY_ID, "+
						"		   b.BABY_NAME, "+
						"		   k.TITLE, "+
						"		k.CONTENT, "+
						"		   k.REG_DT,"+
						"		   k.KIDSNOTE_FILE_URL 	"+					
						"	FROM kidsnote k, baby b  "+
						"	WHERE k.BABY_ID = b.BABY_ID "+
	                     "   and b.BABY_ID=? " +
						"	ORDER BY KIDSNOTE_ID DESC  "+
						"	) A LIMIT ? OFFSET ?";
		
		 return jdbcTemplate.query(sql, new KidsNoteMapper(), babyId, limit, offset);
	}
	
	//kidsNoteDetail
	@Override
	public KidsNoteDto kidsNoteDetail(int kidsNoteId) {
		System.out.println(kidsNoteId);
		String sql =
				"SELECT  k.KIDSNOTE_ID, "+
				"b.BABY_ID, " + 
				"b.BABY_NAME, " + 
				"k.TITLE, " + 
				"k.CONTENT, " + 
				"k.REG_DT, " + 
				"k.KIDSNOTE_FILE_URL "+	
				"FROM kidsnote k, baby b  "+
				"WHERE k.BABY_ID = b.BABY_ID "+
				"AND k.KIDSNOTE_ID=? ";
		return jdbcTemplate.queryForObject(sql, new KidsNoteMapper(),kidsNoteId);
	}
	
	//kidsUpdate
	@Override
	public int kidsNoteUpdateFile(KidsNoteDto dto) {
		System.out.println(dto.getBabyId()+","+dto.getKidsnoteId()+"kidsNoteUpdatefile");
		String sql =
				"update kidsnote "+
				"set title=?, CONTENT=?, KIDSNOTE_FILE_URL=? "+
				"WHERE KIDSNOTE_ID=? ";
		return jdbcTemplate.update(sql,  dto.getTitle(),dto.getContent(),dto.getKidsnoteFileUrl(), dto.getKidsnoteId());
	}
	
	@Override 
	public int kidsNoteListTotalCnt() {
		String sql ="SELECT count(*) FROM kidsnote ";
		return jdbcTemplate.queryForObject(sql,  Integer.class);
	}
	
	@Override
	public BabyDto kidsNoteSelect(String userEmail) {
		String sql =
				"select "+
				" b.BABY_ID, b.BABY_NAME, u.USER_EMAIL, b.BABY_PROFILE_IMAGE_URL, "+
				"b.CLASS_NAME, b.BABY_DATE "+
				"from user u ,baby b "+
				"where u.USER_EMAIL =b.USER_EMAIL "+
				"AND u.USER_EMAIL=? ";
		return jdbcTemplate.queryForObject(sql, new BabyMapper(), userEmail);
		
		
	}
	
	
	

}

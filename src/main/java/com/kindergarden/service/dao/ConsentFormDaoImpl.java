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
import com.kindergarden.service.dto.ConsentFormDto;
import com.kindergarden.service.dto.KidsNoteDto;

@Repository
public class ConsentFormDaoImpl implements ConsentFormDao {
	@Autowired
	   JdbcTemplate jdbcTemplate;
	//kidsNoteDelete
	
	//kidsnoteInsert
	@Override
	public int consentFormInsert(ConsentFormDto dto) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		
		String sql = 
				"insert into consentform (" +
				" BABY_ID, TITLE, CONTENT, DATE) "+
				"values(?,?,?,?)";
		
		jdbcTemplate.update(connection -> {
	         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	         ps.setInt(1, dto.getBabyId());
	         ps.setString(2, dto.getTitle());
	         ps.setString(3, dto.getContent());
	         ps.setString(4, dto.getDate());
	       
	         return ps;
	      }, keyHolder);
		return keyHolder.getKey().intValue();
	}
	
	//kidsNote list
	@Override
	public List<ConsentFormDto> consentFormList(int limit, int offset, int babyId){
		
		String sql =
				"SELECT SQL_CALC_FOUND_ROWS A.* FROM ( "+
						"SELECT c.CONSENTFORM_ID, "+
						"		   b.BABY_ID, "+
						"		   b.BABY_NAME, "+
						"		   c.TITLE, "+
						"		c.CONTENT, "+
						"	   c.DATE "+	
							"FROM consentForm c, baby b  "+
							"WHERE c.BABY_ID = b.BABY_ID "+
	                        "and c.BABY_ID=?  "+
						"ORDER BY consentform_id DESC  "+
							") A LIMIT ? OFFSET ? ";
		 return jdbcTemplate.query(sql, new ConsentFormMapper(), babyId, limit, offset);
	}
	
	@Override 
	public int consentFormListTotalCnt() {
		String sql ="SELECT count(*) FROM consentForm ";
		return jdbcTemplate.queryForObject(sql,  Integer.class);
	}
	
	
	
	

}

package com.kindergarden.service.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.kindergarden.service.dto.BabyDto;


@Repository
public class BabyDaoImpl implements BabyDao{
	@Autowired
	   JdbcTemplate jdbcTemplate;
	   
	@Override
	public int babyInsertFile(BabyDto babyDto) {
		

	      KeyHolder keyHolder = new GeneratedKeyHolder();
		
		String sql=
				"INSERT INTO BABY "+
				"(BABY_NAME, USER_EMAIL, BABY_PROFILE_IMAGE_URL, CLASS_Name, BABY_DATE) "+	
				"VALUES(?,?,?,?,?)";
		
		jdbcTemplate.update(connection -> {
	         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	         ps.setString(1, babyDto.getBabyName());
	         ps.setString(2, babyDto.getUserEmail());
	         ps.setString(3, babyDto.getBabyProfileImageUrl());
	         ps.setString(4, babyDto.getClassName());
	         ps.setString(5, babyDto.getBabyDate());
	         return ps;
	      }, keyHolder);
	    
	      return keyHolder.getKey().intValue();
		
		
	}

	public int babycheck(String userEmail) {
		String sql =
				"select COUNT(*) "+
				"FROM BABY ,USER "+
				"WHERE USER.USER_EMAIL=BABY.USER_EMAIL "+
				"AND USER.USER_EMAIL = ? ";
		return jdbcTemplate.queryForObject(sql, Integer.class, userEmail);
	}

	public String babyclassmatch(int year) {
		GregorianCalendar today = new GregorianCalendar ( );
		int dayyear = (today.get ( today.YEAR ))-year;
		System.out.println(dayyear);
		
		String sql =
				" select CLASS_NAME "+
				"from class "+
				"where class_age=?";
		String a= jdbcTemplate.queryForObject(sql, String.class, dayyear);
		System.out.println(a);
		return a;
	}
	
	
}

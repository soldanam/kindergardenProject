package com.kindergarden.service.dao;



import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.kindergarden.service.dto.BoardDto;
import com.kindergarden.service.dto.BoardDto2;
import com.kindergarden.service.dto.BoardFileDto;


@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired
	   JdbcTemplate jdbcTemplate;
	   
	/*
	 * @Override public int boardInsert(BoardDto dto) { String sql =
	 * "insert into board ( " + " USER_SEQ, TITLE, CONTENT, REG_DT, READ_COUNT ) " +
	 * " VALUES ( ?, ?, ?, now(), 0 )";
	 * 
	 * return jdbcTemplate.update( sql, dto.getUserSeq(), dto.getTitle(),
	 * dto.getContent()); }
	 */
	 @Override
     public int boardDelete(BoardDto dto) {

        String sql = 
                "delete from board "
              + "where BOARD_ID = ? ";
        
        return jdbcTemplate.update(
              sql, 
              dto.getBoardId()
        );
     }

	//11.19
	@Override
	   public int boardInsert(BoardDto dto) {
	      
	      KeyHolder keyHolder = new GeneratedKeyHolder();
	      
	      String sql = 
	              "insert into board ( "
	            + "USER_SEQ, TITLE, CONTENT, REG_DT) "
	            + "values ( ?, ?, ?, now())";
	      
	      
	      jdbcTemplate.update(connection -> {
	         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	         ps.setString(1, dto.getUserSeq());
	         ps.setString(2, dto.getTitle());
	         ps.setString(3, dto.getContent());
	         return ps;
	      }, keyHolder);
	    
	      return keyHolder.getKey().intValue();

	   }
	   
	   //limit = limit ��ŭ�� �Խù� ������  offset = > ���� ����Ʈ (������ ��ȣ�� ���ä�)
	/*
	 * @Override public List<BoardDto> boardList(int limit, int offset) { //�Խù���
	 * ��� �������� ����
	 * 
	 * //SQL_CALC_FOUND_ROWS - SELECT FOUND_ROWS() SQL_CALC_FOUND_ROWS=> row ����
	 * //�ؿ����� �ϰ� FOUND_ROWS()�� �ϸ� ��ü ROW �� ���� //�׸��� �̷��� �Ⱦ��� ������
	 * SELECT �� �� FOUND_ROWS()�ϸ� ���� �� ������ ROW�� String sql =
	 * "SELECT SQL_CALC_FOUND_ROWS A.* FROM ( "+ "SELECT b.Board_ID, "+
	 * "       b.USER_SEQ, "+ "       u.USER_NAME, "+
	 * "       u.USER_PROFILE_IMAGE_URL, "+ "       b.TITLE, "+
	 * "       b.CONTENT, "+ "       b.REG_DT, "+ "       b.READ_COUNT "+
	 * "      FROM board b, user u "+ "      WHERE b.USER_SEQ = u.USER_SEQ "+
	 * "      ORDER BY BOARD_ID DESC "+ ") A LIMIT ? OFFSET ?; "; return
	 * jdbcTemplate.query(sql, new BoardMapper(), limit, offset); }
	 */
	   @Override 
	   public List<BoardDto2> boardList(int limit, int offset) { //�Խù��� ��� �������� ����
		   
	     //SQL_CALC_FOUND_ROWS - SELECT FOUND_ROWS() SQL_CALC_FOUND_ROWS=> row ����
		   //�ؿ����� �ϰ� FOUND_ROWS()�� �ϸ� ��ü ROW �� ����
		   //�׸��� �̷��� �Ⱦ��� ������ SELECT �� �� FOUND_ROWS()�ϸ� ���� �� ������ ROW��
		   String sql = 
				   "SELECT SQL_CALC_FOUND_ROWS A.* FROM ( "+
					      " SELECT b.Board_ID, "+
						    "      u.USER_SEQ, "+
					            "  u.USER_NAME, "+
						        "  u.USER_PROFILE_IMAGE_URL, "+
					            "  b.TITLE, "+
						         " b.CONTENT, "+
					             "b.REG_DT, " + 
					             "bf.FILE_URL"+
						         //"FROM board b, user u   "+
						         " FROM board b LEFT JOIN  user u "+
                                 "on b.USER_SEQ=u.USER_SEQ "+
						     "LEFT JOIN board_file bf "+
							"on b.BOARD_ID=bf.BOARD_ID "+
						       //"WHERE b.USER_SEQ = u.USER_SEQ  "+
						         //or b.BOARD_ID = bf.BOARD_ID
						         "ORDER BY BOARD_ID DESC  "+
						  ") A LIMIT ? OFFSET ?"; 
		   return jdbcTemplate.query(sql, new BoardMapper2(), limit, offset);
	      }

	   @Override 
	   public BoardDto boardDetail(int boardId) { 
		   System.out.println(boardId);
	      String sql =
	    		  "SELECT b.Board_ID, "+
	   				   "       b.USER_SEQ, "+
	   			       "       u.USER_NAME, "+
	   				   "       u.USER_PROFILE_IMAGE_URL, "+
	   			       "       b.TITLE, "+
	   				   "       b.CONTENT, "+
	   			       "       b.REG_DT "+
	   				   "      FROM board b, user u "+
	   				   "      WHERE b.USER_SEQ = u.USER_SEQ  "+
	   				   "      AND b.BOARD_ID = ?";
	      
	      return jdbcTemplate.queryForObject(sql, new BoardMapper(), boardId);
	     }
	   
	   @Override
	   public int boardUpdate(BoardDto dto) {
		   String sql =
				   "update board "+
		   "set TITLE = ?, CONTENT= ? "+
						   "WHERE BOARD_ID=? ";
		   return jdbcTemplate.update(
				   sql, dto.getTitle(), dto.getContent(), dto.getBoardId());
	   }
	   
	/*
	 * @Override public int boardDelete(BoardDto dto) { String sql =
	 * "delete from board "+ "where BOARD_ID=? "; return jdbcTemplate.update( sql,
	 * dto.getBoardId() ); }
	 */
	   
	   @Override
	   public int boardListTotalCnt() {
	      
	      String sql = "SELECT count(*) FROM board ";
	      
	      return jdbcTemplate.queryForObject(sql, Integer.class);
	   }
	   
	   @Override
	   public List<BoardFileDto> boardDetailFileList(int boardId) {
	      String sql = 
	            "   SELECT  BOARD_ID,  " +
	            "         FILE_ID, " +
	            "           FILE_NAME, " +
	            "           FILE_URL " +
	            "    FROM board_file " +
	            "   WHERE BOARD_ID = ? ";
	      
	      
	      return jdbcTemplate.query(sql, new BoardFileListMapper(), boardId);
	   }
	   
	/*
	 * @Override public int boardDeleteFile(int boardId) { String sql =
	 * "delete from board_file " + "where BOARD_ID = ? ";
	 * 
	 * return jdbcTemplate.update( sql, boardId ); }
	 */
	   //11.19
	   @Override
	   public int boardDeleteFile(int boardId) {
	      String sql = 
	              "delete from board_file "
	            + "where BOARD_ID = ? ";
	      
	      return jdbcTemplate.update(
	            sql, 
	            boardId
	      );
	   }
	   
	   
	   @Override
	   public int boardInsertFile(BoardFileDto dto) {
	      String sql = 
	              "insert into board_file ( "
	            + "BOARD_ID, FILE_NAME, FILE_URL) "
	            + "values ( ?, ?, ?)";
	      
	      return jdbcTemplate.update(
	            sql, 
	            dto.getBoardId(),
	            dto.getFileName(),
	            dto.getFileUrl()
	      );
	   }
	   
	   @Override
	   public List<String> boardDeleteFileUrl(int boardId) {
	      String sql = 
	              "select file_url from board_file "
	            + "where BOARD_ID = ? ";
	      return jdbcTemplate.queryForList(sql, String.class, boardId);
	   }
	   
	   
	   //////////////////////////////검색//////////////////////////////////////////////////////////////////
	   @Override
	   public List<BoardDto2> boardListSearchWord(int limit, int offset, String searchWord) {
	      
	      String likeSearchWord = "%" + searchWord + "%";

	      String sql = 
	            "SELECT SQL_CALC_FOUND_ROWS A.* FROM ( " +
	            "   SELECT  b.BOARD_ID,  " +
	            "         b.USER_SEQ, " +
	            "         u.USER_NAME, " +
	            "         u.USER_PROFILE_IMAGE_URL, " +
	            "           b.TITLE, " +
	            "           b.CONTENT, " +
	            "           b.REG_DT, " +
	            "			bf.FILE_URL"+
		        
		         " FROM board b LEFT JOIN  user u "+
                "on b.USER_SEQ=u.USER_SEQ "+
		     "LEFT JOIN board_file bf "+
			"on b.BOARD_ID=bf.BOARD_ID "+
	          
	            "   WHERE b.TITLE LIKE ? " +
	          
	            "    ORDER BY BOARD_ID DESC " +
	            ") A LIMIT ? OFFSET ?; ";

	      return jdbcTemplate.query(sql, new BoardMapper2(), likeSearchWord, limit, offset);
	   }

	   @Override
	   public int boardListSearchWordTotalCnt(String searchWord) {
	      
	      String likeSearchWord = "%" + searchWord + "%";
	      
	      String sql = "SELECT count(*) FROM board WHERE TITLE LIKE ? ";
	      
	      return jdbcTemplate.queryForObject(sql, Integer.class, likeSearchWord);
	   }
}

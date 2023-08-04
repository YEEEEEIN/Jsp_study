package model1.board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO extends JDBConnect {
	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	// 검색기능 = 조건에 만족하는 DB 조회 결과 - 개수 출력
	public int selectCount(Map<String, Object> map) {
		int totalCount = 0;
		
		String query = "SELECT COUNT(*) FROM board";
		if(map.get("searchWordid") != null) {
			query += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%'" ;
		}
		// DB에서 홍길동으로 title 영역에 조회할 때 쿼리문
		// select count(*) from board where title like "%홍길동%";
		try {
		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		rs.next();
		totalCount = rs.getInt(1); // 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalCount;
	}
	
	// 게시물 목록 가져오기
	public List<BoardDTO> selectList(Map<String, Object> map){
		List<BoardDTO> bbs = new Vector<BoardDTO>();
		
		String query = "SELECT * FROM board ";
		if(map.get("searchWord") != null){
			query += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%' ";
		
		}
		query += "ORDER BY num DESC";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) { // 반복 순회
				// 한 행씩 DTO에 저장
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString("num")); // 일련번호
				dto.setTitle(rs.getString("title")); 
				dto.setContent(rs.getString("content")); 
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setVisitcount(rs.getString("visitcount"));
				
				bbs.add(dto); // 결과 값을 목록에 저장
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bbs;
	}

}

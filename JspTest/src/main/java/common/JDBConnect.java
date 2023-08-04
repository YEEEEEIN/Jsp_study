package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
	public Connection con; // db 연결 담당
	public Statement stmt; // 인파라미터가 없는 쿼리문 실행시 사용
	public PreparedStatement psmt; // 인파라미터가 있는 쿼리문 실행시 사용
	public ResultSet rs; // select 결과 데이터 저장
	
	public JDBConnect() {
	      try {
	         // jdbc 드라이버 로드
	         Class.forName("oracle.jdbc.OracleDriver");

	         String url = "jdbc:oracle:thin:@localhost:1521:xe";
	         String id = "kopo";
	         String pwd = "1234";
	         con = DriverManager.getConnection(url, id, pwd);

	         System.out.println("DB 기본 생성자로 연결 성공");
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	
	public JDBConnect(String driver, String url, String id, String pwd) {
	      try {
	         // jdbc 드라이버 로드
	         Class.forName(driver);
	         con = DriverManager.getConnection(url, id, pwd);
	         
	         System.out.println("DB 연결 성공 - application으로 파라미터 전달받음");
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	}
	
	public JDBConnect(ServletContext application) {
	      try {
	         // jdbc 드라이버 로드
	    	  String driver = application.getInitParameter("OracleDriver");
	    	  String url = application.getInitParameter("OracleURL");
	    	  String id = application.getInitParameter("OracleId");
	    	  String pwd = application.getInitParameter("OraclePwd");
	    	  
	         Class.forName(driver);
	         con = DriverManager.getConnection(url, id, pwd);
	         
	         System.out.println("DB 연결 성공 - application에서 전달 받아 내부에서 접근");
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	}

	
	public void close() {
		// 연결 해제 (자원 반납)
		try {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			
			System.out.println("JDBC 자원 해제");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}

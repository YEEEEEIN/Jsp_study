package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnPool {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

	// 기본 생성자
	public DBConnPool() {
		try {
			// 커넥션 풀을 얻기
			Context initCtx = new InitialContext();
			Context ctx = (Context) initCtx.lookup("java:comp/env"); // 루트 경로와 동일
			DataSource source = (DataSource) ctx.lookup("dbcp_myoracle");

			// 커넥션 풀을 통해서 연결을 얻기
			con = source.getConnection();
			System.out.println("DB 커넥션 풀 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		// 연결 해제 (자원 반납)
		try {
			if (rs != null) rs.close();
			if (psmt != null) psmt.close();
			if (stmt != null) stmt.close();
			if (con != null) con.close();

			System.out.println("DB 커넥션 풀 자원 반납");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

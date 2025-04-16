package com.smhrd.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StudentDAO {
	// 특정 학생의 정보를 불러와주는 메서드
	public StudentVO selectOne(String name) {
		
		StudentVO vo = null;

		try {
			// mariaDB 연동 코드 작성
			// 1. mariaDB와 연결해 줄 수 있는 Driver class를 동적 로딩
			Class.forName("org.mariadb.jdbc.Driver");
			
			// 2. 연결할 DB url, 
			String url = "jdbc:mariadb://127.0.0.1:3306/jsp";
			String username = "root";
			String password = "ma29562956!";
			
			// 3. DB 연결객체(Connection) 생성
			Connection conn = DriverManager.getConnection(url, username, password);	
		
			// 4. 실행할 sql문 정의
			String sql = "select * from student where name = ?";
			
			// 5. SQL문 준비/실행(PreparedStatement) 객체 생성
			PreparedStatement ps = conn.prepareStatement(sql);
			
			// 6. ?(바인드 변수) 채우기
			ps.setString(1, name);
			
			// 7. sql문 실행
			ResultSet rs = ps.executeQuery(); // select
			
			if(rs.next()) {
				String getName = rs.getString("name"); 
				String getMajor = rs.getString("major");
				String getNumber = rs.getString("tel");
			
				vo = new StudentVO(getName, getMajor, getNumber);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
}

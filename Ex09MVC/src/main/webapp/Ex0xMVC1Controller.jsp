<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		System.out.println(name);
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
				out.print("이름 : " + getName);
				out.print("학과 : " + getMajor);
				out.print("전화번호 : " + getNumber);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
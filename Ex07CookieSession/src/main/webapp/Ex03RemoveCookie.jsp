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
		// 쿠키 삭제
		// 1. 쿠키 다시 생성("name" => 삭제하고 싶은 쿠키와 같은 name으로 지정, "value" => 기존의 값하고 같을 필요는 없다)
		Cookie cookie = new Cookie("test", "");
	
		// 2. 만료기간 => 0 (삭제)
		cookie.setMaxAge(0);
		
		// 3. 쿠키 -> 클라이언트
		response.addCookie(cookie);
	%>
	
	<a href="Ex02GetCookie.jsp">쿠키 확인</a>
</body>
</html>
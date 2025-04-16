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
		// 1 쿠키 생성 => 쿠키 객체 
		Cookie cookie = new Cookie("test", "smhrd");
		
		// 2. 만료 기간 설정 : setMaxAge
		cookie.setMaxAge(60*60*24*365);
		
		// 3. 생성된 쿠키(서버) -> 클라이언트 : response
		response.addCookie(cookie);
		
		response.addCookie(new Cookie("id", "testid"));
	%>
	
	<a href="Ex02GetCookie.jsp">쿠키 확인</a>
</body>
</html>
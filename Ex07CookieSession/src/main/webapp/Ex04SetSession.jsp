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
		// 서버쪽의 세션 공간에 값을 저장
		// session 변수에 대해서 선언 / 객체 만들 적 없다 -> JSP에서 내장 객체 (HttpSession타입의 객체)
		// setAttribute(key(String), value(Object -> 업캐스팅))
		session.setAttribute("id", "smart");
		session.setAttribute("age", 20);
	%>
	
	<a href="Ex05GetSession.jsp">세션 확인</a>
	<a href="GetSession">세션확인(Servlet)</a>

</body>
</html>
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
		session.invalidate(); // 세션 모두 삭제
	%>
	
	<a href="Ex05GetSession.jsp">세션 확인</a>
</body>
</html>
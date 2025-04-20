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
	// 1. 클라이언트에 저장돼있는 쿠키 가져오기(서버)
	Cookie[] cookies = request.getCookies();

	for(Cookie c : cookies) {
		out.print("name: " + c.getName() + "<br>");
		out.print("value:" + c.getValue() + "<br>");
	}
%>
	<a href="Ex07Cookie.jsp">test 쿠키 생성</a>
<a href="Ex03RemoveCookie.jsp">쿠키삭제</a>
</body>
</html>
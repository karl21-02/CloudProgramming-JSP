<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	
	public int abs(int num) {
		return (num >= 0) ? num : -num;
	}
	
	%>
	
	5의 절대값 : <%=abs(5) %>
	-5의 절대값 : <%=abs(5) %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% int num1 = 10; %>
	
	<%! 
		int num2 = 20;
	
		public void print() {
			System.out.print("Hello JSP!");
		}
	%>
</body>
</html>
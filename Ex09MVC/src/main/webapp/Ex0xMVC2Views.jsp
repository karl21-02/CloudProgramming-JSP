<%@page import="com.smhrd.model.StudentVO"%>
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
	    StudentVO vo = (StudentVO)session.getAttribute("student");
	%>
	
	이름 : <%=vo.getName() %>
	학과 : <%=vo.getMajor() %>
	전화번호 : <%=vo.getTel() %>
</body>
</html>
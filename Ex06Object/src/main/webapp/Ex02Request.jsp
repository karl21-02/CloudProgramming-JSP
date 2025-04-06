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
		int java = Integer.parseInt(request.getParameter("java"));
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int android = Integer.parseInt(request.getParameter("and"));
		
		double avg = (java + web + iot + android) / 4.0;
		String grade;
		if(avg >= 95) {
			// A+
			grade = "A+";
		} else if (avg >= 90) {
			// A
			grade = "A";
		} else if(avg >= 85) {
			// B+
			grade = "B+";
		} else if(avg >= 80) {
			// B
			grade = "B";
		} else {
			// F
			grade = "F";
		}
	%>
	
	이름 : <%=name %><br>
	<% out.print("자바 점수 : " + java); %><br>
	웹 점수 : <%=web %><br>
	iot 점수 : <%=iot %><br>
	android 점수 : <%=android %><br>
	평균 : <%=avg %>
	학점 : <%=grade %>
</body>
</html>
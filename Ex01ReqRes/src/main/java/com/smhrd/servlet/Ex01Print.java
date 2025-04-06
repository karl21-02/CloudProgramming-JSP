package com.smhrd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/print")
public class Ex01Print extends HttpServlet {
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// localhost:8081/reqres/print
		// Hello Servlet 문장을 응답
		// PrintWriter : 텍스트 출력 스트림(종료)
		PrintWriter out = response.getWriter();
		out.print("<b>Hello</b> Servlet!"); // 스트림을 통해 텍스트 출력
	}
}
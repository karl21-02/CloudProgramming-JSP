package com.smhrd.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 주석(annotation) : 컴파일 시에 영향을 미치지 않는 코드 + 특정한 역활을 하게되는 코드
// URL 매핑을 하게 해주는 역활 수행!
@WebServlet("/first")
public class Ex00 extends HttpServlet { // extends : 상속 -> HttpServlet
										// 모든 서블릿 클래스는 HttpServlet클래스를 상속 받아야함!
	
	// 서블릿 객체를 전송 시 객체 형태 그대로가 아닌 컴퓨터가 알아볼 수 있는 바이트 배열 형태로 변환
	// 객체 -> 바이트 : 직렬화, 바이트 -> 객체 : 역직렬화 ::: 이때 객체의 버전 관리가 필요하고 serialVersionUID로 버전 관리를 해야함.
	private static final long serialVersionUID = 1L;
	
	// 생성자(Constructor) : 객체 생성, 초기화
	// 이걸로 만든 객체는 서블릿의 역활(요청, 응답)은 수행하지 못함. 아래 init()메서드 호출해야함
	public Ex00() {
        super();
        System.out.println("생성자 호출!");
    }

	// 생성자로 생성된 객체가 서블릿의 역활을 수행할 수 있도록 초기화해주는 역활
	// 초기화 작업은 비용이 많이 드는 작업이기 때문에
	// -> 요청을 받을때마다 수행해줘야한다면 서버에 부하가 많이 간다.
	// 최초 요청이 들어와 객체가 생성이 되었을 경우에만 실행이 된다.
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 호출!");
	}

	// 생성된 객체를 소멸
	// 서버가 중지 / 재시작 될 경우에만 호출됨
	public void destroy() {
		System.out.println("destroy 호출!");
	}

	// 요청과 응답을 처리
	// 클라이언트의 요청 메서드에 따라 doGet / doPost 중 무엇을 호출할 것인지 결정
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service 호출!");
		super.service(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 호출!");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 호출!");
	}

}

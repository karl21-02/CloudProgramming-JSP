

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.StudentDAO;
import com.smhrd.model.StudentVO;

@WebServlet("/Ex02xMVC1Controller")
public class Ex02xMVC1Controller2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		
		System.out.println(name);
		
		StudentDAO dao = new StudentDAO();
		
		StudentVO vo = dao.selectOne(name);
		
		HttpSession session = request.getSession();
		session.setAttribute("student", vo);
		
		response.sendRedirect("Ex0xMVC2Views.jsp");
	}

}

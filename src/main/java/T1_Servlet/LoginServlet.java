package T1_Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/tourLogin")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int login_correct =  0;  // 0  1  2
		if(login_correct == 0 ) {
			request.getRequestDispatcher("/mainIndex.html").forward(request, response);
		}else if( login_correct == 1) {
			request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response);
		}
		
	}
}

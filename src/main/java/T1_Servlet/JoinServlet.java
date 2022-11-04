package T1_Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/tourjoin")
public class JoinServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		request.getRequestDispatcher("WEB-INF/view/join.jsp").forward(request, response);
	}
	
	@Override
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 넘어온 데이터 가져오기
		// 디비에 저장
		
		String id = "DB에서 가져올 ID";
		request.setAttribute("id", id); // id 심기
		request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response); // 로그인 페이지로  forword
		
	}
}

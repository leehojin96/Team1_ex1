package T1_Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/package_list")
public class PkServlet extends HttpServlet{

  @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
	  request.getRequestDispatcher("/WEB-INF/view/PklistAjax.jsp").forward(request, response);
}
}
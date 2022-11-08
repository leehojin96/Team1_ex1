package T1_Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import T1_Dao.Pay;
import T1_Dao.PayDao;

@WebServlet("/tourRes")
public class ResServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		// dao  디비작업
				PayDao dao = new PayDao();
				ArrayList<Pay> list = dao.pay();
				
				// data 심기
				request.setAttribute("list",list);
		
		request.getRequestDispatcher("WEB-INF/view/res.jsp").forward(request, response);
	}
	
}
package T1_BinResServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reservation1")
public class ReservationServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/res.jsp").forward(request, response);
		System.out.println("가져와요");
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("가져와요2");
		
		String pay_code = request.getParameter("pay_code");
		String name = request.getParameter("name");
		String eng_name = request.getParameter("eng_name");
		int birth = Integer.parseInt(request.getParameter("birth"));
		//String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		
		
		System.out.println("제발아아앙");
		
		
		CustomerDao dao = new CustomerDao();
		Customer c = new Customer("10", pay_code,name,eng_name, birth, phone,gender);		
		//CustomerDao dao = new CustomerDao();		
		CustomerService service = new CustomerService(dao);		
		service.insert(c);
		
		response.sendRedirect("reservation");
		
		//데이터 insert 후 보낼 페이지
		//request.getRequestDispatcher("WEB-INF/view/res.jsp").forward(request, response);
		
		
	}
	
	
	
	
	
	
	
	
	
}
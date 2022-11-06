package T1_Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import T1_Dao.CusDao;
import T1_Dao.Customer;
import T1_Service.CusService;

@WebServlet("/tourJoin")
public class JoinServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		request.getRequestDispatcher("WEB-INF/view/join.jsp").forward(request, response);
	}
	
	@Override
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 넘어온 데이터 가져오기
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		
		
		// 디비에 저장
		
		//회원 객체 생성
		Customer customer = new Customer(name, id, pw, phone, birth, gender, 0);
		
		// 회원 dao 생성
		CusDao cusdao = new CusDao();
		
		// 회원 서비스 회원dao매개변수로 생성
		CusService cusservice = new CusService(cusdao);
		
		// 회원 insert
		cusservice.insert(customer);
		 
		response.sendRedirect("tourLogin");
		
		
	}
}

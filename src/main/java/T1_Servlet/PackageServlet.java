package T1_Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import T1_Dao.FlightDao;
import T1_Dao.PackageDao;
import T1_Dto.Flight;
import T1_Service.FlightService;
import T1_Service.PackageService;

@WebServlet("/tourPackageInfo")
public class PackageServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		// dao  디비작업
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		if(id != null) {
			PackageDao dao = new PackageDao();
			PackageService payservice = new PackageService(dao);
			ArrayList<T1_Dto.Package> list = payservice.packagelist();
			
			FlightDao flightdao = new FlightDao();
			FlightService flightservice = new FlightService(flightdao);
			ArrayList<Flight> flightlist = flightservice.flightlist();
			
			// data 심기
			request.setAttribute("list",list);
			request.setAttribute("flightlist",flightlist);
			
			request.getRequestDispatcher("WEB-INF/view/package.jsp").forward(request, response);
		}
	}

}
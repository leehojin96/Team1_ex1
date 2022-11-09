package T1_Controller;

import java.io.IOException;
import java.security.Provider.Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import T1_Dao.ResDao;
import T1_Service.ResService;

@WebServlet("/res_list123")
public class ResController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");	
		response.setContentType("text/plain;utf-8");
		
		ResDao resdao = new ResDao();
		
		ResService resservice = new ResService();
		resservice.setResDao(resdao);
		
		String res_list = resservice.getResList();
		response.getWriter().print(res_list);
}
}

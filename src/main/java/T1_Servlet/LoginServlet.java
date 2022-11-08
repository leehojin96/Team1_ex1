package T1_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import T1_Dao.CusDao;
import T1_Service.CusService;

@WebServlet("/tourLogin")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
		
<<<<<<< HEAD
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		int login_correct = 0 ;  // 0  1  2
		if(login_correct == 0 ) {
			request.getRequestDispatcher("/sucLoginMain.html").forward(request, response);
		}else if( login_correct == 1) {
			request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response);
		}
=======
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		
		
		CusDao cusdao = new CusDao();
		CusService service = new CusService(cusdao);
		int result = service.checkLogin(id, pw);
		
		System.out.println(result);
		
		if(result == 1 ){
            request.getRequestDispatcher("/sucLoginMain.html").forward(request, response);
         } else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>alert('비밀번호가 틀립니다.'); history.back(); </script>");
         } else if (result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>alert('등록되지 않은 아이디입니다.'); history.back(); </script>");
         } else if (result == 2){
            PrintWriter script = response.getWriter();
            script.println("<script>alert('DB 오류'); history.back(); </script>");
         }
>>>>>>> branch 'master' of https://github.com/leehojin96/Team1_ex1.git
	}
}

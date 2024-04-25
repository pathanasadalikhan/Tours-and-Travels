package MyTrip;

import java.io.IOException;

import Model.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "review", urlPatterns = {"/review"})
public class ServletReview extends HttpServlet{
	protected void processRequest(HttpServletRequest req, HttpServletResponse resp) {
		try {
			HttpSession session=req.getSession();
			Registration reg=new Registration(session);
			System.out.println("inside the servlet review");
			if(req.getParameter("users")!=null) {
				String users=req.getParameter("users");
				String userid=req.getParameter("userid");
				System.out.println("users value is :"+users+" and user id is :"+userid);
				String status=reg.likes(users,userid);
				System.out.println("status is :"+status);
				if(status.equals("success")) {
					req.setAttribute("status", "Thank You");
		        	RequestDispatcher rd=req.getRequestDispatcher("HomePage.jsp");
		        	rd.forward(req, resp);
				}else {
	            	req.setAttribute("status", "Something error occurred");
	            	RequestDispatcher rd=req.getRequestDispatcher("HomePage.jsp");
	            	rd.forward(req, resp);
	            }
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req,resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req,resp);
	}
}

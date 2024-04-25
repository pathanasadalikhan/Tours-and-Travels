package MyTrip;

import java.io.IOException;
import java.sql.Date;

import Model.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "booknow", urlPatterns = {"/booknow"})
public class BookNow extends HttpServlet{
	public void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		try {
			HttpSession session=req.getSession();
			Registration reg=new Registration(session);
			if(req.getParameter("booknow")!=null) {
				String name=req.getParameter("name");
				String phone=req.getParameter("phone");
				String date=req.getParameter("date");
				String status=reg.bookNow(name,phone,date);
				if(status.equals("success")) {
					req.setAttribute("status", "Booking Done Successfully");
					RequestDispatcher re=req.getRequestDispatcher("HomePage.jsp");
					re.forward(req, resp);
				}else {
					req.setAttribute("status", "failure occured");
					RequestDispatcher re=req.getRequestDispatcher("Events.jsp");
					re.forward(req, resp);
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

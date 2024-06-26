package MyTrip;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import Model.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(name = "deleteus", urlPatterns = {"/deleteus"})
public class DeleteUser extends HttpServlet{
	protected void processRequest(HttpServletRequest req,HttpServletResponse resp){
		try {
			HttpSession session=req.getSession();
			Registration reg=new Registration(session);
			int id=Integer.parseInt(req.getParameter("userid"));
			String status=reg.deletes(id);
			if(status.equals("sucess")) {
				req.setAttribute("status", "Account Deleted Sucessfully");
				RequestDispatcher re=req.getRequestDispatcher("Delete.jsp");
				re.forward(req, resp);
			}else {
				req.setAttribute("status", "Failure Occured");
				RequestDispatcher re=req.getRequestDispatcher("Delete.jsp");
				re.forward(req, resp);
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


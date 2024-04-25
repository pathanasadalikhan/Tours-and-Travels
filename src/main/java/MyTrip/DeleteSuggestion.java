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

@WebServlet(name = "delete", urlPatterns = { "/delete" })
public class DeleteSuggestion extends HttpServlet {
	protected void processRequest(HttpServletRequest req, HttpServletResponse resp) {
		try {
			HttpSession session = req.getSession();
			Registration reg = new Registration(session);
			if (req.getParameter("userid")!=null) {
				int id = Integer.parseInt(req.getParameter("userid"));
				String status = reg.delete(id);
				if (status.equals("success")) {
					req.setAttribute("status", "Suggestion Deleted");
					RequestDispatcher re = req.getRequestDispatcher("Suggestion.jsp");
					re.forward(req, resp);
				} else {
					req.setAttribute("status", "Failure Occured");
					RequestDispatcher re = req.getRequestDispatcher("Suggestion.jsp");
					re.forward(req, resp);
				}
			}else if(req.getParameter("booking")!=null) {
				int bookingId=Integer.parseInt(req.getParameter("booking"));
				System.out.println("inside the delete suggestion and id retrived is"+bookingId);
				String status=reg.updating(bookingId);
				if (status.equals("success")) {
					req.setAttribute("status", "your package is Cancled");
					RequestDispatcher re = req.getRequestDispatcher("Booking.jsp");
					re.forward(req, resp);
				} else {
					req.setAttribute("status", "some error Occured");
					RequestDispatcher re = req.getRequestDispatcher("Booking.jsp");
					re.forward(req, resp);
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
}

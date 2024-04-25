package MyTrip;

import java.io.IOException;
import java.io.PrintWriter;

import Model.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(name = "login", urlPatterns = {"/login"})
public class Trips extends HttpServlet{
	protected void processRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		HttpSession session=req.getSession();
		Registration reg=new Registration(session);
		if(req.getParameter("login")!=null) {
			String email=req.getParameter("email");
			String pass=req.getParameter("pass");
			String status=reg.login(email,pass);
			if(status.equals("success")) {
				req.setAttribute("status", "Login Successful");
				RequestDispatcher rd=req.getRequestDispatcher("HomePage.jsp");
				rd.forward(req, resp);
			}else if(status.equals("failure")) {
				req.setAttribute("status", "Login Failed");
				RequestDispatcher rd=req.getRequestDispatcher("StartPage.jsp");
				rd.forward(req, resp);
			}
		}else if(req.getParameter("signup")!=null) {
			String fname=req.getParameter("fname");
			String lname=req.getParameter("lname");
			String phone=req.getParameter("num");
			String email=req.getParameter("email");
			String select=req.getParameter("select");
			String gender=req.getParameter("inlineRadioOptions");
			String pw=(String)req.getParameter("pw");
			String cp=(String)req.getParameter("cp");
			if (pw.equals(cp)) {
                String status = reg.Registration(fname,lname, phone, email,select, pw, gender);
                if(status.equals("existed")) {
                	req.setAttribute("status"," Existed customer");
                	RequestDispatcher rd=req.getRequestDispatcher("StartPage.jsp");
                	rd.forward(req, resp);
                }else if(status.equals("success")) {
                	req.setAttribute("status", "successfully Registered");
                	RequestDispatcher rd=req.getRequestDispatcher("StartPage.jsp");
                	rd.forward(req, resp);
                }else if(status.equals("failure")) {
                	req.setAttribute("status", "Registration failed");
                	RequestDispatcher rd=req.getRequestDispatcher("StartPage.jsp");
                	rd.forward(req, resp);
                }
            }
		}else if(req.getParameter("update")!=null) {
			String fname=req.getParameter("fname");
			String lname=req.getParameter("lname");
			String phone=req.getParameter("phone");
			String email=req.getParameter("email");
			Registration u = new Registration(session);
            String status = u.update(fname,lname,phone,email);
            if (status.equals("success")) {
                req.setAttribute("status", "Profile successfully Updated");
                RequestDispatcher rd1 = req.getRequestDispatcher("HomePage.jsp");
                rd1.forward(req, resp);
            } else {
                req.setAttribute("status", "Updation failure");
                RequestDispatcher rd1 = req.getRequestDispatcher("HomePage.jsp");
                rd1.forward(req, resp);
            }
		}else if(req.getParameter("suggest")!=null) {
			String guest=req.getParameter("suggemail");
			String suggestion=req.getParameter("sugg");
			String status=reg.SuggestionBox(guest,suggestion);
			if(status.equals("existed")) {
				req.setAttribute("status", "Your Suggestion is already recorded");
            	RequestDispatcher rd=req.getRequestDispatcher("StartPage.jsp");
            	rd.forward(req, resp);
            }else if(status.equals("success")) {
            	req.setAttribute("status", "Thank You for Giving your valuable suggestion");
            	RequestDispatcher rd=req.getRequestDispatcher("HomePage.jsp");
            	rd.forward(req, resp);
            }else if(status.equals("failure")) {
            	req.setAttribute("status", "Something error occurred");
            	RequestDispatcher rd=req.getRequestDispatcher("HomePage.jsp");
            	rd.forward(req, resp);
            }
		}else if(req.getParameter("logout")!=null) {
			session.invalidate();
			RequestDispatcher rd=req.getRequestDispatcher("StartPage.jsp");
			rd.forward(req, resp);
		}else if(req.getParameter("event")!=null) {
			String book=req.getParameter("event");
			String status=reg.book(book);
			if(status.equals("success")) {
				req.setAttribute("status", "Welcome");
	        	RequestDispatcher rd=req.getRequestDispatcher("Events.jsp");
	        	rd.forward(req, resp);
			}else if(status.equals("failure")) {
            	req.setAttribute("status", "Something error occurred");
            	RequestDispatcher rd=req.getRequestDispatcher(".jsp");
            	rd.forward(req, resp);
            }
		}else if(req.getParameter("post")!=null) {
			String email=req.getParameter("remail");
			String name=req.getParameter("name");
			String review=req.getParameter("review");
			String status=reg.insertReview(email,name,review);
			if(status.equals("success")) {
				req.setAttribute("status", "Thank You for Giving Review");
	        	RequestDispatcher rd=req.getRequestDispatcher("HomePage.jsp");
	        	rd.forward(req, resp);
			}else if(status.equals("failure")) {
            	req.setAttribute("status", "Something error occurred");
            	RequestDispatcher rd=req.getRequestDispatcher("HomePage.jsp");
            	rd.forward(req, resp);
            }else {
            	RequestDispatcher rd=req.getRequestDispatcher("HomePage.jsp");
            	rd.forward(req, resp);
            }
		}else if(req.getParameter("users")!=null) {
			String users=req.getParameter("users");
			String userid=req.getParameter("userid");
			String status=reg.likes(users,userid);
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

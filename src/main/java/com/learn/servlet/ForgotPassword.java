package com.learn.servlet;

import java.io.IOException;

import com.learn.impl.UserImpl;
import com.learn.impl.UserInterface;
import com.learn.users.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/pavan")
public class ForgotPassword extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session= req.getSession(false);
		Users u=new Users();
		String email=req.getParameter("mail");
		System.out.println(email);
		String pin=req.getParameter("password");
		System.out.println(pin);
		String confirmPin=req.getParameter("confirmpassword");
		System.out.println(confirmPin);
		
		UserInterface ui=new UserImpl();
		
			if(pin.equals(confirmPin)) {
				u.setEmail(email);
				u.setPassword(confirmPin);
				boolean res=ui.updateUsers(u);
				if(res) {
					session.setAttribute("pinsuccess", "pin changed successfull");
					RequestDispatcher rd=req.getRequestDispatcher("Forgotpassword.jsp");
					rd.forward(req, resp);
				}
				else {
					session.setAttribute("pinfailure", "pin change failure");
					RequestDispatcher rd=req.getRequestDispatcher("Forgotpassword.jsp");
					rd.forward(req, resp);
				}
			}
			else {
				session.setAttribute("pinfailure", "new pin & confirm pin doesnt match");
				RequestDispatcher rd=req.getRequestDispatcher("Forgotpassword.jsp");
				rd.forward(req, resp);
			}
		}
	
	}


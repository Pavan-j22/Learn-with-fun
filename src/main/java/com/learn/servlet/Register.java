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

@WebServlet("/register")
public class Register extends HttpServlet{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			HttpSession session=req.getSession();
			Users u=new Users();
			UserInterface ui=new UserImpl();
			String name=req.getParameter("name");
			u.setName(name);
			String email=req.getParameter("mail");
			u.setEmail(email);
			String phone=req.getParameter("phone");
			u.setPhone(phone);
			String pin=req.getParameter("password");
			u.setPassword(pin);
			
	
				boolean status=ui.insertusers(u);
				
				if(status) {
					session.setAttribute("success", "signup successful");
					RequestDispatcher rd=req.getRequestDispatcher("Register.jsp");
					rd.forward(req, resp);
				}
				else {
					session.setAttribute("failure", "signup failure");
					RequestDispatcher rd=req.getRequestDispatcher("Register.jsp");
					rd.forward(req, resp);
				}
			}
}


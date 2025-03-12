package com.learn.servlet;

import java.io.IOException;

import com.learn.impl.*;
import com.learn.users.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(true);
		Users u;
		UserInterface ui=new UserImpl();
		String email=req.getParameter("mail");
		System.out.println(email);
		String password=req.getParameter("pin");
		System.out.println(password);
		u=ui.getUsers(email, password);
		if(u!=null) {
			session.setAttribute("Users", u);
			RequestDispatcher rd=req.getRequestDispatcher("Welcome.jsp");
			rd.forward(req, resp);
		}
		else {
			session.setAttribute("loginfailure", "login failure");
			RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
			rd.forward(req, resp);
		}
	}
}
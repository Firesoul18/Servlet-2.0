package com.yogesh;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddServlet extends HttpServlet {
	
	public void service(HttpServletRequest req, HttpServletResponse res) {
		int i = Integer.parseInt(req.getParameter("num1"));
		int j = Integer.parseInt(req.getParameter("num2"));
		
	
		req.setAttribute("mult", (i*j));
		req.setAttribute("sum", (i+j));
		
		RequestDispatcher rd = req.getRequestDispatcher("printer");
		
		try {
			rd.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}

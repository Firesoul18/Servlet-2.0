package com.yogesh;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class RedirectServlet
 */
public class RedirectServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		response.getWriter().append("Served by: ").append(request.getSession().getAttribute("name").toString());
		
		var cookies = request.getCookies();
		for(var c: cookies) {
			if(c.getName().equals("env")){
				response.getWriter().append("\nDeveloped on: ").append(c.getValue());
				break;
			}
		}
		
		ServletConfig s = getServletConfig();
		String nameFromInit = s.getInitParameter("name");
		response.getWriter().append("\n Name from init: "+nameFromInit);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var t = request.getAttribute("resource");
		System.out.println(t);
	}

}

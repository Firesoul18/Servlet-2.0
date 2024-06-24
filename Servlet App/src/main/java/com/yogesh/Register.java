package com.yogesh;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.UUID;

import com.mysql.cj.jdbc.Driver;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var uname = request.getParameter("username");
		var email = request.getParameter("email");
		var pass = request.getParameter("password");
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		}catch(Exception e) {
			System.out.println("Exception in driver registeration: ");
			e.printStackTrace();
		}
		
		try(
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/test","root","")
			) {
			register(conn, uname, email, pass, request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.getWriter().println("UN: "+uname+"\nMAIL: "+email+"\nPASS: "+pass);
		
	}
	
	private void register(Connection conn, String uname, String email, String pass, HttpServletRequest req, HttpServletResponse res) {
		String insertQuery = "INSERT INTO users (id, username, email, password) values(?, ?, ?, ?)";
		try(PreparedStatement stmt = conn.prepareStatement(insertQuery)){
				UUID uuid = UUID.randomUUID();
				String uid = uuid.toString();
				
				stmt.setString(1,uid);
				stmt.setString(2, uname);
				stmt.setString(3, email);
				stmt.setString(4, pass);
				
				boolean done = stmt.execute();
				HttpSession sess = req.getSession();
				
				sess.setAttribute("jwt", "1234asdf");
				try{res.sendRedirect("AllAboutJsp.jsp");}catch(Exception e) {
					res.sendRedirect("Register.html");
				}
				
		}catch(SQLException | IOException e) {
			e.printStackTrace();
		}
	}

}

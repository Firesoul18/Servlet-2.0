package com.yogesh;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class PrinterServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res) {

        int i = (int)(req.getAttribute("mult"));
        int j = (int)(req.getAttribute("sum"));

        try {
            res.getWriter().print("Sum is: "+(i)+", and Product is: "+(j));

            // This value is created in the web.xml file.
            // We have not created the init-param for this servlet,
            // so this will take the global context-param values.
            // Retrieve the global context parameter "namre"
            String nameFromInit = getServletContext().getInitParameter("namre");


            res.getWriter().append("\n Name from init: " + nameFromInit);

            var session = req.getSession();
            session.setAttribute("name", "Yogesh");

            Cookie cookie = new Cookie("env","Realme_Book_Slim");
            res.addCookie(cookie);

            // If we don't redirect this, the sum and product will be displayed
             res.sendRedirect("redirect");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

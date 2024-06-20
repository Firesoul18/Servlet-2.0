<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <% // this will set the error page if any error occurs but i have already put it in the web.xml %>
 <%//@page errorPage="error.jsp" --%> 
    
<% //to include any java package in jsp (Directive) - Directive is the tag with @ %>
<% //there are 3 kinds of directives - page (to add jsp related info like language, session, info etc.) , include(include other jsp files), taglib(get external library tags with url and prefix) %>
<%@page import="java.util.*" %>

<% //to include any other jsp file in jsp like php (Directive) %>
<%@ include file="header.jsp" %>

<% //this is to declare the things which will not be written inside the service method (Declaration) %>
<%! int i = 5; %>

<% // this is expression tag in jsp it is equals to out.println() (Expression)%>
<%= "Hey! This string will be written in out.println()" %>

<% //this is the tag that goes inside the service method along with all these comments (Scriplet) %>
<% 
	out.println("So How you liked the information. ");
%>

<% 
	//this is the way to set attributes in page context with scope. scope can be session, page, application etc. (default - page scope) 
	pageContext.setAttribute("x","y",PageContext.SESSION_SCOPE);
%>



</body>
</html>

<%
	/*
		jsp gives 5 objects out of the box:
			1. Request (HttpServletRequest)
			2. Response (HttpServletResponse)
			3. PageContext(PageContext)
			4. Out (JSPWriter ~ PrintWriter Object)
			5. Application (ServletContext)
			6. Config (ServletConfig)
			7. Session (HttpSession)
	*/
%>
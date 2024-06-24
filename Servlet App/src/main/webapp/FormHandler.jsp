<%@page import="com.yogesh.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <%-- This scriptlet outputs some information based on request parameters --%>
    <%
    	String name = request.getParameter("name");
    	String age = request.getParameter("age");
        out.append("Served by: ").append(request.getParameter("name")).append("\nAge: ").append(request.getParameter("age"));
        User u = new User(Double.parseDouble(age), name);
        session.setAttribute("user1", u);
    %>
    
    
    <%-- Using JSTL to set session attributes --%>
    <c:set var="actor" value="SSR" scope="session"/>
    <!-- c:set var="user1" value="${u}" scope="session"/ -->
     
    <%-- Displaying the user1 object using JSTL expression --%>
    <%-- c:out value="${user1}" / --%>
    
    <c:redirect url="JSTL.jsp"/>
    
</body>
</html>

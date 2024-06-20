<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All About JSP</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            color: #333;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            max-width: 800px;
            width: 90%;
            text-align: left;
        }
        h1 {
            color: #3498db;
        }
        p {
            line-height: 1.6;
        }
        .section {
            margin-bottom: 20px;
        }
        .code {
            background-color: #f9f9f9;
            padding: 10px;
            border-radius: 4px;
            font-size: 14px;
            margin-top: 10px;
            overflow-x: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>All About JSP</h1>

        <div class="section">
            <h2>Directives</h2>
            <p>Directives provide instructions to the JSP container. There are three types:</p>
            <ul>
                <li><strong>Page Directive:</strong> Defines page-specific attributes.</li>
                <li><strong>Include Directive:</strong> Includes other JSP files into the current JSP page.</li>
                <li><strong>Taglib Directive:</strong> Imports tag libraries for use in the JSP page.</li>
            </ul>
            <div class="code">
                < %@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><br/>
                < %@ include file="header.jsp" %><br/>
                < %@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            </div>
        </div>

        <div class="section">
            <h2>Declaration</h2>
            <p>Declarations declare variables and methods accessible across the JSP page.</p>
            <div class="code">
                < %! int i = 5; %> <br/>
                < %! public void greet() { out.println("Hello, World!"); } %>
            </div>
        </div>

        <div class="section">
            <h2>Expressions</h2>
            <p>Expression tags evaluate expressions and output results to the response.</p>
            <div class="code">
                < %= "Welcome to JSP!" %><br/>
                < %= 2 + 3 %>
            </div>
        </div>

        <div class="section">
            <h2>Scriptlets</h2>
            <p>Scriptlets embed Java code within JSP pages for dynamic content generation.</p>
            <div class="code">
                < % 
                    String message = "Hello from JSP!";<br/>
                    out.println(message);
                %>
            </div>
        </div>

        <div class="section">
            <h2>JSP Objects</h2>
            <p>JSP provides built-in objects for managing web application resources.</p>
            <ul>
                <li><strong>request:</strong> HttpServletRequest object</li>
                <li><strong>response:</strong> HttpServletResponse object</li>
                <li><strong>pageContext:</strong> PageContext object</li>
                <li><strong>out:</strong> JSPWriter object</li>
                <li><strong>session:</strong> HttpSession object</li>
                <li><strong>application:</strong> ServletContext object</li>
                <li><strong>config:</strong> ServletConfig object</li>
            </ul>
            <div class="code">
                <%@ page errorPage="error.jsp" %>
            </div>
        </div>

        <div class="section">
            <h2>Page Directive with errorPage</h2>
            <p>Use the <code>errorPage</code> attribute to specify an error page for handling exceptions.</p>
            <div class="code">
                <%@ page errorPage="error.jsp" %>
            </div>
        </div>

        <div class="section">
            <h2>Conclusion</h2>
            <p>These are the fundamental concepts of JSP. Experiment with these concepts to build dynamic web applications using Java!</p>
        </div>
    </div>
</body>
</html>

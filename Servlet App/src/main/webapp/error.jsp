<%
	/*
		Exception Object: In JSP, when an error occurs and an error page is specified, the JSP container forwards the request to the error page along with the exception object. This object is an instance of Throwable and contains information about the error that occurred.
		errorPage Attribute: The errorPage="true" attribute in the page directive indicates that the current JSP page is an error page. This page can then access the exception object to display detailed error information.
	*/
%>

<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .error-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        h1 {
            color: #e74c3c;
        }
        p {
            font-size: 16px;
        }
        .exception {
            margin-top: 20px;
            padding: 15px;
            background-color: #f7e9e9;
            border: 1px solid #e74c3c;
            border-radius: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Oops! Something went wrong.</h1>
        <p>We encountered an error while processing your request. Please try again later.</p>
        <div class="exception">
            <h2>Error Details:</h2>
            <p><strong>Message:</strong> <%= exception.getMessage() %></p>
            <p><strong>Exception Type:</strong> <%= exception.getClass().getName() %></p>
        </div>
    </div>
</body>
</html>

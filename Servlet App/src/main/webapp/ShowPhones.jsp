<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Mobile Phone Names From Database: </h1>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3310/test" user="root" password="" />

	<sql:query var="rs" dataSource="${db}">select * from mobile_brands</sql:query>

	<c:forEach var="brand" items="${rs.rows}">
		Id. ${fn:trim(brand.id)}:&nbsp;&nbsp;
		<c:out value="${brand.brand_name}"></c:out>
		<br />	
	</c:forEach>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>${h}</h1>
	<p>${desc}</p>
	
	<hr>
	<h2>User Name : ${user.name}</h2>
	<h2>Email     : ${user.email}</h2>
	<h2>Password  : ${user.password}</h2>
</body>
</html>
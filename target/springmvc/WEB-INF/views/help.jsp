<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Help Page</title>
</head>

<body>
	<h1>This is Help page</h1>
	
	
	<h1> Name is : ${name} </h1>
	<hr/>
	
	<h1>Marks</h1>
	<c:forEach var="item" items="${ marks}">
		<h1>${item}</h1>
	
	</c:forEach>
	
	
	
</body>

</html>


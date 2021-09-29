<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
</head>

<body>
	<h1>This is home page</h1>
	
	<%
		String name = (String)	request.getAttribute("name");
		Integer id = (Integer) request.getAttribute("id");
		List<String> language = (List<String>) request.getAttribute("lang");
	%>
	
	
	<h1> Name is : <%=name%> </h1>
	<h1> Id is   : <%=id %></h1>
	<h1> Language : 
	<%
		for(String s : language ){
			
	%>
	
			<h2><%=s %></h2>
	<% 
		}
	%>
	
	 </h1>
	
	
</body>

</html>


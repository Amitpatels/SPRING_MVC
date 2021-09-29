<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

   
  </head>
  <body>

   	<div class="container mt-5 ">
    	<h1 class="text-center">${h}</h1>
    	<p class="text-center">${desc}</p>
	    <form action="registerform" method="post">
		  <div class="form-group">
		    <label for="exampleInputEmail1" class="form-label">Email address</label>
		    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
		  </div>
		 
		  <div class="form-group">
		    <label for="userName" class="form-label">User Name</label>
		    <input type="text" class="form-control" id="userName" aria-describedby="emailHelp" name="name">
		  </div>
		 
		  <div class="form-group">
		    <label for="userPassword" class="form-label">User Password</label>
		    <input type="password" class="form-control" id="userPassword" aria-describedby="emailHelp" name="password">
		  </div>
		 
		 <div class="container mt-3 text-center">
		 	<button type="submit" class="btn btn-success">Sign up</button>
		 </div>
		 
	   </form>
    
   	  </div>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

  </body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">
<title>Festive-Home</title>

<style >

.container {
	
}

form {
	position: absolute;
	width: 25%;
	top: 220px;
	border-style: groove;
	backdrop-filter:blur(2px);
	padding: 10px;
	margin: 0 auto;
	border-radius: 10px;
	color:white;
	
}
.form-container {
    display: grid;
    place-items: center;
    min-height: 100vh;
}

h1 {
	text-align: center;
}

.bg-image {
	background-size: cover;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head >

<body class="bg-image" 
     style="background-image: url('https://www.steppestravel.com/us/app/uploads/2019/06/taj-falaknuma-palace-hyderabad-india-1920x1080.jpg');
           background-size: cover; height: 100vh">
<h1 style="font-size:60px; color:#FFFAFA ;">Online Venue Booking </h1>

<div  class="form-container">
<form:form action="validate&login" method="POST" modelAttribute="user">

<br>
<span>Enter your credentials:</span>
<br>
<form:label class="form-label" path="username">UserName:</form:label>
<form:input type="text" class="form-control" name="username" path="username" required="required"/>

<form:label class="form-label" path="password">Password:</form:label>
<form:input type="password" class="form-control" name="password" path="password" required="required"/>
<span class="text-warning"> ${mesg1} </span>

<br>
<a class="btn btn-primary" class="text-info" href="registration">Sign Up</a> 	<input class="btn btn-success" style="float:right;" type="submit" value=Login>

</form:form>
</div>

</body>

</html>
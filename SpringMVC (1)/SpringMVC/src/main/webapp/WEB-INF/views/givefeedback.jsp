<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Give Feedback</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<style type="text/css">

h2
{
justify-content: center;
position: relative;
left:37.5%;
}

#mynav {
	display: flex;
	justify-content: space-between;
}

.navbar-nav {
	margin-left: auto;}

.navbar {
	background-color: #000000; 
}

.navbar-brand {
	margin-right: auto; 
	color: #007bff; 
	font-weight: bold;
}

.navbar-nav .nav-link {
	color: #343a40; 
}

.navbar-nav .nav-link:hover {
	color: #0056b3; 
}

body {
	background-image: url('/images/feedback.jpeg');
	background-size: cover;
}
</style>
</head>
<body>

		<nav class="navbar navbar-expand-lg navbar-light">
		<a style="color:white;" class="navbar-brand" href="/getuserdashboard">FESTIVE &#x1F38A;</a>

		<div class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item "><a style="color:white;" class="nav-link" href="allvenues">VENUES
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item "><a style="color:white;" class="nav-link" href="bookvenue">BOOK
						VENUE</a></li>
				<li class="nav-item active"><a style="color:white;" class="nav-link" href="userbookings">MY
						BOOKINGS</a></li>
				<li class="nav-item "><a style="color:white;" class="nav-link" href="userfeedback">FEEDBACK</a></li>
				<li class="nav-item active"><a style="color:white;" class="nav-link"
					style="text-align: right;" onclick="noBack()" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>

		<h1 style=" color:#000000; text-align: center;">Feedback Form</h1>
				<div id="formcon" class="container">
		
			<form:form action="savefeedback" method="POST" modelAttribute="feedback">
		
			<span>Please provide feedback:</span>
<br>
			<form:label class="form-label" path="book_id">Booking ID:</form:label>
			<form:input type="number" class="form-control" name="booking_id"
				path="book_id" required="required" value="${feedback.book_id}"/>

			<form:label class="form-label" path="msg">Feedback:</form:label>
			<!-- <form:input type="text" class="form-control"
				placeholder="Write your feedback with all details" name="message"
				path="msg" required="required" size="30" />-->
		 <textarea name="msg" class="form-control" placeholder="Write your feedback with all details"  required="required" rows="8" cols="10"></textarea> 

			<br> <input class="btn btn-success" style="float: right;"
				type="submit" value="SUBMIT">
		<h2 style="color: #000000;" class="font-italic">${msg}</h2>

	</form:form>
		</div>




</body>
</html>
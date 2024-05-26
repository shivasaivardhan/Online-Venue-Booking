<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Venue</title>

<style type="text/css">
#mynav {
	display: flex;
	justify-content: space-between;
}

.navbar-nav {
	margin-left: auto; \
}

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

.form-container {
	padding: 30px;
	position: relative;
	border: 1px solid #ccc;
	border-radius: 10px;
	background-color: #f9f9f9;
	width: 70%;
	left: 15%;
	right: 15%;
	border-radius: 5px;
	background-color: #f9f9f9;
}
</style>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const dateInput = document.getElementById("myDate");
        const tomorrow = new Date();
        tomorrow.setDate(tomorrow.getDate() + 1); // Add one day
        const formattedDate = tomorrow.toISOString().split("T")[0];
        dateInput.min = formattedDate;
        });
    </script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg">
		<a style="color: white;" class="navbar-brand" href="/getuserdashboard">FESTIVE
			&#x1F38A;</a>

		<div id="mynav" class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item "><a class="nav-link" href="allvenues"
					style="color: white;">VENUES <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="bookvenue" style="color: white;">BOOK VENUE</a></li>
				<li class="nav-item "><a class="nav-link" href="userbookings"
					style="color: white;">MY BOOKINGS</a></li>
				<li class="nav-item "><a class="nav-link" href="userfeedback"
					style="color: white;">FEEDBACK</a></li>
				<li class="nav-item "><a class="nav-link" style="color: white;"
					s style="text-align: right;" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>
	<br>

	<div class="form-container">
		<h2>Book Your Venue Form</h2>

		<h5 class="text-warning">${msg}</h5>

		<form action="conformvenue" method="post" modelAttribute="selectvenue">
			<div class="form-group">
				<label for="venueName">Venue Name</label> <input type="text"
					class="form-control" id="venueName" name="venuename"
					required="required">
			</div>
			<div class="form-group">
				<label for="eventName">Event Name</label> <input type="text"
					class="form-control" id="eventName" name="Eventname"
					required="required">
			</div>
			<div class="form-group">
				<label for="eventDate">Event Date</label> <input id="myDate"
					type="date" class="form-control" id="eventDate" name="Eventdate"
					required="required">
			</div>
			<div class="form-group">
				<label for="cateringType">Catering Type</label> <select
					class="form-control" id="cateringType" name="cateringtype">
					<option value="vegetarian">Vegetarian</option>
					<option value="nonvegetarian">Non-Vegetarian</option>
					<option value="both">Both</option>
				</select>
			</div>
			<div class="form-group">
				<label for="vegCount">Vegetarian Count</label> <input type="number"
					class="form-control" id="vegCount" name="vegcount" min="0"
					required="required">
			</div>
			<div class="form-group">
				<label for="nonVegCount">Non-Vegetarian Count</label> <input
					type="number" class="form-control" id="nonVegCount"
					name="nonvegcount" min="0" required="required">
			</div>
			<div class="form-group">
				<label for="additionalServices">Additional Services</label>
				<textarea class="form-control" id="additionalServices"
					name="services" rows="3" required="required"></textarea>
			</div>
			<input class="btn btn-success" style="float: right;" type="submit"
				value="SUBMIT">
		</form>
	</div>
</body>
</html>
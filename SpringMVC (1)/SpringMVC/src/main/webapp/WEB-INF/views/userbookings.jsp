<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style>


.container {
	display: flex;
	justify-content: space-between;
}

.navbar-nav {
	margin-left: auto;
}
.navbar {

	background-color:#000000;
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

/* Table */
table {
	position: relative;
	width: 95%;
	left:2.25%;
	border-collapse: collapse;
	margin-top: 20px auto;
}

th, td {
	padding: 6px;
	border: 1px solid #dee2e6; /* Light gray */
}

th {
	background-color: #5F9EA0; /* Blue */
	color: #fff;
}

/* Alternate row background color */
tr:nth-child(even) {
	background-color: #f8f9fa; /* Light gray */
}

/* Success message */
.text-success {
	color: #28a745; /* Green */
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>All Feedbacks</title>
</head>
<body >

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
				<li class="nav-item "><a style="color:white;" class="nav-link"
					style="text-align: right;" onclick="noBack()" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>
<br>
<br>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Event Name</th>
			<th>Event Date</th>
			<th>Catering Type</th>
			<th>Veg Count</th>
			<th>Non-Veg Count</th>
			<th>Services</th>
			<th>Venue Name</th>
			<th>Venue Rent</th>
			<th>Food Cost</th>
			<th>Amount</th>
			
			
		</tr>

		<c:forEach items="${bookingslist}" var="temp">
			<tr>
				<td>${temp.id}</td>
				<td>${temp.eventname}</td>
				<td>${temp.eventdate}</td>
				<td>${temp.cateringtype}</td>
				<td>${temp.vegcount}</td>
				<td>${temp.nonvegcount}</td>
				<td>${temp.services}</td>
				<td>${temp.ven1.name}</td>
				<td>&#8377; ${temp.foodCost}</td>
				<td>&#8377; ${temp.venueCost}</td>
				<td>&#8377; ${temp.foodCost+temp.venueCost}</td>
				<!--  <td>${user.usr.id+user.msg}</td> -->
			</tr>
		</c:forEach>

	</table>
<span class="text-success">${msg}</span>
</body>
</html>
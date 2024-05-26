<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style type="text/css">


th, td {
	padding: 1px;
	border: 1px solid #dee2e6; 
	
}

th {
	text-align:center;
	background-color: #5F9EA0; 
	color: #fff;
}

/* Alternate row background color */
tr:nth-child(even) {
	background-color: #f8f9fa; 
}

.navbar-nav {
	margin-left: auto;
}

.navbar {
	background-color: #000000; 
}

.navbar-brand {
	margin-right: auto; 
	color: #ffffff; 
	font-weight: bold;
}

.navbar-nav .nav-link {
	color: #ffffff; 
}

.navbar-nav .nav-link:hover {
	color: #ffffff; 
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>All Feedbacks</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg">
		<a style="color: white;" class="navbar-brand" href="viewadmin">FESTIVE &#x1F38A;</a>

		<div class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item "><a class="nav-link"
					href="showadvenues">ALL VENUES <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item "><a class="nav-link"
					href="venueform">ADD VENUE</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="allbookings">ALL BOOKINGS</a></li>
				<li class="nav-item "><a class="nav-link"
					href="allfeedbacks">VIEW FEEDBACKS</a></li>
				<li class="nav-item "><a class="nav-link"
					style="text-align: right;" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>

	<br>
	<table id="tcont" class="container" border="1">
		<tr>
			<th>ID</th>
			<th>Event Name</th>
			<th>Event Date</th>
			<th>Catering Type</th>
			<th>Veg Count</th>
			<th>Non-Veg Count</th>
			<th>Services</th>
			<th>User ID</th>
			<th>Venue ID</th>
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
				<td>${temp.usr.id}</td>
				<td>${temp.ven1.id}</td>
				<td>&#8377;${temp.foodCost}</td>
				<td>&#8377;${temp.venueCost}</td>
				<td>&#8377;${temp.foodCost+temp.venueCost}</td>
				<!--  <td>${user.usr.id+user.msg}</td> --> 
			</tr>
		</c:forEach>

	</table>

</body>
</html>
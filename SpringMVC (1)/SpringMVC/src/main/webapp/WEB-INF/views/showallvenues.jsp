<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>All Feedbacks</title>

<style type="text/css">
.container {
	display: flex;
	justify-content: space-between;
}

.navbar-nav {
	margin-left: auto; 
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

.venue-container {
	  display: flex;
        justify-content: space-between;
        align-items: center;
}

.table {
	flex: 1; 
	margin-right: 20px; 
}

.image-container {
	flex: 0 0 280px; 
	margin-left: auto; 
}

.image-container img {
	max-width: 100%;
	height: auto; 
}
</style>
</head>
<body>

		<nav class="navbar navbar-expand-lg navbar-light">
		<a style="color:white;" class="navbar-brand" href="/getuserdashboard">FESTIVE &#x1F38A;</a>

		<div class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active "><a style="color:white;" class="nav-link" href="allvenues">VENUES
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item "><a style="color:white;" class="nav-link" href="bookvenue">BOOK
						VENUE</a></li>
				<li class="nav-item "><a style="color:white;" class="nav-link" href="userbookings">MY
						BOOKINGS</a></li>
				<li class="nav-item "><a style="color:white;" class="nav-link" href="userfeedback">FEEDBACK</a></li>
				<li class="nav-item "><a style="color:white;" class="nav-link"
					style="text-align: right;" onclick="noBack()" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>


	<h1>ALL Venues</h1>



	<c:forEach items="${venueslist}" var="val">
		<div class="venue-container">
			<table border="1"
				class="table table-responsive table-striped table-sm table-bordered ">

				<tbody>
					<tr>
						<td>Name:${val.name}</td>
						<td>Address:${val.address}</td>
					</tr>
					<tr>
						<td>Manager:${val.ownername}</td>
						<td>Description:${val.description}</td>
					</tr>
					<tr>
						<td>Rent: &#8377;${val.price}</td>
						<td>Catering Avaliable</td>
					</tr>
					<tr>
						<td>Veg Catering Price: &#8377;${val.vegprice}</td>
						<td>Non-Veg Catering Price: &#8377;${val.nonvegprice}</td>
					</tr>
					<tr>
						<td>Additional Services:${val.addiservices}</td>
						<td><a href="bookselectedvenue/${val.name}"
							class="btn btn-success">Book Now</a></td>

					</tr>
				</tbody>
			</table>


			<div class="image-container">
				<img alt="Image Not Avaliable" src="${val.imgname}" width="350"
					height="250">
			</div>

		</div>
		<br>
	</c:forEach>


</body>
</html>
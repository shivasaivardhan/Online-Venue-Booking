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
	padding: 3px;
	border: 1px solid #dee2e6; /* Light gray */
	
}

th {
	background-color: #5F9EA0; /* Blue */
	color: #fff;
}

tr:nth-child(even) {
	background-color: #f8f9fa; /* Light gray */
}

.navbar-nav {
	margin-left: auto; /* Pushes remaining links to the right */
}

.navbar {
	background-color: #000000; /* Light gray */
}

.navbar-brand {
	margin-right: auto; 
	color: #ffffff; 
	font-weight: bold;
}

.navbar-nav .nav-link {
	color: #ffffff; 
}
#mynav {
	display: flex;
	justify-content: space-between;
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

	<nav class="navbar navbar-expand-lg ">
		<a style="color: white;" class="navbar-brand" href="viewadmin">FESTIVE &#x1F38A;</a>

		<div class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item "><a class="nav-link"
					href="showadvenues">ALL VENUES <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item "><a class="nav-link"
					href="venueform">ADD VENUE</a></li>
				<li class="nav-item "><a class="nav-link"
					href="allbookings">ALL BOOKINGS</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="allfeedbacks">VIEW FEEDBACKS</a></li>
				<li class="nav-item "><a class="nav-link"
					style="text-align: right;" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>
<br>
	<table border="1" class="container">
		<tr style="text-align:center">
			<th>ID</th>
			<th>Date</th>
			<th>Feedback</th>
			<th>Booking ID</th>
			<th>User ID</th>
		</tr>

		<c:forEach items="${userlist}" var="user">
					<tr>
				<td>${user.id}</td>
				<td>${user.fdate}</td>
				<td>${user.msg}</td>
				<td>${user.book_id}</td>
				<td>${user.usr.id}</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>
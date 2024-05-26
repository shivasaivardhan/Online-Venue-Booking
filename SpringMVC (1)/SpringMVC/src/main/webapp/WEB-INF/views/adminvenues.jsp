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

<style type="text/css">

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

.venue-container {
	display: flex;
	flex-wrap: wrap;
	align-items: center; 
	margin-bottom: 20px; 
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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>All Venues</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg">
		<a style="color: white;" class="navbar-brand" href="viewadmin">FESTIVE &#x1F38A;</a>

		<div class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="showadvenues">ALL VENUES <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item "><a class="nav-link" href="venueform">ADD
						VENUE</a></li>
				<li class="nav-item "><a class="nav-link" href="allbookings">ALL
						BOOKINGS</a></li>
				<li class="nav-item "><a class="nav-link" href="allfeedbacks">VIEW
						FEEDBACKS</a></li>
				<li class="nav-item "><a class="nav-link"
					style="text-align: right;" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>
<br>
	<h1>ALL Venues</h1>
	<br>

	<span class="text-success">${dmsg}</span>

	<c:forEach items="${venueslist}" var="val">
		<div class="venue-container">
			<table
				class="table  table-striped table-sm table-bordered ">


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
						<td>Rent:&#8377;${val.price}</td>
						<td>Catering Avaliable</td>
					</tr>
					<tr>
						<td>Veg Catering Price:&#8377;${val.vegprice}</td>
						<td>Non-Veg Catering Price:&#8377;${val.nonvegprice}</td>
					</tr>
					<tr>
						<td>Additional Services:</td>
						<td>${val.addiservices}</td>
					</tr>

					<tr>
						<td><a href="/editvenue/${val.id}/" class="btn btn-success">Edit</a></td>
						<td><a href="/deletevenue/${val.id}" class="btn btn-danger">Delete</a></td>
					</tr>

				</tbody>
			</table>
			<div class="image-container">
				<img alt="Image Not Avaliable" src="${val.imgname}" width="280"
					height="180">
			</div>
			<!--  <img src="<c:url value='${val.imgname}' />"  alt="Image not avaliable" width="280" height="180"/> -->
			<br>
		</div>
	</c:forEach>

</body>
</html>
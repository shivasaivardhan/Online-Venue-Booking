<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Venue</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
h1 {
	text-align: center;
	color: red;
}
</style>

</head>

<body class="bg-image">

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/viewadmin">FESTIVE</a>

		<div>
			<ul class="navbar-nav float-right">
				<li class="nav-item active"><a class="nav-link"
					href="/showadvenues">ALL VENUES <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="/venueform">ADD VENUE</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/say-hello-jsp">ALL BOOKINGS</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/allfeedbacks">VIEW FEEDBACKS</a></li>
				<li class="nav-item active"><a class="nav-link"
					style="text-align: right;" href="/logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>


	<form:form action="/updatevenue" method="POST"
		methodAttribute="ven">

		<div class="container">
			<h3 class="text-success">${msg}</h3>

		  	<form:label class="form-label" path="id">Venue ID:</form:label>
			 <form:input path="id" class="form-control"  value="${ven.id}" readonly="true"/>

				
			<form:label class="form-label" path="name">Venue Name:</form:label>
			<form:input type="text" class="form-control" value="${venue.name}"
				name="name" path="name" required="required" />

			<form:label class="form-label" path="address">Address:</form:label>
			<form:input type="text" class="form-control" value="${venue.address}"
				name="address" path="address" required="required" />

			<form:label class="form-label" path="ownername">Manager:</form:label>
			<form:input type="text" class="form-control"
				value="${venue.ownername}" name="ownername" path="ownername"
				required="required" />

			<form:label class="form-label" path="description">Description:</form:label>
			<form:input type="text" class="form-control"
				value="${venue.description}" name="description" path="description"
				required="required" />

			<form:label class="form-label" path="imgname">Image Path:</form:label>
			<form:input type="text" class="form-control" value="${venue.imgname}"
				name="imgname" path="imgname" required="required" />

			<form:label class="form-label" path="price">Venue Rent:</form:label>
			<form:input type="number" class="form-control" value="${venue.price}"
				name="price" path="price" />

			<form:label class="form-label" path="vegprice">Veg-Food Price:</form:label>
			<form:input type="number" class="form-control"
				value="${venue.vegprice}" name="vegprice" path="vegprice" />

			<form:label class="form-label" path="nonvegprice">NonVeg-Food Price:</form:label>
			<form:input type="number" class="form-control"
				value="${venue.nonvegprice}" name="nonvegprice" path="nonvegprice" />

			<form:label class="form-label" path="addiservices">Services Avaliable:</form:label>
			<form:input type="text" class="form-control"
				value="${venue.addiservices}" name="addiservices"
				path="addiservices" />


			<br> <input class="btn btn-primary" style="float: right;"
				type="submit" value="SUBMIT">



		</div>
	</form:form>

</body>
</html>
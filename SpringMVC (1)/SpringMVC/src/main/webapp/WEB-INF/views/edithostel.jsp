<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	h1
	{
		text-align:center;
		color:red;
	}
</style>

</head>

<body class="bg-image">

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="viewadmin">FESTIVE</a>

		<div>
			<ul class="navbar-nav float-right">
				<li class="nav-item "><a class="nav-link"
					href="showadvenues">ALL VENUES <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="venueform">ADD VENUE</a></li>
				<li class="nav-item "><a class="nav-link"
					href="allbookings">ALL BOOKINGS</a></li>
				<li class="nav-item "><a class="nav-link"
					href="allfeedbacks">VIEW FEEDBACKS</a></li>
				<li class="nav-item "><a class="nav-link"
					style="text-align: right;" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>

<form:form action="addvenue" method="POST" modelAttribute="ven">

	<div class="container">
		<h3 class="text-success">${msg}</h3><br>
	<p>Please provide necessary details for registration:</p>
	<form:label class="form-label" path="name">Venue Name:</form:label>
	<form:input type="text" class="form-control" name="name" path="name" required="required"/>
	
	<form:label class="form-label" path="address">Address:</form:label>
	<form:input type="text" class="form-control" name="address" path="address" required="required" />
	
	<form:label class="form-label" path="ownername">Manager:</form:label>
	<form:input type="text" class="form-control" name="ownername" path="ownername" required="required" />
	
	<form:label class="form-label" path="description">Description:</form:label>
	<form:input type="text" class="form-control" name="description" path="description" required="required" />
	
	<form:label class="form-label" path="imgname">Image Name:</form:label>
	<form:input type="text" class="form-control" name="imgname" path="imgname" value="/images/" required="required" />
	
	<form:label class="form-label" path="price">Venue Rent:</form:label>
	<form:input type="number" class="form-control" name="price" path="price" />
	
	<form:label class="form-label" path="vegprice">Veg-Food Price:</form:label>
	<form:input type="number" class="form-control" name="vegprice" path="vegprice" />
	
	<form:label class="form-label" path="nonvegprice">NonVeg-Food Price:</form:label>
	<form:input type="number" class="form-control" name="nonvegprice" path="nonvegprice" />
	
	<form:label class="form-label" path="addiservices">Services Avaliable:</form:label>
	<form:input type="text" class="form-control" name="addiservices" path="addiservices" />
	
		
	<br>
	<input class="btn btn-primary" style="float:right;" type="submit" value="SUBMIT">
	
	
	
	</div>
</form:form>

</body>
</html>
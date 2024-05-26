<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Dashboard</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


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

.vcontainer
{
	position: relative;
	background-color: #f9f9f9;
	width: 90%;
	left: 5%;
	right: 5%;
}
</style>

<script type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
	<nav class="navbar navbar-expand-lg">
		<a style="color: white;" class="navbar-brand" href="viewadmin">FESTIVE &#x1F38A;</a>

		<div>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="showadvenues">ALL VENUES <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item "><a class="nav-link" href="venueform">ADD
						VENUE</a></li>
				<li class="nav-item "><a class="nav-link" href="allbookings">ALL
						BOOKINGS</a></li>
				<li class="nav-item "><a class="nav-link" href="allfeedbacks">ALL
						FEEDBACK</a></li>
				<li class="nav-item "><a class="nav-link"
					style="text-align: right;" href="logout">LOGOUT</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<h2>Welcome Admin</h2>

	<br>
	<div class="vcontainer">
	<div class="row mt-4">
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 style="font-size: 25px;" class="card-title">Total Venues:</h5>
					<p style="font-size: 50px;" class="card-text">${vcount}</p>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 style="font-size: 25px;" class="card-title">Total Venue Bookings:</h5>
					<p style="font-size: 50px;" class="card-text">${bcount}</</p>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 style="font-size: 25px;" class="card-title">Total Feedbacks:</h5>
					<p style="font-size: 50px;" class="card-text">${fecount}</</p>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
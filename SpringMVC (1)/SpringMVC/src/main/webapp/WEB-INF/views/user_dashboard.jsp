<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User-Dashboard</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
#wmsg {
	backdrop-filter: blur(5px);
	font-size: 40px;
	position: relative;
	left:1.5%;
}

body {
	background-image: url('/images/bgimage2.jpg');
	background-size: cover;
}

.container {
	display: flex;
	justify-content: space-between;
	color: white;
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
</style>

<script type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
	<nav class="navbar navbar-expand-lg navbar-light">
		<a style="color:white;" class="navbar-brand" href="/getuserdashboard">FESTIVE &#x1F38A;</a>

		<div class="container">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item "><a style="color:white;" class="nav-link" href="allvenues">VENUES
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
	<br>
	<span id="wmsg" class="text-white">  Welcome ${name} &#128075;</span>
	
	<script type="text/javascript">
     window.history.forward();
    function noBack(){
    	window.history.forward();
    } */
    /* function reloadPage() {
        location.reload(); // Reload the page
    } 
	</script>
</body>
</html>
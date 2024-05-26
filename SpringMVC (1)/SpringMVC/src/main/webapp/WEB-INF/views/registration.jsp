<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>

body {
	font-family: Arial, sans-serif;
	color: #333; /* Text color for readability */
	background-image: url('/images/regimage.jpeg');
	background-size: cover;
	height: 100vh"
}

h2 {
	font-family: Arial, sans-serif;
	color: #ffffff;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Form styles */
.form-label {
	font-weight: bold;
}

.form-control {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	font-size: 14px;
}

.text-primary {
	color: #007bff; 
}


.btn {
	display: inline-block;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.btn:hover {
	background-color: #0056b3;
}

h2, span {
	text-align: center;
}
</style>

</head>

<body class="bg-image">
<br>

	<form:form action="savecustomer" method="POST" modelAttribute="user">

		<div class="container">
			<h2 style="color: #000000;">FESTIVE Registration Page</h2>
			<span class="text-danger font-italic">${msg}</span> <br>
			<p>Please provide necessary details for registration</p>
			<form:label class="form-label" path="username">User Name:</form:label>
			<form:input type="text" class="form-control"
				placeholder="Enter your UserName" title="User name must be unique"
				name="username" path="username" required="required" />

			<form:label class="form-label" path="password">Password:</form:label>
			<form:input type="password" placeholder="Enter your Password"
				class="form-control"
				title="Must contain min 1 number and 1 uppercase and lowercase letters, and be at least 8 characters long"
				name="password" path="password" required="required" />

			<form:label class="form-label" path="name">Full Name:</form:label>
			<form:input type="text" class="form-control"
				placeholder="Enter you fullname" name="name" path="name"
				pattern="[A-Za-z\s]*" required="required" />

			<form:label class="form-label" path="mobile">Contact Number:</form:label>
			<form:input type="text" class="form-control"
				placeholder="Enter your Contact Number" name="mobile" path="mobile"
				pattern="[6789][0-9]{9}" required="required" />

			<form:label class="form-label" path="Address">Address:</form:label>
			<form:input type="text" class="form-control"
				placeholder="Enter your complete Address" name="Address"
				path="Address" required="required" />

			<form:label class="form-label" path="email">Email ID:</form:label>
			<form:input type="email" class="form-control"
				placeholder="Enter a valid EmailID" name="email" path="email" />
			<br> <input class="btn btn-success" style="float: right;"
				type="submit" value="Register">



		</div>
	</form:form>

</body>
</html>
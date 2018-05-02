<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
	<link href="signin.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body class="text-center">

	<form action="register" method="post" class="form-signin" modelAttribute="student">
		<h1 class="h3 mb-3 font-weight-normal">Please Register</h1>
		<input type="text" name="lastName" class="form-control" placeholder="Last Name"><br>
		<input type="text" name="firstName" class="form-control" placeholder="First Name"><br>
		<input type="text" name="phone" class="form-control" placeholder="Phone Number"><br>
		<input type="text" name="street" class="form-control" placeholder="Street Address"><br>
		<input type="text" name="city" class="form-control" placeholder="City"><br> 
		<input type="text" name="state" class="form-control" placeholder="State"><br> 
		<input type="text" name="zip" class="form-control" placeholder="zip"><br> 
		<input type="text" name="course" class="form-control" placeholder="Course"><br>
		<input type="text" name="degree" class="form-control" placeholder="Degree"><br>
		<input type="text" name="deptId" class="form-control" placeholder="DeptID"><br>
		<input type="text" name="creditHours" class="form-control" placeholder="Credit hours"><br>
		<input type="text" name="gpa" class="form-control" placeholder="GPA"><br>
		<input type="submit" value="Submit">
			
	</form>

	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
</body>
</html>
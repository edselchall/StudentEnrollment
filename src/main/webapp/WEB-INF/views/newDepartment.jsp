<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="createDepartment" method="post">
	<input type="text" name="Dept_Name" required>
	<select name="college" required>
		<option value="" selected hidden disable>Select a College</option>
		<option value="College of Science">College of Science</option>
  		<option value="College of Math">College of Math</option>
  		<option value="College of Buisness">College of Buisness</option>
  		<option value="College of Art">College of Art</option>
	</select>
	<input type="submit" value="Choose a Department">
	
	
	</form>
</body>
</html>
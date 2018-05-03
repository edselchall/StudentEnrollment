<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="createCourse" method="post">
	<input type="text" name="Course_title" required>
	<input type="number" name="hours" min="1" max="3" required>
	<select name="Dept_Id" required>
		<option value="" selected hidden disable>Select a Department</option>
		<option value="1">Computer Science</option>
  		<option value="2">Math</option>
  		<option value="3">English</option>
  		<option value="4">History</option>
	</select>
	<input type="submit" value="Add Course">

</form>
</body>
</html>
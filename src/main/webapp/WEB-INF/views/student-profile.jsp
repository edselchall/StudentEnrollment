<%@taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Student Profile</h1>
	${student.firstName}
	${student.lastName}
	${student.course}
	${student.phone}
	${student.street}
	${student.city}
	${student.state}
	${student.zip}
	${student.degree}
	${student.deptId}
	${student.creditHours}
	${student.gpa}
</body>
</html>


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
	<c:if test = "${courses.size() < 1}">
		<p>You have no courses yet. Please enroll before deadline.<p>
    </c:if>
	<table>
		<tr>
			<th>Name</th>
			<th>Credit Hours</th>
		</tr>
		<c:forEach  var="course" items="${courses}">
	    	<tr>	
				<td>${course.course_title}</td>
	    		<td>Credit Hours: ${course.hours}</td>
	    	</tr>
		</c:forEach>
	</table>
</body>
</html>
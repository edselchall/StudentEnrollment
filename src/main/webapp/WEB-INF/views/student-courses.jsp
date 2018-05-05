<%@taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="box">
	<div class="box-header">
		<h2>Courses</h2>
		<c:if test = "${courses.size() < 1}">
			<small>You have no courses yet. Please enroll before deadline.</small>
    	</c:if>
	</div>
	
	<table class="table table-striped b-t">
		<thead>
			<tr>
				<th>Name</th>
				<th>Credit Hours</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${courses}" var="course">
	    		<tr>	
					<td>${course.course_title}</td>
	    			<td>Credit Hours: ${course.hours}</td>
	    		</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
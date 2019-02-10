<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<tags:header title="Users List"/>

<div class="container mt-3">
	
	<% int sn = 0; %>
	
	<table  id="allUsersTable" class="display table table-striped" style="width:100%">
		  <thead>
		    <tr>
		      <th scope="col">SN</th>
		      <th scope="col">Staff Code</th>
		      <th scope="col">Name</th>
		      <th scope="col">Sex</th>
		      <th scope="col">Appointed Date</th>
		      <th scope="col">Permanent Date</th>
		      <th scope="col">Retirement Date</th>
		      <th scope="col">Staff Type</th>
		      <th scope="col">Basic Salary</th>
		      <th scope="col">Operations</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  		<c:forEach items="${staffList}" var="staff">
		  			<tr>
		  				<td><%=++sn %></td>
		  				<td>${staff.staffCode }</td>
						<td>${staff.staffName}</td>
						<td>
							<c:choose>
								<c:when test="${staff.sex eq 'm' }"> Male </c:when>
								<c:when test="${staff.sex eq 'f' }"> Female </c:when>
								<c:when test="${staff.sex eq 'o' }"> Other </c:when>
							</c:choose>
						</td>
						<td>${staff.appointedDate}</td>
						<td>${staff.permanentDate }</td>
						<td>${staff.retirementDate }</td>
						<td>${staff.staffType}</td>
						<td>${staff.basicSalary }</td>
						<td>
							<a href="<spring:url value='/employee/editEmployee/${staff.staffCode }'/>" class="btn btn-success">Edit</button></a>
							<a href="<spring:url value='/employee/deleteEmployee/${staff.staffCode }'/>" onclick="return confirm('This item is going to be deleted. This cannot be undone.')" class="btn btn-danger">Delete</button></a>
						</td>
					</tr>
				</c:forEach>
		  
		  </tbody>
		</table>
	</table>
	
	  <script>
		  $(document).ready( function () {
			    $('#allUsersTable').DataTable();
			} );
	  </script>
</div>
	     
</div>
</div>

<tags:footer/>
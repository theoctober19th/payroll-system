<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<tags:header title="Users List"/>

<div class="container mt-3">

<%-- 	${userList } --%>
	
	<% int sn = 0; %>
	
	<table  id="allUsersTable" class="display table table-striped" style="width:100%">
		  <thead>
		    <tr>
		      <th scope="col">SN</th>
		      <th scope="col">Username</th>
		      <th scope="col">Name</th>
		      <th scope="col">Sex</th>
		      <th scope="col">Address</th>
		      <th scope="col">Phone Number</th>
		      <th scope="col">Email</th>
		      <th scope="col">Operations</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  		<c:forEach items="${userList }" var="user">
		  			<tr>
		  				<td><%=++sn %></td>
		  				<td>${user.loginInfo.username }</td>
						<td>${user.firstName} ${user.middleName } ${user.lastName}</td>
						<td>${user.sex }</td>
						<td>${user.addressInfo }</td>
						<td>${user.phoneNumber }</td>
						<td>${user.email }</td>
						<td>
							<a href="<spring:url value='/user/editUser/${user.id }'/>" class="btn btn-success">Edit</button></a>
							<a href="<spring:url value='/user/deleteUser/${user.id }'/>" onclick="return confirm('This item is going to be deleted. This cannot be undone.')" class="btn btn-danger">Delete</button></a>
						</td>
					</tr>
				</c:forEach>
		  
<%-- 		  	<c:forEach items="${userList}" var="user"> --%>
<!-- 		  		<tr> -->
<!-- 			      <th scope="row">1</th> -->
<%-- 			      <td>${user.username}</td> --%>
<%-- 			      <td>${user.firstName}</td> --%>
<!-- 			      <td>@mdo</td> -->
<!-- 			      <td>Mark</td> -->
<!-- 			      <td>Otto</td> -->
<!-- 			      <td>@mdo</td> -->
<!-- 			    </tr> -->
<%-- 		  	</c:forEach> --%>
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
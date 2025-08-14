<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: All Books</title>
	<%@include file="allCss.jsp" %>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<h3 class="ext-center">Hello Admin</h3>
	
	<table class="table table-striped">
		  <thead class="bg-primary text-white">
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Book Name</th>
		      <th scope="col">Author</th>
		      <th scope="col">Price</th>
		      <th scope="col">Categories</th>
		      <th scope="col">Status</th>
		      <th scope="col">Action</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td>Mark</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		      <td>Otto</td>
		      <td>@mdo</td>

				<td>
					<a href="#" class="btn btn-sm btn-primary">Edit</a>
					<a href="#" class="btn btn-sm btn-danger">Delete</a>
				
				</td>
				
		    </tr>
		    <tr>
		      <th scope="row">2</th>
		      <td>Jacob</td>
		      <td>Thornton</td>
		      <td>@fat</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		      
		      <td>
					<a href="#" class="btn btn-sm btn-primary">Edit</a>
					<a href="#" class="btn btn-sm btn-danger">Delete</a>
				
				</td>
				
		    </tr>
		    <tr>
		      <th scope="row">3</th>
		      <td>Larry</td>
		      <td>the Bird</td>
		      <td>@twitter</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		      
		      <td>
					<a href="#" class="btn btn-sm btn-primary">Edit</a>
					<a href="#" class="btn btn-sm btn-danger">Delete</a>
				
				</td>
				
				
		    </tr>
		  </tbody>
		</table>
		
		<div style="margin-top: 270px">
			<%@include file="footer.jsp" %>
		</div>
	
</body>
</html>
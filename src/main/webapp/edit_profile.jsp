<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
 <%@ include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
<%@ include file="all_component/navbar.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
					<div class="card mt-3">
						<div class="card-body">
						
							<h5 class="text-center text-primary p-2">Edit Profile</h5>
							
						<form action=" " method="post">

	                        <div class="form-group">
	                             <label for="exampleInputEmail1"> Full Name</label>
	                             <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname">
	                         </div>
	
	                         <div class="form-group">
	                              <label for="exampleInputEmail1">Email address</label>
	                               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
	                          </div>
	
	
	                          <div class="form-group">
	                            <label for="exampleInputEmail1">Phone Number</label>
	                            <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phone">
	                          </div>
	
	
	                          <div class="form-group">
	                            <label for="exampleInputPassword1">Password</label>
	                            <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
	                          </div>
	

	                          <button type="submit" class="btn btn-primary">Update</button>

                        </form>
							
							
						</div>
					</div> 
			</div>
		</div>
	</div>	

</body>
</html>
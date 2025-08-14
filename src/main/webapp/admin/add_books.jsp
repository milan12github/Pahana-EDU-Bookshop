<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Books</title>
	<%@include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp" %>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>
					
						<form action="register" method="post">

                        <div class="form-group">
                             <label for="exampleInputEmail1">Book Name*</label>
                             <input name="bname" type="text" class="form-control" id="exampleInputEmail1"  aria-describedby="emailHelp" placeholder="Enter Full Name" required="required" name="fname">
                         </div>

                         <div class="form-group">
                              <label for="exampleInputEmail1">Author Name*</label>
                               <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required" name="email">
                          </div>


                          <div class="form-group">
                            <label for="exampleInputEmail1">Price*</label>
                            <input name="price" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Phone Number" required="required" name="phone">
                          </div>


                          <div class="form-group">
                            <label for="exampleInputPassword1">Book Categories</label> <select
                            	id="inputState" name="inputState" class="form-control">
                            	<option selected>--Select</option>
                            	<option value="New">New Book</option>
                            
                            </select>
                          </div>


                          <div class="form-group">
                            <label for="inputState">Book Status</label> <select
                            	id="inputState" name="inputState" class="form-control">
                            	<option selected>--Select</option>
                            	<option value="Active">Active</option>
                            	<option value="Inactive">Inactive</option>
                            
                            </select>
                          </div>
                          
                          
                          <div class="form-group">
                            <label for="exampleInputEmail1">Upload Photo</label>
                            <input name="bimg" type="file" class="form-control-file">
                          </div>

                          <button type="submit" class="btn btn-primary">Add</button>

                        </form>
						
					
					</div>
				</div>
			</div>
		</div>
	</div>
	
		<div style="margin-top: 50px">
			<%@include file="footer.jsp" %>
		</div>

</body>
</html>
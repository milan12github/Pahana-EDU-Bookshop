<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sell Book Page</title>
 <%@ include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
<%@ include file="all_component/navbar.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
					<div class="card mt-3">
						<div class="card-body">
						
						 	<h5 class="text-center text-primary p-2">Sell Old Book</h5>
					
							
							<form action=" " method="post" enctype="multipart/form-data">

		                        <div class="form-group">
		                             <label for="exampleInputEmail1">Book Name*</label>
		                             <input name="bname" type="text" class="form-control" id="exampleInputEmail1"  aria-describedby="emailHelp" required="required" name="fname">
		                         </div>
		
		                         <div class="form-group">
		                              <label for="exampleInputEmail1">Author Name*</label>
		                               <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
		                          </div>
		
		
		                          <div class="form-group">
		                            <label for="exampleInputEmail1">Price*</label>
		                            <input name="price" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phone">
		                          </div>
		
		                          
		                          <div class="form-group">
		                            <label for="exampleInputEmail1">Upload Photo</label>
		                            <input name="bimg" type="file" class="form-control-file">
		                          </div>
		
		                          <button type="submit" class="btn btn-primary">Sell</button>

                        	</form>
						

						</div>
					</div> 
				</div>
			</div>
		</div>	
			

</body>
</html>
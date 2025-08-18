<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.DAO.BookOrderImpl" %>
<%@ page import="com.entity.Book_Order" %>
<%@ page import="com.DB.DBConnect" %>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Orders</title>
 <%@ include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
<%@ include file="all_component/navbar.jsp" %>

	<div class="container p-1">
		<h3 class="text-center text-primary p-2">Your Order</h3>
		
		<table class="table table-striped mt-3">
			  <thead class="bg-primary text-whitw">
			    <tr>
			      <th scope="col">Order Id</th>
			      <th scope="col">Name</th>
			      <th scope="col">Book Name</th>
			      <th scope="col">Author</th>
			      <th scope="col">Price</th>
			      <th scope="col">Payment Type</th>
			    </tr>
			  </thead>
			  <tbody>
			  
			  <%
			  User u=(User)session.getAttribute("userobj");
			  BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
			  List<Book_Order> blist=dao.getBook(u.getEmail());
				  
				  for(Book_Order b:blist){
				%>
				
				 <tr>
				      <th scope="row">1</th>
				      <td>Mark</td>
				      <td>Otto</td>
				      <td>@mdo</td>
				      <td>@mdo</td>
				      <td>@mdo</td>
				    </tr>
					
				 <% 	  
				  }
				  %>
			   
			   
			  </tbody>
		</table>

	</div>

</body>
</html>
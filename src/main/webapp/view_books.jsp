<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="com.DB.DBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #fof1f2">
 <%@ include file="all_component/navbar.jsp" %>
 
 
	 <%
	 int bid=Integer.parseInt(request.getParameter("bid"));
	 BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
	 BookDtls b=dao.getBookById(bid);
	 
	 %>
	 
 	<div class="container p-3">
 		<div class="row p-s text-center p-5 border">
 			<div class="col-md-6 text-center p-5 border bg-white">
 				<img src="book/<%=b.getPhotoName() %>" style="height: 150px; width: 150px"><br>
 				
 					<h4 class="mt-3">Book Name: <span class="text-success"><%=b.getBookname()%></span></h4>
 					<h4>Author Name: <span class="text-success"><%=b.getAuthor()%></span></h4>
 					<h4>Category: <span class="text-success"><%=b.getBookCategory() %></span></h4>
 			</div>
 			
 			<div class="col-md-6 text-center p-5 border bg-white">
 				<h2><%=b.getBookname()%></h2>
 				
 				<%
 				if("Old".equals(b.getBookCategory())){
 				%>
 				<h5>Contact To Seller</h5>
 				<h5><i class="fa-solid fa-envelope"></i>
 				Email: <%=b.getEmail() %></h5>
 				<%	
 				}
 				%>
 					<div class="row">
 						<div class="col-md-4 text-danger text-center p-2">
	 						<i class="fa-solid fa-money-bill-wave fa-2x"></i>
	 						<p>Cash On Delevery</p>
 						</div> 
 
 						<div class="col-md-4 text-danger text-center p-2">
	 						<i class="fa-solid fa-rotate-left fa-2x"></i>
	 						<p>Return Available</p>
 						</div> 
 			
 						<div class="col-md-4 text-danger text-center p-2">
	 						<i class="fa-solid fa-truck-fast fa-2x"></i>
	 						<p>Free Shipping</p>
 						</div> 
 						
 						<div class=" text-center p-3">
	 						<a href="" class="btn btn-primary"><i class="fa-solid fa-cart-plus"></i>
	 						Add Card</a>
	 						<a href="" class="btn btn-danger"><i class="fa-solid fa-rupee-sign"></i>
	 						299</a>
 						
 						</div>
 						
 					</div>
 				</div>
 			</div>
 		</div>

 	
 
</body>
</html>
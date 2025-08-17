<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="com.DB.DBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Old Book</title>
<%@include file="all_component/allCss.jsp" %>

<style type="text/css">
.crd-ho:hover{
    background-color: #fcf7f7;
}

</style>

</head>
<body>
 <%@ include file="all_component/navbar.jsp" %>
 
  	<div class="container-fluid">
        <div class="row p-4">
            
            	<%
    	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
       	List<BookDtls> list = dao.getAllOldBook();
       	for (BookDtls b : list){
       	%>
    	<div class="col-md-3">
    	   <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width: 120px; height: 180px" class="img-thumblin">
                        <p><%=b.getBookname() %></p>
                        <p><%=b.getAuthor() %></p>
                        <p>
                        Categories:<%=b.getBookCategory()%>
                        </p>

                        <div class="row">
                            <a href="" class="btn btn-danger btn-sm-2">Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            
                            <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-rupee-sign"></i>
                            <%=b.getPrice()%>
                     
                            </a>
                        </div>

                    </div>
                </div>
                </div>
        	
                <%
    			}
                %>

   	 	</div>
   </div>

</body>
</html>
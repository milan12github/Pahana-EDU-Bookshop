<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Book</title>
<%@include file="all_component/allCss.jsp" %>

<style type="text/css">
.crd-ho:hover{
    background-color: #fcf7f7;
}

</style>

</head>
<body>

	<% 
	User u=(User)session.getAttribute("userobj");
	%>
	
 <%@ include file="all_component/navbar.jsp" %>
 
  	<div class="container-fluid">
        <div class="row p-4">
            
        <%
        String ch=request.getParameter("ch");
        BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2=dao2.getBookBySearch(ch);
        for(BookDtls b:list2)
        {%>
        
            <div class="col-md-3">
                <div class="card crd-ho mt-2">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width: 120px; height: 180px" class="img-thumblin">
                        <p><%=b.getBookname()%></p>
                        <p><%=b.getAuthor() %></p>
                        <p>
                        
                        <%
                        if(b.getBookCategory().equals("Old"))
                 
                        {%>
                        Categories: <%=b.getBookCategory() %>
                         <div class="row">
                          
                            <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-2">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-rupee-sign"></i>
                            <%=b.getPrice() %></a>
                        </div>
                        	
                        <%
                        }else{
                        %>
                        Categories: <%=b.getBookCategory() %></p>

                        <div class="row">
                        
                        	<% 
	                        if(u==null)
	                        {%>
	                        <a href="login.jsp" class="btn btn-danger btn-sm-2">Add Cart</a>	
	                        <%
	                        }else{
	                        %>
	                        <a href="cart?bid=<%=b.getBookId()%> &&uid=<%=u.getId() %>" class="btn btn-danger btn-sm-2">Add Cart</a>	
	                        <% 
	                        }
	                        %>

                            <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm">View Details</a>
                            <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-rupee-sign"></i>
                            <%=b.getPrice() %></a>
                        </div>
                        
                        	
                        <%
                        }
                        %>
                       

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
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
<title>Ebook: Index</title>
<%@include file="all_component/allCss.jsp" %>

<style type="text/css">
.back-img{
    background: url("img/bookshop.png");
    height: 50vh;
    width: 100%;
    background-size: cover;
    background-repeat: no-repeat;
}

.crd-ho:hover{
    background-color: #fcf7f7;
}

</style>

</head>
<body>

	 <%@ include file="all_component/navbar.jsp" %>
	 
	 <div class="container-fluid back-img">
        <h2 class="text-center text-blue">The Pahana Edu BookShop</h2>
     </div>
     
 
	 <!--Start Recent Book-->

       <div class="container" style="background-color: #f7f7f7;">
        <h3 class="text-center mt-5">Recent Book</h3>
        	<div class="row">
        
        <%
        BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2=dao2.getRecentBooks();
        for(BookDtls b:list2)
        {%>
        
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=b.getBookname()%></p>
                        <p><%=b.getAuthor() %></p>
                        <p>
                        
                        <%
                        if(b.getBookCategory().equals("Old"))
                 
                        {%>
                        Categories: <%=b.getBookCategory() %>
                         <div class="row">
                          
                            <a href="" class="btn btn-success btn-sm ml-2">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-rupee-sign"></i>
                            <%=b.getPrice() %></a>
                        </div>
                        	
                        <%
                        }else{
                        %>
                        Categories: <%=b.getBookCategory() %></p>

                        <div class="row">
                            <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add cart</a>
                            <a href="" class="btn btn-success btn-sm">View Details</a>
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

        <div class="text-center mt-3">
            <a href="" class="btn btn-danger btn-sm text-white">View All</a>
        </div>


     </div>

<!--End Recent Book-->


<hr>

<!--Start New Book-->

       <div class="container">
        <h3 class="text-center">New Book</h3>
        <div class="row">
       
        
       	<%
    	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
       	List<BookDtls> list = dao.getNewBook();
       	for (BookDtls b : list){
       	%>
    	<div class="col-md-3">
    	   <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
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
     <div class="text-center mt-3">
            <a href="" class="btn btn-danger btn-sm text-white">View All</a>
        </div>


     </div>

<!--End New Book-->


<hr>



<!--Start Old Book-->

       <div class="container" style="background-color: #f7f7f7;">
        <h3 class="text-center mt-5">Old Book</h3>
        <div class="row">
        
        
        <%
        BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list3=dao2.getOldBooks();
        for(BookDtls b:list3)
        {%>
        
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=b.getBookname()%></p>
                        <p><%=b.getAuthor() %></p>
                        <p><%=b.getBookCategory() %></p>
                        
                        <div class="row">
                            <a href="" class="btn btn-success btn-sm ml-5">View Details</a>               
                            <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i>
                            <%=b.getPrice()%></a>
              
                    </div>
                </div>
            </div>
        	</div>
        <%
        }
        %>
        



        </div>

        <div class="text-center mt-3">
            <a href="" class="btn btn-danger btn-sm text-white">View All</a>
        </div>


     </div>

<!--End Old book-->



<%@ include file="all_component/footer.jsp" %>
	 


</body>
</html>
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
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/java.png" style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Java Programming</p>
                        <p>Balguruswamy</p>
                        <p>Categories: New</p>

                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add cart</a>
                            <a href="" class="btn btn-success btn-sm ml-2">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-2">299</a>
                        </div>

                    </div>
                </div>
            </div>



             <div class="col-md-3">
                            <div class="card crd-ho">
                                <div class="card-body text-center">
                                    <img alt="" src="book/java.png" style="width: 150px; height: 200px" class="img-thumblin">
                                    <p>Java Programming</p>
                                    <p>Balguruswamy</p>
                                    <p>Categories: New</p>

                                    <div class="row text-center">
                                        <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add cart</a>
                                        <a href="" class="btn btn-success btn-sm ml-2">View Details</a>
                                        <a href="" class="btn btn-danger btn-sm ml-2">299</a>
                                    </div>

                                </div>
                            </div>
                        </div>



                         <div class="col-md-3">
                                        <div class="card crd-ho">
                                            <div class="card-body text-center">
                                                <img alt="" src="book/java.png" style="width: 150px; height: 200px" class="img-thumblin">
                                                <p>Java Programming</p>
                                                <p>Balguruswamy</p>
                                                <p>Categories: New</p>

                                                <div class="row text-center">
                                                    <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add cart</a>
                                                    <a href="" class="btn btn-success btn-sm ml-2">View Details</a>
                                                    <a href="" class="btn btn-danger btn-sm ml-2">299</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>



                                     <div class="col-md-3">
                                                    <div class="card crd-ho">
                                                        <div class="card-body text-center">
                                                            <img alt="" src="book/java.png" style="width: 150px; height: 200px" class="img-thumblin">
                                                            <p>Java Programming</p>
                                                            <p>Balguruswamy</p>
                                                            <p>Categories: New</p>

                                                            <div class="row text-center">
                                                                <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add cart</a>
                                                                <a href="" class="btn btn-success btn-sm ml-2">View Details</a>
                                                                <a href="" class="btn btn-danger btn-sm ml-2">299</a>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
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
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
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
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/java.png" style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Java Programming</p>
                        <p>Balguruswamy</p>
                        <p>Categories: New</p>

                        <div class="row">

                            <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                        </div>

                    </div>
                </div>
            </div>



             <div class="col-md-3">
                            <div class="card crd-ho">
                                <div class="card-body text-center">
                                    <img alt="" src="book/java.png" style="width: 150px; height: 200px" class="img-thumblin">
                                    <p>Java Programming</p>
                                    <p>Balguruswamy</p>
                                    <p>Categories: New</p>

                                    <div class="row">
                                        <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                                    </div>

                                </div>
                            </div>
                        </div>



                         <div class="col-md-3">
                                        <div class="card crd-ho">
                                            <div class="card-body text-center">
                                                <img alt="" src="book/java.png" style="width: 150px; height: 200px" class="img-thumblin">
                                                <p>Java Programming</p>
                                                <p>Balguruswamy</p>
                                                <p>Categories: New</p>

                                                <div class="row">
                                                   <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                                    <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>



                                     <div class="col-md-3">
                                                    <div class="card crd-ho">
                                                        <div class="card-body text-center">
                                                            <img alt="" src="book/java.png" style="width: 150px; height: 200px" class="img-thumblin">
                                                            <p>Java Programming</p>
                                                            <p>Balguruswamy</p>
                                                            <p>Categories: New</p>

                                                            <div class="row">
                                                                <a href="" class="btn btn-danger btn-sm">Add cart</a>
                                                                <a href="" class="btn btn-success btn-sm">View Details</a>
                                                                <a href="" class="btn btn-danger btn-sm">299</a>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
        </div>

        <div class="text-center mt-3">
            <a href="" class="btn btn-danger btn-sm text-white">View All</a>
        </div>


     </div>

<!--End Old book-->



<%@ include file="all_component/footer.jsp" %>
	 


</body>
</html>
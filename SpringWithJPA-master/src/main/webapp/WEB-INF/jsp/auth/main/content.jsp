<%-- 
    Document   : content
    Created on : Oct 24, 2019, 3:53:08 PM
    Author     : Administrator
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="container">
        
        <c:forEach var="rowProduts" items="${items}" varStatus="loop">
            <div class="row">
                <c:forEach var="columnProducts" items="${items[loop.index]}" varStatus="columnLoop">
                    <div class="col-md-3">
                        <div class="card" >
                            <img src="https://image.shutterstock.com/image-photo/ripe-mango-isolated-on-white-260nw-1297537549.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${columnProducts.name}</h5>
                                <p class="card-text">${columnProducts.price}</p>
                                <a href="addItem/${columnProducts.id}" class="btn btn-primary">Add to cart</a>
                            </div>
                        </div>
                    </div>

                </c:forEach>
            </div>
        </c:forEach>
    </div>




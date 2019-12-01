<%-- 
    Document   : cartList
    Created on : Oct 24, 2019, 6:13:20 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<style>
#ab {
  border: 1px solid black;
  background-color: lightblue;
  padding-top: 40px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 80px;
}
</style>
</head>
<div class="row">
    <div class="col-12">
    <div id="ab" class="container">
        <h2 align="center">Add Products</h2>
        <form action="/SpringWithHibernate/brandAddpro" method="POST">
        <table class="table">
            
                <tr class="success">
                    <th> Name</th>
                    <th><input type="text" name="name" placeholder="Enter Product Name" /></th>
                </tr>
                <tr class="danger">
                    <th> Quality</th>
                    <th><input type="number" name="qty" placeholder="Enter Product Quantity" /></th>
                </tr>
                <tr class="info">
                    <th> Price</th>
                    <th><input type="number" name="price" placeholder="Enter Product Price" /></th>
                </tr>
                <th class="warning"> Image</th>
                <th><input type="file" name="img" /></th>
               
                </tr>
                <tr class="active">
                    <th><button type="submit" class="btn btn-success btn-lg" onclick="return confirm('Are you sure Save Data???')">Save<span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span></button></th>
                    <td><button type="reset" class="btn btn-warning btn-lg">Reset<span class="glyphicon glyphicon-check" aria-hidden="true"></span></button> </td>
                </tr>
                <a href="/SpringWithHibernate/back">Back</a>

        </table>
    </form>
     </div>
    </div>
</div>
<div class="row">
    <div class="col-12">
    <div id="ab" class="container">
        <h2 align="center">Show Regular Sales</h2>
        <table class="table">
            <tr>
                
            </tr>
            <tr>
                
            </tr>
                
                

        </table>
     </div>
    </div>
</div>















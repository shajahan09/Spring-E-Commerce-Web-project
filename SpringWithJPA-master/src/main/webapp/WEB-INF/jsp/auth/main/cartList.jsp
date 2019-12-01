<%-- 
    Document   : cartList
    Created on : Oct 24, 2019, 6:13:20 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="w3l_banner_nav_right">
    <div class="success">
        <table class="timetable_sub">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Quality</th>	
                    <th>Product Name</th>

                    <th>Price</th>
                    <th>Sub-Total</th>
                    <th>Remove</th>
                </tr>
            </thead> 
            <c:forEach var="item" items="${sessionScope.cart}" varStatus="loop">
                <tr  class="success">
                    <td> <img src="static/images/${item.product.img}" height="40" width="40">
                        

                    </td>
                    
                    <td class="invert">
                        <div class="quantity"> 
                            <div class="quantity-select">                           
                                <div class="entry value-minus">&nbsp;</div>
                                <div class="entry value"><span>${item.quantity}</span></div>
                                <div class="entry value-plus active">&nbsp;</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        ${item.product.name}
                        ${item.brand.name}
                       
                    </td>

                    <td>
                        ${item.product.price}
                         ${item.brand.price}
                       
                    </td>

                    <td>

                        ${item.quantity*item.product.price}
                        ${item.quantity*item.brand.price}
                        
                    </td>
                    <td>
                        <a
                            class="btn btn-danger"
                            href="remove/${item.product.id}" 
                            onclick="return confirm('Are you sure Delete???')">Remove
                            <span class="glyphicon glyphicon-alert" aria-hidden="true">
                            </span>
                        </a>
                    </td>
                     <c:set var="vat" 
                           value="${0.02*item.quantity * item.product.price}">

                    </c:set> 

                    <c:set var="total" 
                           value="${total + item.quantity * item.product.price +item.quantity * item.brand.price+vat}">

                    </c:set> 
                </tr>
               
            </c:forEach>
                <tr>

                <td colspan="4"><h5 align="right">Only 2% Vat</h5></td>
                
                <td colspan="2"><h4 align="left">${vat}</h4></td>

            </tr>
            <tr>

                <td colspan="4"><h3 align="right">Total</h3></td>
                <td colspan="2"><h3 align="left">${total}</h3></td>
                

            </tr>
            <tr>
                <td colspan="3">
                    <a href="/SpringWithHibernate/checkout" class="btn btn-danger">checkout 
                        <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
                    </a>
                </td>
                <td colspan="3">
                    <div>
                        <a class="btn btn-danger" href="${pageContext.request.contextPath }/">Continue Shopping
                            <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
                        </a>
                    </div>

                </td>

            </tr>

        </table>


    </div>

</div>













<%-- 
    Document   : products
    Created on : 22-Oct-2019, 19:02:38
    Author     : HP
--%>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                 pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>      
        <div class="w3l_banner_nav_right">
            <div class="w3l_banner_nav_right_banner3">
                <h3>Best Deals For New Products<span class="blink_me"></span></h3>
            </div>
            <div class="w3l_banner_nav_right_banner3_btm">
                <div class="col-md-4 w3l_banner_nav_right_banner3_btml">
                    <div class="view view-tenth">
                        <img src="static/images/13.jpg" alt=" " class="img-responsive" />
                        <div class="mask">
                            <h4>Sales Store</h4>
                            <p>Calling...</p>
                        </div>
                    </div>
                    <h4>Utensils</h4>
                    <ol>
                        <li>use to easy</li>
                        <li>see to bright</li>
                        <li>set of Brand </li>
                    </ol>
                </div>
                <div class="col-md-4 w3l_banner_nav_right_banner3_btml">
                    <div class="view view-tenth">
                        <img src="static/images/14.jpg" alt=" " class="img-responsive" />
                        <div class="mask">
                            <h4>Sales Store</h4>
                            <p>Calling...</p>
                        </div>
                    </div>
                    <h4>Hair Care</h4>
                    <ol>
                        <li>Hire shine</li>
                        <li>use to easy </li>
                        <li>Brand color</li>
                    </ol>
                </div>
                <div class="col-md-4 w3l_banner_nav_right_banner3_btml">
                    <div class="view view-tenth">
                        <img src="static/images/15.jpg" alt=" " class="img-responsive" />
                        <div class="mask">
                            <h4>Grocery Store</h4>
                            <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</p>
                        </div>
                    </div>
                    <h4>Cookies</h4>
                    <ol>
                        <li>dolorem eum fugiat voluptas</li>
                        <li>ut aliquid ex ea commodi</li>
                        <li>magnam aliquam quaerat</li>
                    </ol>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="w3ls_w3l_banner_nav_right_grid">
                <h3>Popular Brands</h3>
                <div class="w3ls_w3l_banner_nav_right_grid1">
                    <h6>food</h6>
                    <c:forEach var="rowProduts" items="${item}" varStatus="loop">
                        <div class="row">
                            <c:forEach var="columnProducts" items="${item[loop.index]}" varStatus="columnLoop">
                                <div class="col-md-3 w3ls_w3l_banner_left">
                                    <div class="hover14 column">
                                        <div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
                                            <div class="agile_top_brand_left_grid_pos">
                                                <img src="static/images/offer.png" alt=" " class="img-responsive" />
                                            </div>
                                                   <div class="agile_top_brand_left_grid1">
                                                <figure>
                                                    <div class="snipcart-item block">
                                                        <div class="snipcart-thumb">
                                                            <a href="#"><img src="static/images/${columnProducts.img}" alt=" " class="img-responsive" /></a>
                                                            <p>${columnProducts.name}</p>
                                                            <h4>${columnProducts.price} TK.<span>$150.00</span></h4>
                                                        </div>
                                                        <div class="snipcart-details">
                                                            <form action="/SpringWithHibernate/addItems/${columnProducts.id}">
                                                                <fieldset>                                                        
                                                                    <input type="submit" name="submit" value="Add to cart" class="button" />
                                                                </fieldset>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </c:forEach>
                </div>



                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="clearfix"></div>
    </div>
    <!-- //banner -->
    <!-- newsletter -->

</body>
</html>

<%-- 
    Document   : index
    Created on : Oct 19, 2019, 4:07:17 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="static/css/bootstrap.css" var="bootstrap"/>
<spring:url value="static/css/style.css" var="css"/>
<spring:url value="static/css/font-awesome.css" var="font"/>
<spring:url value="static/js/jquery-1.11.1.min.js" var="js"/>
<spring:url value="static/js/move-top.js" var="js1"/>
<spring:url value="static/js/easing.js" var="js2"/>
<spring:url value="static/css/flexslider.css" var="js3"/>
<spring:url value="static/js/jquery.flexslider.js" var="js4"/>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="${bootstrap}" rel="stylesheet">
        <link href="${css}" rel="stylesheet">
        <link href="${font}" rel="stylesheet">
        <script src="${js}" type="text/javascript"></script>
        <link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <script src="${js1}" type="text/javascript"></script>
        <script src="${js2}" type="text/javascript"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><tiles:insertAttribute name="title" /></title>
                <tiles:insertAttribute name="header" />
    </head>
    <body>
           
            <!-- login or signup page -->
            
                <%--<tiles:insertAttribute name="link" />--%>
                <tiles:insertAttribute name="body" />

           
            <%--<tiles:insertAttribute name="body" />--%>
            
       <link href="${js3}" rel="stylesheet">
       <script src="${js4}" type="text/javascript"></script>
       <footer><tiles:insertAttribute name="footer" /></footer>
    </body>
</html>

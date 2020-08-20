<%-- 
    Document   : NombresVista
    Created on : 5/06/2017, 03:28:02 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArrayList y foreach</title>
    </head>
    <body>
        
        <h1>ArrayList y foreach</h1>
        
        <c:forEach var="nombre" items="${losNombres}">
            <p> ${nombre} </p>
        </c:forEach>
    </body>
</html>

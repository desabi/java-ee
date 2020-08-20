<%-- 
    Document   : PeliculasVista
    Created on : 5/06/2017, 12:27:31 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DOS ARREGLOS Y JSP</title>
        
    </head>
    <body>
        
        <h1>DOS ARREGLOS Y JSP</h1>
        
        <!-- foreach anidados -->
        <!-- recorrer dos arreglos con dos foreach -->
        
        <c:forEach var="listaElementos" items="${lasPeliculas}">
        
            <c:forEach var="pelicula" items="${listaElementos}">
                <p> ${pelicula} </p>
            </c:forEach>
                
        </c:forEach>
                
    </body>
</html>

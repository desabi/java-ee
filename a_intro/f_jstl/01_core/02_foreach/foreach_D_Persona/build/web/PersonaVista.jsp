<%-- 
    Document   : PersonaVista
    Created on : 5/06/2017, 03:38:21 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JAVABEANS Y FOREACH</title>
    </head>
    <body>
        
        <h1>JAVABEANS, ARRAYLIST Y FOREACH</h1>
        
        <c:forEach var="persona" items="${lasPersonas}" varStatus="personasContador">
            
            <p>Persona ${personasContador.count} : </p>
            <p>Nombre: ${persona.nombre} </p>
            <p>Edad: ${persona.edad} </p>
            <p>Estatura: ${persona.estatura} </p>
            <br/><br/>
            
        </c:forEach>
    </body>
</html>

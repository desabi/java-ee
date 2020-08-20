<%-- 
    Document   : DeportesVista
    Created on : 5/06/2017, 08:15:49 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OBJETOS, ARREGLOS Y FOREACH</title>
    </head>
    <body>
        <h1>OBJETOS, ARREGLOS Y FOREACH</h1>
        
        <c:forEach var="deporte" items="${listaDeportes}" varStatus="contadorDeportes" >
            <p>
                Deporte ${contadorDeportes.count} <br />
                Nombre: ${deporte.nombre} <br />
                Jugadores: ${deporte.jugadores} <br />
            </p>            
        </c:forEach>
            
    </body>
</html>

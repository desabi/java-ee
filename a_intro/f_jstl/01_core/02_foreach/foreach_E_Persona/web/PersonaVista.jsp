<%-- 
    Document   : PersonaVista
    Created on : 5/06/2017, 08:30:17 PM
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
        
        <h2>DATOS DE LA PERSONA</h2>
        
        <p>
            Nombre: ${unaPersona.nombre} <br /> <br />
            
            Calzados: <br /> <br/>
            
            <c:forEach items="${unaPersona.calzados}" var="calzado">
                ${calzado.marca} <br />
                ${calzado.color} <br /> <br />
            </c:forEach>
           
        </p>
    </body>
</html>

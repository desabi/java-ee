<%-- 
    Document   : MaestroVista
    Created on : 5/06/2017, 08:47:16 PM
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
        
        <h2>DATOS DEL MAESTRO</h2>
        
        Nombre: ${elMaestro.nombre} <br />
        Profesion: ${elMaestro.profesion} <br /> <br />
        
        Materias: <br /><br />
        
        <c:forEach items="${elMaestro.materias}" var="materia">
            Materia: ${materia.nombre} <br />
            Horas: ${materia.horas} <br /> <br />
        </c:forEach>
            
    </body>
</html>

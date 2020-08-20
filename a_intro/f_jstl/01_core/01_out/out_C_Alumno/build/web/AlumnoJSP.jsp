<%-- 
    Document   : AlumnoJSP
    Created on : 6/06/2017, 11:32:01 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jstl y c:out</title>
    </head>
    <body>
        
        <h1>jstl y c:out</h1>
        
        Nombre:   <c:out value="${elAlumno.nombre}" /> <br />
        
        Carrera:  ${elAlumno.carrera} <br />
        
        Telefono: <c:out value="${elAlumno.telefono}" default="telefono vacio" /> <br />
        
    </body>
</html>

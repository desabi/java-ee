<%-- 
    Document   : EdadJSP
    Created on : 21/06/2017, 11:55:57 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESULTADO DE MAYORIA DE EDAD</title>
    </head>
    <body>
        
        <h1>RESULTADO DE MAYORIA DE EDAD</h1>
        
        <c:out value="${param.nombre}" default="sin nombre" /> <br />
        ${param.edad} <br /> <br />
        
        <!-- Esto solo se va mostrar si la persona es mayor de edad -->
        <c:if test="${param.edad >= 18}" >  
            Eres mayor de edad <br />
            Tu edad es: ${param.edad} <br />            
        </c:if>
        
</html>

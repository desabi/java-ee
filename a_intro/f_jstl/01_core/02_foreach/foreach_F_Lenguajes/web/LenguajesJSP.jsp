<%-- 
    Document   : LenguajesJSP
    Created on : 21/06/2017, 11:09:47 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LENGUAJES SELECCIONADOS</title>
    </head>
    <body>
        
        <h1>LENGUAJES SELECCIONADOS</h1>
        
        <c:forEach items="${lenguajes}" var="lenguaje">
            ${lenguaje} <br />
        </c:forEach>
        
    </body>
</html>

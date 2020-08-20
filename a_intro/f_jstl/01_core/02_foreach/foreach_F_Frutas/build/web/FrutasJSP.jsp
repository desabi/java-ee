<%-- 
    Document   : FrutasJSP
    Created on : 21/06/2017, 11:35:03 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTA DE FRUTAS SELECCIONADAS</title>
    </head>
    <body>
        
        <h1>LISTA DE FRUTAS SELECCIONADAS</h1>
        
        <c:forEach items="${paramValues.listaFrutas}" var="fruta">
            ${fruta} <br />
        </c:forEach>
        
    </body>
</html>

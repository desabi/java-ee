<%-- 
    Document   : ColoresVista
    Created on : 5/06/2017, 09:12:00 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AREGLOS Y JSTL</title>
    </head>
    <body>
        <h1>ARREGLOS Y JSTL</h1>
        
        <h2>Lista de Colores</h2>
        
        <!-- Ahora imprimiremos los resultados en una tabla -->
        <!-- tr = table row, fila de tabla. -->
        <!-- td = table data, dato de la tabla/celda -->
        
        <table border="1">
            
            <c:forEach var="color" items="${listaColores}" >
                <tr>
                    <td> ${color} </td>
                </tr>
            </c:forEach>
                
        </table>
        
    </body>
</html>

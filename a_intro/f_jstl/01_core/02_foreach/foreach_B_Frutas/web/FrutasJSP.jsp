<%-- 
    Document   : FrutasJSP
    Created on : 5/06/2017, 11:09:44 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ARREGLOS Y JSTL</title>
    </head>
    <body>
        
        <h1>ARREGLOS Y JSTL</h1>
        
        <h2>Lista de Frutas</h2>
        
        <table border="1" >
            
            <!-- Agregamos el atributo varStatus para poder contar los elementos -->
            <!-- Colocamos un nombre para la variable contadora: frutaContador -->
            
            <c:forEach var="fruta" items="${listaFrutas}" varStatus="frutaContador">
                <tr>
                    <!-- llamamos a la variable frutaContador y su atributo count -->
                    <td> ${frutaContador.count} </td>
                    <td> ${fruta} </td>
                </tr>
            </c:forEach>
                
        </table>
    </body>
</html>

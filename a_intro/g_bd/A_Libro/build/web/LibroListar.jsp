<%-- 
    Document   : LibroLista
    Created on : 21/05/2018, 04:35:43 PM
    Author     : desab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIBRO: LISTAR</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>        

        <h1>LIBRO: LISTAR</h1>            

        <a id="agregar" href="LibroControlador?accion=nuevo">Agregar Libro Nuevo</a>                  
        
        <table>
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>Actualizar</th>
                <th>Eliminar</th>
            </tr>

            <c:forEach var="libro" items="${atributoListaLibros}">
                <tr>
                    <td><c:out value="${libro.idLibro}" /></td>
                    <td><c:out value="${libro.titulo}" /></td>
                    <td><c:out value="${libro.autor}" /></td>
                    <td><c:out value="${libro.precio}" /></td>
                    <td>
                        <a id="actualizar" href="LibroControlador?accion=editar&id=<c:out value="${libro.idLibro}"/>">Actualizar</a>
                    </td>
                    <td>
                        <a id="eliminar" href="LibroControlador?accion=eliminar&id=<c:out value="${libro.idLibro}"/>">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>   

        </table>


    </body>
</html>

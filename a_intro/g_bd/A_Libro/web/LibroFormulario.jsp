<%-- 
    Document   : LibroNuevi
    Created on : 21/05/2018, 09:57:31 PM
    Author     : desab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIBRO: FORMULARIO</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <c:if test="${atributoLibro != null}">
            <form action="LibroControlador?accion=actualizar" method="post">
            </c:if>
            <c:if test="${atributoLibro == null}">
                <form action="LibroControlador?accion=insertar" method="post">
                </c:if>

                <c:if test="${atributoLibro != null}">
                    <h2>EDITAR LIBRO</h2>
                </c:if>            
                <c:if test="${atributoLibro == null}">
                    <h2>AGREGAR LIBRO</h2>
                </c:if>

                <c:if test="${atributoLibro != null}">

                    <b>${atributoLibro.idLibro}<b/> <br>
                        <input type="hidden" name="id" value="<c:out value='${atributoLibro.idLibro}' />" />
                    </c:if>

                    Titulo <input type="text" name="titulo" value="<c:out value='${atributoLibro.titulo}' />" required /> <br>
                    Autor: <input type="text" name="autor" value="<c:out value='${atributoLibro.autor}' />"  required /> <br>
                    Precio: <input type="text" name="precio" value="<c:out value='${atributoLibro.precio}' />"  required /> <br>
                    <input type="submit" />
                </form>

    </body>
</html>

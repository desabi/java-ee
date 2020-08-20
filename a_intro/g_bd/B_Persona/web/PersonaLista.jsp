<%-- 
    Document   : PersonaLista
    Created on : 25/05/2018, 09:54:29 PM
    Author     : desab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Persona Lista</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <h2>LISTADO DE PERSONAS</h2>
        
        <a id="agregar" href="PersonaControlador?accion=nuevo">Agregar Persona</a>
        
        <table class="centro">
            <tr>
                <th>idpersona</th>
                <th>nombre</th>
                <th>edad</th>
                <th>estatura</th>                
                <th>actualizar</th>                
                <th>eliminar</th>                
            </tr>
            
            <c:forEach var="persona" items="${atributoListaPersonas}">
                <tr>
                    <td><c:out value="${persona.idpersona}" /></td>
                    <td><c:out value="${persona.nombre}" /></td>
                    <td><c:out value="${persona.edad}" /></td>
                    <td><c:out value="${persona.estatura}" /></td>
                    <td>
                        <a id="actualizar" href="PersonaControlador?accion=editar&id=<c:out value="${persona.idpersona}"/>">Actualizar</a>
                    </td>
                    <td>
                        <a id="eliminar" href="PersonaControlador?accion=eliminar&id=<c:out value="${persona.idpersona}"/>">Eliminar</a>
                    </td>
                </tr>
            </c:forEach> 
        </table>
    </body>
</html>

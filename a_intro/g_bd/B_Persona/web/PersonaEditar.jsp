<%-- 
    Document   : PersonaEditar
    Created on : 7/06/2018, 03:01:50 PM
    Author     : desab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Persona Editar</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Persona Editar</h1>
        
        <form action="PersonaControlador?accion=actualizar" method="post">
            <input type="text" readonly="" name="id" value="<c:out value='${atributoPersona.idpersona}' />" /> <br>
            Nombre   <input type="text" name="nombre" value="<c:out value='${atributoPersona.nombre}' />" required="" /> <br>
            Edad     <input type="text" name="edad" value="<c:out value='${atributoPersona.edad}' />" required="" /> <br>
            Estatura <input type="text" name="estatura" value="<c:out value='${atributoPersona.estatura}' />" required="" /> <br>
            <input type="submit" value="Actualizar" />
        </form>
        
    </body>
</html>

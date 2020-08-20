<%-- 
    Document   : principalJSP.jsp
    Created on : 30/06/2017, 11:33:19 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAGINA PRINCIPAL</title>
    </head>
    <body>
        <h1>PAGINA PRINCIPAL</h1>
        
        <!-- Esto solo se mostrara si el usuario ingreso los datos correctos -->
        
        <c:if test="${param.nombre == 'abi' and param.contrasena == 'root' }">
            <c:out value="Bienvenido ${param.nombre}" />
        </c:if>
        
    </body>
</html>

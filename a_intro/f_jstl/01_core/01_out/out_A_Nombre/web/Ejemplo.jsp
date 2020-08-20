<%-- 
    Document   : Ejemplo
    Created on : 5/06/2017, 02:52:22 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Y c:out</title>
    </head>
    <body>
        
        <!-- Debemos importar la librerías para poder utilizar JSTL -->
        <h1>Utilizando c:out </h1>
        
        Nombre: <c:out value="Abi ds" />
        
    </body>
</html>

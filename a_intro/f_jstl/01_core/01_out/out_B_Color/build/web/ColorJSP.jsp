<%-- 
    Document   : ColorJSP
    Created on : 6/06/2017, 11:11:48 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL C:OUT</title>
    </head>
    <body>
        
        <h1>Utilizando c:out</h1>
        
        Color escrito: <br />
        
        <c:out value="${param.color}" default="dato vacio" />
        
        <!-- 
            el atributo default nos sirve para colocar el texto o la informacion
            en caso de que accedamos directamente a la pagina.
        
            Clic derecho -> ejecutar archivo
        -->
    </body>
</html>

<%-- 
    Document   : ProductoJSPA
    Created on : 23/05/2017, 04:37:20 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DATOS DEL PRODUCTO</title>
    </head>
    
    <body>
        <h1>Datos del Producto</h1>
        
        <!-- Crear la accion estpandar -->
        <jsp:useBean id="unProducto" class="modelo.Producto" scope="request" />
        
        <p>
            Nombre   :  <jsp:getProperty name="unProducto" property="nombre" />    <br />
            Precio   :  <jsp:getProperty name="unProducto" property="precio" />    <br />
            Unidades :  <jsp:getProperty name="unProducto" property="unidades" />  <br />
        </p>
        
    </body>
    
</html>

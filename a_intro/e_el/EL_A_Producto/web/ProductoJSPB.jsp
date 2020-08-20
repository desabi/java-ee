<%-- 
    Document   : ProductoJSPB
    Created on : 23/05/2017, 04:32:39 PM
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
        
        <p>
            Nombre  : ${unProducto.nombre}   <br />
            Precio  : ${unProducto.precio}   <br />
            Unidades: ${unProducto.unidades} <br />
        </p>
        
    </body>
</html>

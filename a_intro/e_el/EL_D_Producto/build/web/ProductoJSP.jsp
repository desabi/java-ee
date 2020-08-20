<%-- 
    Document   : ProductoJSP
    Created on : 23/05/2017, 09:46:10 PM
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
        
        Nombre   :  ${unProducto["nombre"]}    <br />
        Precio   :  ${unProducto["precio"]}    <br />
        Unidades :  ${unProducto["unidades"]}  <br />
        
        <!--
            ¿Por que hacerlo asi? ¿Por que utilizar corchetes?
        
            * Estos nos ayudara cuando no utilizemos objetos
        
            * Ayuda cuando estamos manejando arreglos, listas o mapas
        
            * Suponiendo que nombres es un arreglo/lista/mapa
            * No se puede hacer esto: nombres.0
            * 
            * Los corchetes ayuda a acceder a los elementos/posiciones de un array/lista/mapa
            * Accedemos asi: nombres[0]
        
        -->
        
    </body>
</html>

<%-- 
    Document   : LibroJSP
    Created on : 23/05/2017, 09:35:29 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DATOS DEL LIBRO</title>
    </head>
    
    <body>

        
        <!-- 
            Accediamos al objeto y atributo asi: 
            
            ${unLibro.titulo}
            ${unLibro.precio}
        
            Y asi continuariamos con todos los atributos del objeto
        -->
        
        <!-- Otra forma de acceder a los atributos de un bean seria: -->
      
        <h1>Datos del Libro</h1>
        
        Titulo  : ${unLibro["titulo"]}   <br />
        Precio  : ${unLibro["precio"]}   <br />
        Paginas : ${unLibro["paginas"]}  <br />
        
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

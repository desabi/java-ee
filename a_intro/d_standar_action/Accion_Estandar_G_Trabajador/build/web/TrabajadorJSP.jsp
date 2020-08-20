<%-- 
    Document   : TrabajadorJSP
    Created on : 26/01/2017, 10:30:24 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DATOS DEL TRABAJADOR</title>
    </head>
    <body>
        
        <h1>DATOS OBTENIDOS DIRECTAMENTE DEL FORMULARIO</h1>
        
        <h2>DATOS DEL TRABAJADOR</h2>
        
        <!-- Crear la accion estandar -->
        <jsp:useBean id="trabajador" class="modelo.Trabajador" scope="request" />
        
        <!-- Obtener los datos del formulario -->
        <!-- Se coloca un asterisco para indicar que se obtienen todos los campos -->
        <!-- Deben tener el mismo nombre en el formulario y la clase -->
        <jsp:setProperty name="trabajador" property="*" />
        
        <!-- Imprimir los datos -->
        Nombre:          <jsp:getProperty name="trabajador" property="nombre" /> <br>
        Sueldo por hora  <jsp:getProperty name="trabajador" property="sueldoPorHora" /> <br>
        Horas Trabajadas <jsp:getProperty name="trabajador" property="horasTrabajadas" /> <br>
        
    </body>
</html>

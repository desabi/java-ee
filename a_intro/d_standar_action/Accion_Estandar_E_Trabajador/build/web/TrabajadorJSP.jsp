<%-- 
    Document   : TrabajadorJSP
    Created on : 26/01/2017, 08:40:35 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Datos del FORMULARIO</title>
    </head>
    <body>
        
        <h1>Datos obtenidos directamente del formulario</h1>
        
        <h2>Datos del trabajador</h2>
        
        <!-- Crear la accion estandar -->
        <jsp:useBean id="elTrabajador" class="modelo.Trabajador" scope="request" />
        
        <!-- Obtener datos del formulario -->
        <jsp:setProperty name="elTrabajador" property="nombre" param="campoNombre" />
        <jsp:setProperty name="elTrabajador" property="sueldoPorHora" param="campoSueldoPorHora" />
        <jsp:setProperty name="elTrabajador" property="horasTrabajadas" param="campoHorasTrabajadas" />
        
        <!-- Imprimir los datos -->
        Nombre: <jsp:getProperty name="elTrabajador" property="nombre" /> <br>
        Sueldo por hora: <jsp:getProperty name="elTrabajador" property="sueldoPorHora" /> <br>
        Horas trabajadas: <jsp:getProperty name="elTrabajador" property="horasTrabajadas" /> <br>
        
    </body>
</html>

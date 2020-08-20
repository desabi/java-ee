<%-- 
    Document   : TrabajadorJSP
    Created on : 26/01/2017, 09:16:59 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>DATOS OBTENIDOS DIRECTAMENT DEL FORMULARIO</h1>
        
        <H2>DATOS DEL TRABAJADOR</H2>
        
        <!-- Crear la accion estandar -->
        <jsp:useBean id="elTrabajador" class="modelo.Trabajador" scope="request" />
        
        <!-- Obtener datos del formulario -->
        <!-- Ya no se le coloca el atributo param -->
        <!-- Por que el nombre del campo en el formulario -->
        <!-- y el nombre del atributo en la clase son iguales -->
        <jsp:setProperty name="elTrabajador" property="nombre" />
        <jsp:setProperty name="elTrabajador" property="sueldoPorHora" />
        <jsp:setProperty name="elTrabajador" property="horasTrabajadas" />
        
        <!-- imprimir los datos -->
        Nombre:           <jsp:getProperty name="elTrabajador" property="nombre" /> <br>
        Sueldo por Hora:  <jsp:getProperty name="elTrabajador" property="sueldoPorHora" /> <br>
        Horas Trabajadas: <jsp:getProperty name="elTrabajador" property="horasTrabajadas" /> <br>
        
    </body>
</html>

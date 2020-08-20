<%-- 
    Document   : CuentaJSP
    Created on : 6/06/2017, 03:29:43 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DATOS DE LA CUENTA</title>
    </head>
    <body>
        
        <h1>DATOS DE LA CUENTA</h1>
        
        Banco:   <c:out value="${laCuenta.banco}" /> <br />
        Numero:  <c:out value="${laCuenta.numero}" /> <br />
        
        <h2>Datos del propietario</h2>
        Nombre:   <c:out value="${laCuenta.propietario.nombre}" /> <br />  
        Telefono: <c:out value="${laCuenta.propietario.telefono}" /> <br /> 
        
    </body>
</html>

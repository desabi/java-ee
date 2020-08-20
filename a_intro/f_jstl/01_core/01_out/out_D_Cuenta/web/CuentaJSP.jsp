<%-- 
    Document   : CuentaJSP
    Created on : 6/06/2017, 03:08:18 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FORMULARIOS OBJETOS Y EL</title>
    </head>
    <body>
        <h1>FORMULARIOS OBJETOS Y EL</h1>
        
        <h2>DATOS DE LA CUENTA</h2>
        
        Banco:       <c:out value="${laCuenta.banco}" /> <br />
        Propietario: <c:out value="${laCuenta.propietario}" /> <br />
        Saldo:       <c:out value="${laCuenta.saldo} " /> <br />
        
    </body>
</html>

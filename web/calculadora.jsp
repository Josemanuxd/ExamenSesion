<%-- 
    Document   : calculadora
    Created on : 6/11/2017, 08:41:21 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession sesion = request.getSession();
    String nom = (String)sesion.getAttribute("nombre");
    float result = (float) sesion.getAttribute("resul");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">BIENVENIDO <%=nom%></h1>
        <h3 align="center">Calculadora</h3>
        <form action="calculadora" method="POST">
            <input type="text" name="num1" id="num1" placeholder="Escribe el numero 1" />
            <br><br>
            <input type="text" name="num1" id="num1" placeholder="Escribe el numero 1" />
            <br><br>
            <input type="submit" value="Sumar" />
        </form>
        <p><%=result%></p>
    </body>
</html>

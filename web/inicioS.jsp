<%-- 
    Document   : inicioS
    Created on : 6/11/2017, 08:35:22 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String resp = request.getParameter("res");
    String msj = "";
    
    if(resp.equals("12")) {
        msj = "NOMBRE Y/O CONTRASEÑA INCORRECTO";
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">INICIO DE SESIÓN</h1>
        <h3 align="center">DELGADO MAR JOSE MANUEL | 5IM8</h3>
        <p align="center"><%=msj%></p>
        <div align="center">
            
            <form action="servlet" method="POST" >
                <input type="text" id="nomb" name="nomb" placeholder="Escribe tu nombre"/>
                <br><br>
                <input type="password" id="psw" name="psw" placeholder="Escribe tu contraseña"/>
                <br><br>
                <input type="submit" value="Iniciar Sesión" />
            </form>
        </div>
    </body>
</html>

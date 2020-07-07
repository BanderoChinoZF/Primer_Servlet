<%-- 
    Document   : paginaPrincipal
    Created on : 20/06/2020, 02:43:41 PM
    Author     : luisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //Declaramos una variable sesionActual de tipo HttpSession
    HttpSession sesionActual = request.getSession(true);
    
    //CARGAMOS EN sesionActual LA VARIABLE DE SESION nomUsuario
    String usuario = (String)sesionActual.getAttribute("nomUsuario");
    if(usuario == null)
    {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BIENVENIDO <%=usuario%></title>
    </head>
    <body>
        <h4>Bienvenido: <%=usuario%></h4>
        
        <div id="menu">
            
            <ul>
                <li><a href="#">Mantenimiento</a></li>
                <li><a href="#">Consultas</a></li>
                <li><a href="#">Informes</a></li>
                <li><a href="#">Acerca de...</a></li>
            </ul>
            
        </div>
        
    </body>
</html>

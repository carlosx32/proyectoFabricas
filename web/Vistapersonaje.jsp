<%-- 
    Document   : VistaPersonaje
    Created on : 25/02/2017, 04:12:12 PM
    Author     : carandy
--%>

<%@page import="Fabrica.FabricaPjAbs "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%                      
        String arma =  (String)session.getAttribute("Arma");
        String escudo =  (String)session.getAttribute("Escudo");
        String botas =  (String)session.getAttribute("Botas");
        String traje =  (String)session.getAttribute("Traje");
        String casco =  (String)session.getAttribute("Casco");
    %>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejemplo2 Canvas </title>
    <script type="text/javascript">
      function dibujarCanvas(){
        var Armaimg= new Image();
        Armaimg.src= <%= arma %>;
        var canvas = document.getElementById('miCanvas');
        var contexto = canvas.getContext('2d');
        ctx.drawImage(Armaimg, 10, 10);
        contexto.stroke();
	}
    </script>
  </head>
  <body onLoad="dibujarCanvas();">
    <p><canvas id="miCanvas" width="900" height="600">Su navegador no soporta Canvas.</canvas></p>
    
    
    <image src=<%= arma    %>>
    <br>
    <image src=<%= escudo  %>>
    <br>
    <image src=<%= botas   %>>
    <br>
    <image src=<%= traje   %>>
    <br>
    <image src=<%= casco   %>>
    <br>  
    
    <a href="index.jsp" >Inicio</a>
  </body>
</html>

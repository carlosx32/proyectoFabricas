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
        String arma=(String)session.getAttribute("Arma");
        String escudo=(String)session.getAttribute("Escudo");
        String botas=(String)session.getAttribute("Botas");
        String traje=(String)session.getAttribute("Traje");
        String casco=(String)session.getAttribute("Casco");
    %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejemplo2 Canvas </title>
    
    <script type="text/javascript">
        var arma    =   new Image();
        var escudo  =   new Image();
        var botas   =   new Image();
        var traje   =   new Image();
        var casco   =   new Image();
        var inicio=100;
        function dibujarCanvas(){
        arma.src = '<%=arma%>';
        escudo.src = '<%=escudo%>';
        botas.src = '<%=botas%>';
        traje.src = '<%=traje%>';
        casco.src = '<%=casco%>';
        
        var canvas = document.getElementById('miCanvas');
        var ctx = canvas.getContext('2d');
	      // imagen                
            arma.onload = function(){
                    ctx.drawImage(arma,0,inicio*0,100,100);  // imagen completa en la posición (0,0) 
            };
            escudo.onload = function(){
                    ctx.drawImage(escudo,0,inicio*1,100,100);  // imagen completa en la posición (0,0) 
            };
            botas.onload = function(){
                    ctx.drawImage(botas,0,inicio*2,100,100);  // imagen completa en la posición (0,0) 
            };
            traje.onload = function(){
                    ctx.drawImage(traje,0,inicio*3,100,100);  // imagen completa en la posición (0,0) 
            };
            casco.onload = function(){
                    ctx.drawImage(casco,0,inicio*4,100,100);  // imagen completa en la posición (0,0) 
            };
                
        ctx.strokeRect(0,0,canvas.width, 600);
        }
	
		
    </script>
    
  </head>
  <body onload="dibujarCanvas()">
      <canvas  id="miCanvas" width="900" height="600">Su navegador no soporta Canvas.</canvas>
      <br>
    
      <%--
    <image  src=<%=arma%>>
    <br>
    <image src=<%=escudo%>>
    <br>
    <image src=<%=botas%>>
    <br>
    <image src=<%=traje%>>
    <br>
    <image src=<%=casco%>>
    <br>  
    --%>
    <a href="index.jsp" >Inicio</a>
  </body>
</html>

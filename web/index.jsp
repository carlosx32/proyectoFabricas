<%-- 
    Document   : index
    Created on : 25/02/2017, 03:28:13 PM
    Author     : carandy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Juego sin nombre</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Selecciona tu personaje</div>
        <form method="post" action="crearPersonaje">
             <select id="cb" name="comboBox" class="combo">   
                <option value="Guerrero">Guerrero</option>
                <option value="Cazador">Cazador</option>
                <option value="Sacerdote">Sacerdote</option>
                <option value="Brujo">Brujo</option>

             </select>
            <input type="submit" value="Crear">
        </form>
    </body>
</html>

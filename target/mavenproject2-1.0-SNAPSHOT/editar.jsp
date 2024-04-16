

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.emergentes.estudiante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    estudiante est = (estudiante) request.getAttribute("est");
    ArrayList<String> seminariosSeleccionados = est.getSeminarios();
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro en Seminarios</title>
    <style>
        
        h1 {
            text-align: center; /* Centra el texto */
            margin-top: 50px; /* Espacio en la parte superior */
            margin-bottom: 20px; /* Espacio en la parte inferior */
        }
        .panel {
            background-color: #cccccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 500px;
            height: 200px;
        }

        .panel2 {
            background-color: #cccccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 300px;
            height: 200px;
            position: absolute;
            top: 105px;
            left: 600px;
        }
         button[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 20px 0;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        #id,
label[for="id"] {
    display: none;
}

    </style>
</head>
<body>
    <h1>REGISTRO EN SEMINARIOS</h1>
    <form action="MainServelt" method="post">
        <input type="hidden" name="nr" value="nuevo">
        <div class="panel">
            <label for="id">Id:</label>
            <input type="text" id="id" name="id" value="<%=est.getId()%>" readonly><br>
            <h2>Datos</h2>
            <label for="fecha">Fecha:  </label>
            <input type="date" id="fecha" name="fecha" value="<%=est.getFecha()%>" required><br>
            <label for="nombre">Nombre:  </label>
            <input type="text" id="nombres" name="nombres" value="<%=est.getNombres()%>" required><br>
            <label for="apellidos">Apellidos:  </label>
            <input type="text" id="apellidos" name="apellidos" value="<%=est.getApellidos()%>" required><br>
            <label>Turno:</label><br>
            <input type="radio" id="mañana" name="turno" value="Mañana" <%= est != null && est.getTurno() != null && est.getTurno().equals("Mañana") ? "checked" : "" %>>
            <label for="mañana">Mañana</label>
            <input type="radio" id="tarde" name="turno" value="Tarde" <%= est != null && est.getTurno() != null && est.getTurno().equals("Tarde") ? "checked" : "" %>>
            <label for="tarde">Tarde</label>
            <input type="radio" id="noche" name="turno" value="Noche" <%= est != null && est.getTurno() != null && est.getTurno().equals("Noche") ? "checked" : "" %>>
            <label for="noche">Noche</label>
        </div>
        <div class="panel2">
            <h2>Seminarios disponibles</h2>
            <label for="seminarios">Seminarios:</label><br>
            <input type="checkbox" id="ia" name="seminarios" value="Inteligencia Artificial" <%= seminariosSeleccionados != null && seminariosSeleccionados.contains("Inteligencia Artificial") ? "checked" : "" %>>
            <label for="ia">Inteligencia Artificial</label><br>
            <input type="checkbox" id="ml" name="seminarios" value="Machine Learning" <%= seminariosSeleccionados != null && seminariosSeleccionados.contains("Machine Learning") ? "checked" : "" %>>
            <label for="ml">Machine Learning</label><br>
            <input type="checkbox" id="sa" name="seminarios" value="Simulacion con Arena" <%= seminariosSeleccionados != null && seminariosSeleccionados.contains("Simulación con Arena") ? "checked" : "" %>>
            <label for="sa">Simulación con Arena</label><br>
            <input type="checkbox" id="re" name="seminarios" value="Robotica Educativa" <%= seminariosSeleccionados != null && seminariosSeleccionados.contains("Robótica Educativa") ? "checked" : "" %>>
            <label for="re">Robótica Educativa</label><br>
        </div>
        <button type="submit">Enviar Registro</button>
    </form>
</body>
</html>

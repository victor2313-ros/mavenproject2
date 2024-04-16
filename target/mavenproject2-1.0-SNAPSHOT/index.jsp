<%@page import="com.emergentes.estudiante"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<estudiante> lista = new ArrayList<>();
        session.setAttribute("listaper", lista);
    }
    ArrayList<estudiante> lista = (ArrayList<estudiante>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lista de Inscritos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 60px;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #4CAF50;
            color: white;
        }
        
        tr:hover {
            background-color: #f5f5f5;
        }
        
        a {
            text-decoration: none;
            color: #007bff;
        }
        
        a:hover {
            text-decoration: underline;
        }
        
button[type="submit"] {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 30px 0;
    display: block;
}

    </style>
</head>
<body>
    <h1>Lista de Inscritos</h1>
    <form action="MainServelt" method="get">
        <input type="hidden" name="op" value="nuevo">
        <button type="submit">Nuevo</button>
    </form>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Turno</th>
                <th>Seminarios</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <% 
                if (lista != null) {
                    for (estudiante item : lista) {
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getFecha()%></td>
                <td><%=item.getNombres()%></td>
                <td><%=item.getApellidos()%></td> 
                <td><%=item.getTurno()%></td>
                <td><%=item.getSeminarios()%></td>
                <td><a href="MainServelt?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainServelt?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('¿Está seguro de eliminar?')">Eliminar</a></td>
            </tr>
            <% 
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>

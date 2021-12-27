<%-- 
    Document   : Turnos
    Created on : 21 dic. 2021, 16:23:15
    Author     : karis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.TurnosDAO"%>
<%@page import="modelo.Turnos"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
         <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
       <script src="https://kit.fontawesome.com/d8e935e810.js" crossorigin="anonymous"></script>
       <title>Turnos</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
        <a class="btn btn-primary" href="TurnosController?accion=nuevo" style="background-color:#78CDA3  ; border:#78CDA3">Agendar Turno</a>
        <table class="table">
            <thead>
            <tr>
                <th>id</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Edad</th>
                <th>Telefono</th>
                <th>Mail</th>
                <th>NombreDoctor</th> 
                <th>Especialidad</th>
                <th>Fecha</th>
                <th>Hora</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>  
            </thead>
      
            <tbody>
      
        <%
            List<Turnos> resultado=null;
            TurnosDAO Turno= new TurnosDAO();
            resultado=Turno.listarTurnos();
        
            for(int i=0;i<resultado.size();i++)
            {
            String ruta="TurnosController?accion=Modificar&OperacionNro="+resultado.get(i).getid();
            String rutaE="TurnosController?accion=Eliminar&OperacionNro="+resultado.get(i).getid();
            
        %>
    <tr>
        <td><%=resultado.get(i).getid()%></td>
        <td><%=resultado.get(i).getNombre()%></td>
        <td><%=resultado.get(i).getApellido()%></td>
        <td><%=resultado.get(i).getEdad()%></td>
        <td><%=resultado.get(i).getTelefono()%></td>
        <td><%=resultado.get(i).getMail()%></td>
        <td><%=resultado.get(i).getNombreDoctor()%></td> 
        <td><%=resultado.get(i).getEspecialidad()%></td>
        <td><%=resultado.get(i).getFecha()%></td>
         <td><%=resultado.get(i).getHora()%></td>
        
        <td><a class="text-success" href=<%=ruta%>><i class="fas fa-pencil-alt"></i></a></td>
        <td><a class="text-success" href=<%=rutaE%>><i class="fas fa-trash"></i></a></td>          
    </tr>
    </tbody>
    <%
    }
    %>
      
           </table>    
    </div>
   </div>

    </body>
</html>

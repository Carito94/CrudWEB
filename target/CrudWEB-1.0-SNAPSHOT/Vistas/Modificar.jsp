<%-- 
    Document   : Modificar
    Created on : 21 dic. 2021, 16:23:47
    Author     : karis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Turnos"%>
<%@page import="modelo.TurnosDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <title>Turnos</title>
    </head>
    <body>
       <div class="container">
            <h1>Modificar Turno</h1>
            <div class="row">
            <%
                      
                      String id= request.getParameter("id");
                      int mid;
                      mid=Integer.parseInt(id);
                  
                        Turnos resultado=null;
                        TurnosDAO turno=new TurnosDAO();
                        resultado=turno.MostrarTurno(mid);
                        
                %>          
                <form class="p-5" action="TurnosController?accion=actualizar" method="POST">
                    <div>
                        <label for="id" class="form-label"></label>
                        <input type="hidden" class="form-control" id="id" name="id" value=<%=resultado.getid()%>>
                    </div>
                    <div>
                        <label for="Nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="Nombre" name="Nombre" value=<%=resultado.getNombre()%>>
                    </div>
                    <div>
                        <label for="Apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="Apellido" name="Apellido"<%=resultado.getApellido()%>>
                    </div>
                    <div>
                        <label for="Edad" class="form-label">Edad</label>
                        <input type="number" class="form-control" id="Edad" name="Edad" <%=resultado.getEdad()%>>
                    </div>
                    <div>
                        <label for="Telefono" class="form-label">Telefono</label>
                        <input type="number" class="form-control" id="Telefono" name="Telefono" <%=resultado.getTelefono()%>>
                    </div>
                    <div>
                        <label for="Mail" class="form-label">Mail</label>
                        <input type="text" class="form-control" id="Mail" name="Mail" <%=resultado.getMail()%>>
                    </div>
                    <div>
                        <label for="NombreDoctor" class="form-label">NombreDoctor</label>
                        <input type="text" class="form-control" id="NombreDoctor" name="NombreDoctor" <%=resultado.getNombreDoctor()%>>
                    </div>
                        <div>
                        <label for="Especialidad" class="form-label">Especialidad</label>
                        <input type="text" class="form-control" id="Especialidad" name="Especialidad" <%=resultado.getEspecialidad()%>>
                    </div>
                    <div>
                        <label for="Fecha" class="form-label">Fecha</label>
                        <input type="text" class="form-control" id="Fecha" name="Fecha" <%=resultado.getFecha()%>>
                    </div>
                  <label for="Fecha" class="form-label">Hora</label>
                  <input type="text" class="form-control" id="Hora" name="Hora" <%=resultado.getHora()%>>
                    </div>
                    <button type="submit" class="btn btn-primary" style="background-color:#78CDA3  ; border:#78CDA3 ">Agendar</button>
                </form>
           
            </div>
            
            
        </div>
    </body>
</html>

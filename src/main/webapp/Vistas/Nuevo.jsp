<%-- 
    Document   : Nuevo
    Created on : 21 dic. 2021, 16:23:37
    Author     : karis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h1>Nuevo Turno</h1>
            <div class="row">
                <form class="p-5" action="TurnosController?accion=insert" method="POST">
                    <div>
                        <label for="Nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="Nombre" name="Nombre">
                    </div>
                    <div>
                        <label for="Apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="Apellido" name="Apellido">
                    </div>
                    <div>
                        <label for="Edad" class="form-label">Edad</label>
                        <input type="number" class="form-control" id="Edad" name="Edad">
                    </div>
                    <div>
                        <label for="Telefono" class="form-label">Telefono</label>
                        <input type="number" class="form-control" id="Telefono" name="Telefono">
                    </div>
                    <div>
                        <label for="Mail" class="form-label">Mail</label>
                        <input type="text" class="form-control" id="Mail" name="Mail">
                    </div>
                    <div>
                        <label for="NombreDoctor" class="form-label">NombreDoctor</label>
                        <input type="text" class="form-control" id="NombreDoctor" name="NombreDoctor">
                    </div>
                        <div>
                        <label for="Especialidad" class="form-label">Especialidad</label>
                        <input type="text" class="form-control" id="Especialidad" name="Especialidad" >
                    </div>
                    <div>
                    
                        <label for="Fecha" class="form-label">Fecha</label>
                        <input type="text" class="form-control" id="Fecha" name="Fecha">
                    </div>
                    <div>
                    
                        <label for="Fecha" class="form-label">Hora</label>
                        <input type="text" class="form-control" id="Hora" name="Hora">
                    </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary" style="background-color:#78CDA3  ; border:#78CDA3 ">Agendar</button>
                </form>
                
                
                
                
                
            </div>
            
            
        </div>
    </body>
</html>

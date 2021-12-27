<%-- 
    Document   : servicios
    Created on : 25 dic. 2021, 18:23:55
    Author     : karis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Clínica Esperanza</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
        <script src="js/myscript.js"></script>
        <script src="https://kit.fontawesome.com/d8e935e810.js" crossorigin="anonymous"></script> 
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-light bg-#E9FFF4" style="background-color: #E9FFF4">
  <div class="container-fluid">
      
      <a class="navbar-brand" href="#"><img src="images/logo2.jpg" alt="" width="10%" height="10%"> Clínica Esperanza</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
 
    <div class="collapse navbar-collapse container" id="navbarText">
       
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item col-lg-2">
          <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
        </li>
        <li class="nav-item col-lg-5">
          <a class="nav-link" href="sobrenosotros.jsp">Sobre Nosotros</a>
        </li>
        <li class="nav-item col-lg-3">
          <a class="nav-link" href="servicios.jsp">Servicios</a>
        </li>
        <li class="nav-item col-lg-2">
          <a class="nav-link" href="contacto.jsp">Contacto</a>
        </li>
      </ul>
        <span class="navbar-text" id="Turnera">
            <a class="nav-link" href="TurnosController"> <i class="far fa-calendar-alt"></i>&nbsp;&nbsp;Turnos</a>
      </span>

    </div>
  </div>
</nav>
        <br>
        <br>
        
        <h1 style="text-align: center">NUESTROS SERVICIOS</h1>
  
  <ul class="list-group list-group-flush">
  <li class="list-group-item">Alergia</li>
  <li class="list-group-item">Cardiología</li>
  <li class="list-group-item">Cirugía</li>


  <li class="list-group-item">Clínica Médica</li>
  <li class="list-group-item">Dermatología</li>
  <li class="list-group-item">Endocrinología</li>


  <li class="list-group-item">Flebología</li>
  <li class="list-group-item">Gastroenterología</li>
  <li class="list-group-item">Ginecología</li>

  <li class="list-group-item">Hematología</li>
  <li class="list-group-item">Hepatología</li>
  <li class="list-group-item">Infectología</li>

  <li class="list-group-item">Neumonología</li>
  <li class="list-group-item">Neurocirugía</li>
  <li class="list-group-item">Neurología</li>

  <li class="list-group-item">Nutrición</li>
  <li class="list-group-item">Oftalmología</li>
  <li class="list-group-item">Pediatría</li>
</ul>
    </body>
</html>

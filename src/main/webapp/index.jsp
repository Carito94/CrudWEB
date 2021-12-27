<%-- 
    Document   : index
    Created on : 25 dic. 2021, 18:19:22
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
        <h1 style="text-align: center">BIENVENIDO A LA CLÍNICA ESPERANZA</h1>
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="images/imagen1.jpg" class="d-block w-50" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="images/imagen2.jpg" class="d-block w-50" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/imagen3.jpg" class="d-block w-50" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
        
          <br>
          <br>
        <div class="card-group">
  <div class="card">
  
    <div class="card-body" style="background-color: #E9FFF4;color:#276A49">
        <h5 class="card-title" style="text-align: center"><i class="far fa-calendar-alt"></i>&nbsp;&nbsp;<a class="nav-link" href="TurnosController"style="color:#276A49">Solicitar Turnos</a></h5>
      <p class="card-text" style="text-align: center" >Reserve su turno para consultas médicas o estudios</p>

    </div>
  </div>
          
            
  <div class="card">
 
    <div class="card-body" style="background-color: #E9FFF4;color:#276A49">
      <h5 class="card-title" style="text-align: center"><i class="fas fa-pills"></i>&nbsp;&nbsp;<a class="nav-link" href="#"style="color:#276A49">Solicitar Recetas</a></h5>
      <p class="card-text" style="text-align: center">Complete el formulario y acceda a su receta</p>

    </div>
  </div>
  <div class="card">

    <div class="card-body" style="background-color: #E9FFF4;color:#276A49">
      <h5 class="card-title" style="text-align: center"><i class="far fa-sticky-note"></i>&nbsp;&nbsp;<a class="nav-link" href="#"style="color:#276A49">Resultados de Estudios</a></h5>
      <p class="card-text" style="text-align: center">Consulte los resultados de sus estudios online</p>
 
    </div>
  </div>
</div>
     <br>
      <br>      
 <nav class="navbar navbar-expand-lg navbar-light bg-#E9FFF4" style="background-color: #E9FFF4">
  <div class="container-fluid">
      
      <a class="navbar-brand" href="#"><img src="images/logo2.jpg" alt="" width="10%" height="10%"> Clínica Esperanza</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
 
    <div class="collapse navbar-collapse container" id="navbarText">
       
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item col-md-3">
            <p style="text-align: center"><i class="fas fa-map-marker"></i>&nbsp;&nbsp;Córdoba 1600, Ciudad Autónoma de Buenos Aires<br>(011)4551-3333<br>informes@clinicaesperanza.org</p>
        </li>
        <li class="nav-item col-md-3">
          <p></p>
        </li>
        <li class="nav-item col-md-3">
            <p style="text-align: center"><i class="fab fa-facebook-square"></i>&nbsp;&nbsp;Seguinos en facebook<br><br><i class="fab fa-instagram"></i>&nbsp;&nbsp;Seguinos en instagram</p>
        </li>
        <li class="nav-item col-md-3">
          <p></p>
        </li>
      </ul>

    </div>
  </div>
</nav>
    </body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


   
   <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/misEstilosIndex.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  <link rel="shortcut icon" href="Iconos/isotipo.5.png">
  <link rel="stylesheet" href="css/tipografias.css">
  


</head>
<body>


   <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-4">
            <a href="verIndex"><img class="logoNav" src="Iconos/logoOriginal.png" alt=""></a>
          </div>
          <div class="col-md-8">
            <button class="navbar-toggler responsive" type="button" data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
              aria-label="Toggle navigation">
              <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-list"
                viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                  d="M2.5 11.5A.5.5 0 0 1 3 11h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 7h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 3h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
              </svg>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <div class="row mt-3">
                <div class="col-md-10" id="buscar">
                  <input class="outlinenone col-11" type="search" placeholder="Buscar" aria-label="Search">
                  <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                      class="bi bi-search" viewBox="0 0 16 16">
                      <path
                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
                  </a>
                </div>
                <div class=" col-md-10">
                  <ul class="navbar-nav offset-md-2">
                    <li class="nav-item">
                      <a class="nav-link" href="verIndex">Inicio</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Lo Nuevo
                      </a>
                      <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="verUltimasNoticias">Últimas Noticias</a></li>
                        <li><a class="dropdown-item" href="verNoticiasNacionales">Noticias Nacionales</a></li>
                        <li><a class="dropdown-item" href="verNoticiasInternacionales">Noticias Internacionales</a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Nosotros
                      </a>
                      <ul class="navopciones dropdown-menu dropdown-menu-end " aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="verQuienesSomos">¿Quiénes Somos?</a></li>
                        <li><a class="dropdown-item" href="verComisiones">Comisiones</a></li>
                        <li><a class="dropdown-item" href="verConsejoConsultivo">Consejo Consultivo</a></li>
                        <li><a class="dropdown-item" href="verConsejoEditorial">Consejo Editorial</a></li>
                        <li><a class="dropdown-item" href="verAsociadosExtraordinarios">Asociados Extraordinarios</a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Eventos
                      </a>
                      <ul class="navopciones2 dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown"><!---->
                        <li><a class="dropdown-item" href="verEventosProximos">Eventos Próximos</a></li>
                        <li><a class="dropdown-item" href="verEventosPasados">Eventos Pasados</a></li>
                        <li><a class="dropdown-item" href="verSeminarios">Seminarios</a></li>
                        <li><a class="dropdown-item" href="verCursos">Cursos</a></li>
                        <li><a class="dropdown-item" href="verOtros">Otros</a></li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="verRevistas">Revistas</a>
                    </li>

                    <li class="nav-item">
                      <a class="nav-link" href="verPostula">Postula a SJ</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </nav>


	  <!--  -->
	

</body>
</html>
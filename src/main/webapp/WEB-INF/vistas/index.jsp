<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sociedad Juridica</title>
  <!--   -->
  
  <script type="text/javascript"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>
   
   <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/misEstilosIndex.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  <link rel="shortcut icon" href="Iconos/isotipo.5.png">
  <link rel="stylesheet" href="css/tipografias.css">
  
  

</head>

<body>

  <header style='width:100vw;height:100vh'>
  
  
	<!-- AQUI EMPIEZA EL CARRUSEL -->
   <div id="carouselExampleIndicators" class="carousel slide me-auto ms-auto"  data-bs-ride="carousel" style='width:100vw;height:100vh'>
  		<div class="carousel-indicators" id="grupo-botones-indicadores">  		  

 		</div>
  		<div class="carousel-inner" id="imagenes_carrusel">
  
		<!-- AQUI SE INSERTA LAS IMAGENES A TRAVES DE JQUERY -->

  		</div>
  		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
   		 <span class="carousel-control-prev-icon" aria-hidden="true"></span>
   		 <span class="visually-hidden">Previous</span>
  		</button>
  		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
   		 <span class="carousel-control-next-icon" aria-hidden="true"></span>
    	<span class="visually-hidden">Next</span>
 	 	</button>
	</div>
	<!-- AQUI TERMINA EL CARRUSEL -->
  
  
 <jsp:include page="menu-principal.jsp" />
  </header>

  <main>
    <section class="bienvenido">
      <div class="divBien">
        <b>
          <h3 class="m-3 d-lg-inline-block">Bienvenido a Sociedad Jurídica</h3>
        </b>
        <br><br>
        <div class="m-3  contenido">
          <div class="separador">
            <div class="marcoImg">
              <img class="icoBien" src="Iconos/escala-de-justicia.png" alt="">
              <br><br>
              <h5 class="text-center">Nosotros</h5>
              <a href="verQuienesSomos" class="verMas">Ver más</a>
            </div>
          </div>
          <div class="separador">
            <div class="marcoImg">
              <img class="icoBien" src="Iconos/libro.png" alt="">
              <br><br>
              <h5 class="text-center">Revistas</h5>
              <a href="verRevistas" class="verMas">Ver más</a>
            </div>
          </div>
          <div class="separador">
            <div class="marcoImg">
              <img class="icoBien" src="Iconos/evento.png" alt="">
              <br><br>
              <h5 class="text-center">Eventos</h5>
              <a href="verEventosProximos" class="verMas">Ver más</a>
            </div>
          </div>
          <div class="separador">
            <div class="marcoImg">
              <img class="icoBien" src="Iconos/grupo.png" alt="">
              <br><br>
              <h5 class="text-center">Postula</h5>
              <a href="verPostula" class="verMas">Ver más</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="nuevos_cursos" class="sectionCurso row col-12">
    </section>
    <section class="secLoNuevo">

      <h3>Lo Nuevo</h3>
      <p class="subnuevo">Entérate de nuestras más recientes noticias y publicaciones en esta sección</p>
      <div class="containerNuevo">

        <div class="cardNuevo">
          <div>
            <h4 class="DerPenal">Derecho Penal</h4>
            <img class="imgNew" src="Imagenes/pexels-pixabay-355952.jpg" alt="">
            <a href="#" class="nuevoLink">¿Quién es Manuel Merino de Lama?: El nuevo Presidente de Perú tras la
              destitución de Vizcarra</a>
            <p class="m-lg-1">20/12/20 - 19:00 hrs</p>
          </div>
        </div>

        <div class="cardNuevo">
          <div>
            <h4 class="DerPenal">Derecho Penal</h4>
            <img class="imgNew" src="Imagenes/pexels-pixabay-355952.jpg" alt="">
            <a href="#" class="nuevoLink">¿Quién es Manuel Merino de Lama?: El nuevo Presidente de Perú tras la
              destitución de Vizcarra</a>
            <p class="m-lg-1">20/12/20 - 19:00 hrs</p>
          </div>
        </div>

        <div class="cardNuevo">
          <div>
            <h4 class="DerPenal">Derecho Penal</h4>
            <img class="imgNew" src="Imagenes/pexels-pixabay-355952.jpg" alt="">
            <a href="#" class="nuevoLink">¿Quién es Manuel Merino de Lama?: El nuevo Presidente de Perú tras la
              destitución de Vizcarra</a>
            <p class="m-lg-1">20/12/20 - 19:00 hrs</p>
          </div>
        </div>
      </div>
      <div> <a href="verUltimasNoticias"><button type="button" class="btn vermasNuevo">Ver más</button></a> </div>

    </section>
  </main>

  <footer>
    <div class="container contafooter">
      <div class="row contenidoFooter">
        <div class="col-md-6">
          <a href="#"><img class="logofooter" src="Iconos/logoTransparenteOriginal2.png" alt=""></a>
        </div>
        <div class="col-md-6">
          <div class="row">
            <div class="col md-6">
              <span>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-outbound" viewBox="0 0 16 16">
                  <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5z"/>
                </svg>
                (+51) 953 067 712
              </span>
              <br>
              <span>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                </svg>
                sociedadjuridica.sej@gmail.com
              </span>
            </div>

            <div class="col-md-6 d-inline-flex mt-2 divcontRed">

              <a class="asvg" href="https://www.facebook.com/sociedadjuridica" target="_blank">
                <div class="divsvg">
                <svg class="redesSvg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 1080 1080">
                  <image x="302" y="64" width="493" height="952" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAaCAYAAACHD21cAAABE0lEQVQ4jcXUvy4EURTH8c+91p+GhEJEJVQaL6ASb+EFNDpKb0WpFgUdiUpsIxGJgpBNkJHZHXZn5q7MrohfcpKbk/O958/9E8QJQzSFfexgBXngB9kMzoeBazjFYt+VDSyzx1bJ0ddRGSrAfmjWSkC7WC8z9c1T4HYCusIh7jGNDjFW7UyM2beFkNumEAxaTGRM+e6aBA2MIDm4oWBKtR3y4RxgHk94w3IC3EMbc1jAZRBCDsw2zPyl45gqo4Gum/ZYVbt3AfLzGU23QYyrmMRr70Y4wUZlmy1cYKk4iW7Gm0pQJ1UangvratwexwdbP12rP8n4Hz2Ofvi/y5gCUyXUfInPKjwUi/y7yJ/bC9l7KQSfy7k6bfj8jg0AAAAASUVORK5CYII="/>
                </svg>
              </div>
              </a>

              <a class="asvg" href="https://www.instagram.com/sociedadjuridica/" target="_blank">
                <div class="divsvg">
                  <svg class="redesSvg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 1080 1080">
                    <image x="64" y="64" width="952" height="952" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAACaklEQVRIia2WS4jPURTHP/6GkWchTUZZeKVoit1EFEnCKBFiVkqiGCU1SyuxIFthgfLYyFssEFkMieQ1MmVIMh7lUTTmr/Pve3W6fvfO4H/q173nnvf9nXPu6cefsBhoAqYDY4ChQC1QAor4fwLfga/AO+ARcB44VcBbgfHAdaBcpe8u0BCUBw/rgCfACOGPgRvAS+CzPDbPe5xMWfsaYAAwDKgHGoEZjmeaoqxAm4tifSrkvwC7/m7p6wxic6toZAPQrP08p3etHRwQ0vGfRlqd4k06uyX8Qo2yy+BiL4oadCVT9G9eAJeA26KPdLz1Ws/qn5kMz2S1NWHAlB7MZKKl8XDx7tVXK7xZPB9QZhmyLWHojlP6HjgDnAZeu/PUta8U/Yshb4VsLmA85JTtcp4bDAR2OPqVAvllolmJVKrZkI0R0ySnZF/CY4Ptjq8xoi0JhkoZBau1fgK2Zvj2uKtbFdHKYVOKKj2OyOBmxkiAy1onpxhyEQUHevpgKHay0FBgijvzc62z+mBoQSRTaCgFx3Vuhbg7w7cFmKD9iZw3ufQ+4jJqJzAoorc4+rUC+SZfR51CWhIRP3DK3gAnFW2HO3/lnhgPK3wdtffSgqwwj2ZakPWzUQnZ0IK6rKl+1OHYBPMPtfn9wEJgqhLHHLyqVzkFdTqv2Dgsq+0ZgX+FMBrYDMF8dw1rqmhkjtO7Lhzeq7KxRcA3/5SHIh0HPAUGC29T2H446RYtLvD+en9sLLMHzwp8tjNqD+tD78VEvZbVGrfuAzOD8qKBcDmwVGPSaGCIUtw8LwLrhZaZdlVdGtvOAcd+MwO/ABjr3SN01V9UAAAAAElFTkSuQmCC"/>
                  </svg>
              </div>
              </a>

              <a class="asvg" href="https://youtube.com/user/sjzonainteractiva" target="_blank">
                <div class="divsvg">
                  <svg class="redesSvg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 1080 1080">
                    <image x="137" y="64" width="806" height="952" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAaCAYAAACzdqxAAAACe0lEQVRIibWVX2jOYRTHP3v3732tGcJWCJsL5E/ZojVJMbmUGxdyIbartbZml25cSC5QYqllKcp2Iy64UBJlJSXJSJT/jPnP2Lt5p1PfX51+ntdetp369Zzn/M7zPed5zvc5D07ygM/ANZkOAL+AEiZAzgOjgnkO/JgIUJPFAt6msUH2/UCXy74NqANmA+3A1FzA+5TpoOb7FMS+O7KZ3gHUSl8UB0kEgM8ASeC65nuBVqAcWAGUAY+At8BP+QznAnxV4zlnSwMZ6VOcnlVCwB81vnG2IiAlPSMG4Qr9h4SAizUmne29WOIDDQDPsgEXBGyFGqdr/ArsFmNMPgh4K7D2XzJ+oMLd0nwBUArsADaoUAdls6CXgadxkLzY3Hg5Q5VPKjOr/kJx+C4wVzfS/j0EpgFftJP+eIAW4J3j6/98Q8BjYE8EunmcgKFvC9rOfQWpAGZJPxtYsBNYmgPwRUSjF0CTO5omUSy+YJX+jwV825zuOcMcXdtRsaJLhTqmwjRqV4eAI25dD7BLxbX5EwN+7RzKXYfbpOzSGq8AJ0SzKtleAr3SSx3PR4zH+Vk4XqFAESVTymSmmhDqdoeB1aKcySXDTAS47Dkev0CZWCJp7dBotl62EXSlszYSF8Dr3j9fwb7p4nQD9fbEJUK9VDKkwFGGGWVY7HyGdRz2mpwGXum4ChOKFkm/a5cFomK75in14j6dK8pynQp7XA/CgPy44VixRlsx/YKKtxFYpkt0ClgJzAfmuQegRoG2a60Fp/MvRLetRrrx2Qrj597XWBHpJw14yST0iuVRxauBZqBSbdBapJ2ptUYrXoh2lrEdhb3o34FPKtxR4OZvqV35B2u4l7QAAAAASUVORK5CYII="/>
                  </svg>
              </div>
              </a>

              <a class="asvg" href="verLogin" target="_blank">
                <div class="divsvg">
                  <svg class="redesSvg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 1080 1080">
                    <image x="305" y="64" width="470" height="952" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAAaCAYAAABsONZfAAABlUlEQVQ4jX2UPUsDQRCGn0mMoKj4UagYxMYfYKk/wELsLAQbSwv/oZW9WqiFolXwC4LxO8ldcpeTwVkdL5csLDc7O887s3u7KyJSA6ZE5Bx4AxrAK/CiPcsy9X3Y3JfOlUWkBKzx00aBGWAeWACWgGVg0cbTKqCZVoBTQIBj4B1QoUfgGfgErixzD7hGRLRXRWRMRA5FZMt8vm+KyHYYl6yse6ANREBivh1gw2wtedZsRvjfGrZobF2R2eqv5KF1YAI4AC6Bmu1WxTZiD5gEUuAhQBdAE9gHVoEqsGubcQfMATfAETAe1tS0b9kETsyuA2f2LVtMK0A4qG5220rEfupoCMpD3iduzfp/skFQ6nyZs1MTKYQSN9lz60iHZfJQ6srrmkgh1M2VGjIlwzJ1nGLioI6JFEL+7HUG+Pug2CnGDox96cMyRS6w4zPnoZYLzAvEw6AQ2HbqkbsmfZAe3JBJIW//QvlLqAczbIRmDf9GxXRcCOnjEQJVIFQSnrBCSF+l0PQVCvO3dpsHlhfak3sX/vzANxmBggUPG7FDAAAAAElFTkSuQmCC"/>
                  </svg>
                  
              </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
	  <!--  -->
	  <script src="js/bootstrap.min.js"></script>
  	  <script src="js/scriptlogo.js"></script>
		
		
		<script type="text/javascript">
		
		
		


		
		
function filtrarPortada(){
	$.getJSON("listaPaginaPrincipal", function (data){				

	portada(data);
	});
}

function nuevosCursos(){
	$.getJSON("listaEventosPagPrincipal", function (data){				
		cursos(data);
	console.log(data);
	});
}
				
	
$(document).ready(function() {	
	filtrarPortada();
	nuevosCursos();
})
		
		
		
		/*<div  class="card">
        <br>
        <div class="texCard">
          <h4>Curso</h4>
          <br>
          <p>
            Especialidad de Derecho penal
          </p>
          <div> <a href="verCursos"><button type="button" class="btn vermasCursos">Ver más</button></a></div>
        </div>
      </div>*/
		
	
function cursos(data){
    	  $.each(data, function(index,item){
    		  $("#nuevos_cursos").append("<div id="+item.idEvento+" class='row col-12 card'>"+
    			 "<br>"+
    	        "<div class='col-7 texCard'>"+
    	          "<h4>"+item.nombre+"</h4>"+
    	          "<br>"+
    	          "<p>"+item.descripcion+
    	          "</p>"+
    	          "<div id='div-ver-mas'> <a href='verCursos'><button type='button' class='btn vermasCursos'>Ver más</button></a></div>"+
    	        "</div>"+
    	       "<div class='col-5 d-flex m-auto'>"+
    	        "<img class='m-auto rounded' width='220vw' height='220vh'  src="+item.imagen+">"+
    	        "</div>"+
    	      "</div>");
    		  
    		  //$("#"+item.idEvento+"").addClass("card");
    		 // $("#"+item.idEvento+"").css({'background-image':"url("+item.imagen+")", 'background-size':'100% 250px'})
    		  
		});    	  
}      
      
      
	
function portada(data){
		//------------ AQUI SE INSERTA LAS IMAGENES AL CARRUSEL---------------------------------
		
		$.each(data, function(index,item){
			
			console.log(item);
			
			$("#grupo-botones-indicadores").append("<button type='button' class='boton-indicador' data-bs-target='#carouselExampleIndicators' data-bs-slide-to="+index+"></button>");
			
			
			$("#imagenes_carrusel").append("<div class='carousel-item' >"+
				      "<img src="+item.imagen+" class='d-block position-relative' alt='' style='width:100vw;height:100vh'>"+
				      "<div class='carousel-caption d-none d-md-block text-dark'>"+
				       //"<h5>"+item.titulo+"</h5>"+
				       "<a type='button' style='background-color: #024059; color:white' class='btn mb-5' href="+ item.url+" >Link &nbsp &nbsp <i class='fas fa-arrow-alt-circle-right'></i></a>"+
				        //"<p>Some representative placeholder content for the first slide.</p>"+
				      "</div>"+
				    "</div>");
		});	
		//----------------------------------------------------------------------------------------
		
		//----------- EL PRIMER ITEM DEL CARRUSEL DEBE ESTAR SIEMPRE CON CLASE ACTIVE -------------
		$('.carousel-item').eq(0).addClass('active');	
		$('.boton-indicador').eq(0).addClass('active');
		//-----------------------------------------------------------------------------------------
}
	
	
		
		</script>
		
</body>

</html>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

 	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/eventProximos.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link rel="shortcut icon" href="Iconos/isotipo.5.png">
    <link rel="stylesheet" href="css/tipografias.css">


    <title>Eventos Pr�ximos</title>
</head>
<body>
    
    <header>
           <jsp:include page="menu-principal.jsp" />
        <div class="padreNosotros">
            <div class="NavNosotros">
                Eventos Pr�ximos
            </div>
        </div>
    </header>
    <br><br>
    <hr class="linea">
    <br>

   

  
<div id="eventos-proximos" class="m-0 p-0 w-100">

 <!-- CONTENIDO CON JQUERY -->

</div>

   

    <!-- div class="next">
      <a href="#"><button type="button" class="btn siguiente">Siguiente > </button></a>
    </div-->


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

    <script src="js/scriptlogo.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
       <script>
    
 $.getJSON("listaEventos", function (data){
		listarEventosPasados(data);

});
    
    
	function listarEventosPasados(data){
		
		let ordenFecha = [];
		
		 $.each(data, function(index,item){
	
 		// if(item.cargo.descripcion == "Marketing & financiamiento" || item.cargo.descripcion == "Vicepresidente")
			 if(item.tipoEventos.descripcion == "proximos"){				 
				 ordenFecha.push(item);				 
				 ordenFecha.sort( (a, b) => (a.fecha_pub > b.fecha_pub) ? 1 : -1)				
				  console.log(ordenFecha);				
			 }  		  
		}); 
		 
		 /*<section class="secProximos">
      <div class="row">
          
          <div class="col-md-1 divfecha">
              <h1 class="date text-center h1fecha">
                  01 DIC
              </h1>
          </div>
          <div class="col-md-4">
            <img class="imgProx" src="Imagenes/jakob-dalbjorn-730178-unsplash-min.jpg" alt="">
          </div>
          <div class="col-md-7">
              <h3>
                CURSO DE ACTUALIZACION: DERECHO BANCARIO Y FINANCIERO
              </h3>
              <div class="spanCont">
                <span class="spanInfo">
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="30.024" height="30.024" viewBox="0 0 1080 1080">
                    <image x="189" y="64" width="702" height="952" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAaCAYAAAC3g3x9AAACmklEQVRIiY2VX2jOYRTHP+f138VSJLvQlkzJnyx/2pbGBantFrG/+R+1XEhxtxuRGxG5mNSadkPSbswFyooVKRkpF3KDpZYVjcJXZ86rn1/P+/aeent+73nO+Z7vOc95zmMtLS2UkC7gBLA2t/0auABcB37nXWcmsNrN7IZ/SBLwGHjlf4GVQJOZ9QF9kg4B18oB9puZMxuX1A3cS5GX1GxmAw4saQewq7hXyNgNBNhlSUtKgYU8klQDnDOzncDt4saMuro6X4+Z2WngoqTjZYDyct/MZpnZYeCbl8cPpcrMJoF3wLJMWmWRzCz794UfnqTFBTPrDuXJBNjsKLri1w/MSwQ8FUH2+6HsDeWdBJFRM6sHnkaLdElaD6zO2d2NdY8fSgMwBvwqRvZ0zKwnwA4Cm8Ku08xWeTZuk2P5DFjngF6MT4naNMQ6lHEaCpvGRB2nMYptszBRv7FYmzJOxe+XiTpOY1hra+tzoD6YZkHnAG/NbCkwGCXplDQOLAe+5hj+dHtneDMU23OF/uE1kTQiqU2Sg40CaxwsZ9vsPe1YzrAa+BBF3ZhI3WVuZDBVVOTYjQCbgdqCpI9AL7AB2Feiob9nwXJB2wLsrKT3/8aXmTnLakkLgMkUakLmm5lfuQlJ04dSyETrCOArFYK57aXwbS/qstPmAeBz0De3VoDnLXQAuAUMpwA9Uk9EHqyA3WD4HMnqCzm7L94eXksz6y0D5sOgRpLPz4n/9lJvipk99LQlrfBmzW3XmpmPulFJjXnfPEMijaMB3JcI1hc2XSnfJCDwBjgDbAE6MvrdwDbgfIL534BlnlFn8xlYlLnnfl+nJFXFwK2Y4bTEAbn4gH3i9zV6ruT7kHqXszIc9bwaSn/AsvPxfwH+AG29+bK+N9VkAAAAAElFTkSuQmCC"/>
                  </svg>
                  Lima, Lima
                </span>
                <span class="spanInfo">
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="30.024" height="30.024" viewBox="0 0 1080 1080">
                    <image x="64" y="64" width="952" height="952" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAADt0lEQVRIiZWWa4iVVRSGn/c4pRghoZklpVKD2UxB91LDX0JORGWKkiYkkhH96cYEGf3o4hSjGJIKkgSZWkkFlaVFkDLdIAoLC+1HWlSm3cakGdRWrNP7yefX8Ywu+Nj7rL3OWnu967bV0dHBADQJWABcD4yqiO4FNgPPAVubqWlpcpaKVwDjJOXvD4B1wHdAAGOBy4F5ETEP+B64C9h0MoZeBG6TtAu4EXiz2W0lTQOWRMRbwMvArIEM5e8vgQsl3QE8XzqbYS9lj2qG7SXg7fwkzY2IF4DLgIuBvqOXqcToG0njgYuAr81bDDwUkbr5BRhpfn1vWLuBB82/ANgVEXuAMYXiWsnIehuZYCOjgc9spAs4BzgLWAts9H5URDwBPABsB84DvgXOl5T716seTZTUAxRwDQf2W2ZERPzaLEbAMEl/eJ8X+iljnLGOiKnAe7V0XdKrTtUiJh9lHCLiADDE8DSj4RHRG//h+4nlMkN3S9qY/0/o2g3D7RZ4DGiNiJEO6rnAQMWW3lwJnGn5bvPnpLfAVTXjm/Su10XAckn7JSXeg4FM264GBk7x+huwU1JC/BRwv/kZjn+AzjR0M/CpD4qbd5aUZaE+LKmzYmw50C9psOEv+Iu8zvC6Dbihxa71mDkb+BP4u3LzJ4EjkroiojVvKSkVPQscqsgediLNdnZ+CEwp0nuP1yywIS7EUysKEpKPJU23kc+BewxNQS3uIqcBB8q6axVlRdX3lZmZTP62NtpXqM86yjqPtqCigtOLfuCm6r9Nnb7tIODeBueHHZt9lsNFXDfUC0w2M5tpduLT0/UGt8VwHUOFnBMis3SE6wiPmb6a28QVZm7x2l1VdhK02KJF+7ku45aGlpgxzesjwJ0Rka2krdREm1F60B4RZxvSwtgUr0/Xe52kvQ5aofSriGhzYC/JbjyAoYzxDmCoi7zV/B8cqzPqWRcR090+Flogm2zWTab6XxWlKjKpRAclDXWMrjE7G/ToiLg1Y1ikd09EbABWeWD1+n2QdfMj8EyOdMtuKOGfniyVtM8jJaHLNpTjZk1EvAa8T4PBt0NSzqNLgS/My5byaERkhv6eMJhf30vKgn08ZcxvM/RlCP9naJANtEu6G1hZOuvwKK+5IBOndyrviQURsTobrGPbfzxDBeUUnSMpXzb3uWc1o2zMSyMi4U3ZmVXZ472C5uajIyKWAa84yDnQsr/ttkdZ8QnxtS7Y7Gm3lMf3iRhKesPfxIiY7zq7uiLzs6fyGo+DxgT8C8nuOSg/S7IhAAAAAElFTkSuQmCC"/>
                  </svg>
                  17:00 hrs                
                </span>
              </div>
              <p class="Pdescripcion">
               �Qu� nuevo rol han tomado las cooperativas a partir de su regulaci�n por la SBS?, �Qu� es el FINTECH y como ha revolucionado el sistema?
              </p>
              <div> 
                <a href="#"><button type="button" class="btn btnComprar">Comprar Entrada</button></a> 
              </div>
          </div>

      </div>
    </section>
    <hr class="separador">*/
		 
		 
		 
		 //ordenFecha.sort().reverse();
		$.each(ordenFecha, function(i,item){
				console.log(item.fecha_pub);
				let fecha = item.fecha_pub;
				let date  = new Date(fecha);
				let dia = date.getDate();
				
				let month = date.toLocaleString('es-es', { month: 'short' });
				
						  $("#eventos-proximos").append("<section class='secProximos'>"+
							      "<div class='row'>"+   
							    "<div class='col-md-1 divfecha'>"+
					              "<h1 class='date text-center h1fecha'>"+
					              "<label > "+ dia + " <br>" + month.toUpperCase() + " </label>"+    
					              "</h1>"+
					          "</div>"+
				          "<div class='col-lg-5 col-md-12 d-flex'>"+
				            "<img class='imgProx m-auto' src="+item.imagen+" alt=''>"+
				          "</div>"+
				          "<div class='col-lg-5 col-md-12'>"+
				              "<h3>"+
				              item.nombre+
				              "</h3>"+
				              "<div class='spanCont'>"+
				                "<span class='spanInfo'>"+
				                  "<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='30.024' height='30.024' viewBox='0 0 1080 1080'>"+
				                    "<image x='189' y='64' width='702' height='952' xlink:href='data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAaCAYAAAC3g3x9AAACmklEQVRIiY2VX2jOYRTHP+f138VSJLvQlkzJnyx/2pbGBantFrG/+R+1XEhxtxuRGxG5mNSadkPSbswFyooVKRkpF3KDpZYVjcJXZ86rn1/P+/aeent+73nO+Z7vOc95zmMtLS2UkC7gBLA2t/0auABcB37nXWcmsNrN7IZ/SBLwGHjlf4GVQJOZ9QF9kg4B18oB9puZMxuX1A3cS5GX1GxmAw4saQewq7hXyNgNBNhlSUtKgYU8klQDnDOzncDt4saMuro6X4+Z2WngoqTjZYDyct/MZpnZYeCbl8cPpcrMJoF3wLJMWmWRzCz794UfnqTFBTPrDuXJBNjsKLri1w/MSwQ8FUH2+6HsDeWdBJFRM6sHnkaLdElaD6zO2d2NdY8fSgMwBvwqRvZ0zKwnwA4Cm8Ku08xWeTZuk2P5DFjngF6MT4naNMQ6lHEaCpvGRB2nMYptszBRv7FYmzJOxe+XiTpOY1hra+tzoD6YZkHnAG/NbCkwGCXplDQOLAe+5hj+dHtneDMU23OF/uE1kTQiqU2Sg40CaxwsZ9vsPe1YzrAa+BBF3ZhI3WVuZDBVVOTYjQCbgdqCpI9AL7AB2Feiob9nwXJB2wLsrKT3/8aXmTnLakkLgMkUakLmm5lfuQlJ04dSyETrCOArFYK57aXwbS/qstPmAeBz0De3VoDnLXQAuAUMpwA9Uk9EHqyA3WD4HMnqCzm7L94eXksz6y0D5sOgRpLPz4n/9lJvipk99LQlrfBmzW3XmpmPulFJjXnfPEMijaMB3JcI1hc2XSnfJCDwBjgDbAE6MvrdwDbgfIL534BlnlFn8xlYlLnnfl+nJFXFwK2Y4bTEAbn4gH3i9zV6ruT7kHqXszIc9bwaSn/AsvPxfwH+AG29+bK+N9VkAAAAAElFTkSuQmCC'/>"+
				                  "</svg>"+
				                  item.ubigeo.provincia + ', '+ item.ubigeo.distrito+
				                "</span>"+
				                "<span class='spanInfo'>"+
				                  "<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='30.024' height='30.024' viewBox='0 0 1080 1080'>"+
				                    "<image x='64' y='64' width='952' height='952' xlink:href='data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAADt0lEQVRIiZWWa4iVVRSGn/c4pRghoZklpVKD2UxB91LDX0JORGWKkiYkkhH96cYEGf3o4hSjGJIKkgSZWkkFlaVFkDLdIAoLC+1HWlSm3cakGdRWrNP7yefX8Ywu+Nj7rL3OWnu967bV0dHBADQJWABcD4yqiO4FNgPPAVubqWlpcpaKVwDjJOXvD4B1wHdAAGOBy4F5ETEP+B64C9h0MoZeBG6TtAu4EXiz2W0lTQOWRMRbwMvArIEM5e8vgQsl3QE8XzqbYS9lj2qG7SXg7fwkzY2IF4DLgIuBvqOXqcToG0njgYuAr81bDDwUkbr5BRhpfn1vWLuBB82/ANgVEXuAMYXiWsnIehuZYCOjgc9spAs4BzgLWAts9H5URDwBPABsB84DvgXOl5T716seTZTUAxRwDQf2W2ZERPzaLEbAMEl/eJ8X+iljnLGOiKnAe7V0XdKrTtUiJh9lHCLiADDE8DSj4RHRG//h+4nlMkN3S9qY/0/o2g3D7RZ4DGiNiJEO6rnAQMWW3lwJnGn5bvPnpLfAVTXjm/Su10XAckn7JSXeg4FM264GBk7x+huwU1JC/BRwv/kZjn+AzjR0M/CpD4qbd5aUZaE+LKmzYmw50C9psOEv+Iu8zvC6Dbihxa71mDkb+BP4u3LzJ4EjkroiojVvKSkVPQscqsgediLNdnZ+CEwp0nuP1yywIS7EUysKEpKPJU23kc+BewxNQS3uIqcBB8q6axVlRdX3lZmZTP62NtpXqM86yjqPtqCigtOLfuCm6r9Nnb7tIODeBueHHZt9lsNFXDfUC0w2M5tpduLT0/UGt8VwHUOFnBMis3SE6wiPmb6a28QVZm7x2l1VdhK02KJF+7ku45aGlpgxzesjwJ0Rka2krdREm1F60B4RZxvSwtgUr0/Xe52kvQ5aofSriGhzYC/JbjyAoYzxDmCoi7zV/B8cqzPqWRcR090+Flogm2zWTab6XxWlKjKpRAclDXWMrjE7G/ToiLg1Y1ikd09EbABWeWD1+n2QdfMj8EyOdMtuKOGfniyVtM8jJaHLNpTjZk1EvAa8T4PBt0NSzqNLgS/My5byaERkhv6eMJhf30vKgn08ZcxvM/RlCP9naJANtEu6G1hZOuvwKK+5IBOndyrviQURsTobrGPbfzxDBeUUnSMpXzb3uWc1o2zMSyMi4U3ZmVXZ472C5uajIyKWAa84yDnQsr/ttkdZ8QnxtS7Y7Gm3lMf3iRhKesPfxIiY7zq7uiLzs6fyGo+DxgT8C8nuOSg/S7IhAAAAAElFTkSuQmCC'/>"+
				                  "</svg>"+
				                  "<label id='fecha-event'> &nbsp; "+ item.fecha_pub + " </label>"+           
				                "</span>"+				              
				              "</div>"+
				              "<p class='Pdescripcion'>"+
				              item.descripcion+
				              "</p>"+
				              "<div>"+
				                "<a href='#'><button type='button' class='btnLeer mb-5'>Comprar entrada</button></a>"+
				              "</div>"+
				          "</div>"+
				      "</div>"+
				    "</section>"+
				    "<hr class='separador'>");	
				
				
		})
	}
    
    
    
    
    
    </script>

</body>
</html>
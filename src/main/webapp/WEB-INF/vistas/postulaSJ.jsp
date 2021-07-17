<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

   
    
   
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	 <script src="js/global.js"></script>
	 <script src="js/bootstrap.min.js"></script>
	 
   
      
	<link rel="stylesheet" href="css/postula.css">
	<link rel="stylesheet" href="css/tipografias.css">
 
  	<link rel="stylesheet" href="css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">

    <link rel="shortcut icon" href="Iconos/isotipo.5.png">
    <!-- link rel="stylesheet" href="css/tipografias.css"-->
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
    <link rel="stylesheet" href="css/bootstrapValidator.css"/>
    
 <link rel="stylesheet" href="css/bootstrapValidator.css"/>
    <title>Postula a SaJ</title>
</head>
<body>
    
    <header>
        <jsp:include page="menu-principal.jsp" />
        <div class="padreNosotros">
            <div class="NavNosotros">
                Postula a Sociedad Jurídica
            </div>
        </div>
    </header>
    <br><br>
    <hr class="linea">
    <br>

    <section class="formSection">
        <div class="row">
            <div class="col-md-6">
                <h4 class="h4tit">
                    Sé parte de Sociedad Jurídica!
                </h4>
                <br>
                <p>
                    Para participar en el proceso de Convocatoria envia los siguientes datos:
                </p>
                <form id="id_postula" method="post">
                <div class="form-group">
                	<input class="form-control" type="text" name="nombre" id="id_nombre" placeholder="Apellidos y Nombres Completos">
                </div>
                <div class="form-group">
                	<input class="form-control" type="text" name="telefono" id="id_telefono" placeholder="Número de Teléfono">
                </div>
                <div class="form-group">
                 	<input class="form-control" type="text" name="dni" id="id_dni" placeholder="DNI">
                </div>
                <div class="form-group">
					<input class="form-control" type="email" name="email" id="id_email" placeholder="Correo Electrónico">
                </div>
                
               
                
                
                
                
                <!-- al parecer, para que las validaciones aparezcan debajo del input, este input debe estar dentro de un div -->
                
                   <!--   
                    <input class="form-control" type="text" name="nombre" id="id_nombre" placeholder="Nombre Completo">
                    <input class="form-control" type="text" name="telefono" id="id_telefono" placeholder="Número de Teléfono">
                    <input class="form-control" type="text" name="dni" id="id_dni" placeholder="DNI">
                    <input class="form-control" type="email" name="email" id="id_email" placeholder="Correo Electrónico">
                    -->

                

				<div class="form-group archivo-upload  d-block  ms-auto me-auto">
				 		<label for="idCV" class="w-100 form-control d-flex">
					 			<span id="nombre_cv" class="me-auto ps-3" style="color:#767574">Adjuntar CV</span> 
					 			<i class="bi bi-upload ms-auto me-5"></i>
						</label> 
				
						<input type="file" name="uploadCV" id="idCV" accept=".pdf"/>				
				</div>
				
				<div class="form-group archivo-upload  d-block  ms-auto me-auto">
				 		<label for="idNotas" class="w-100 form-control d-flex" placehaolde>
					 			<span id="nombre_consolidado" class="me-auto ps-3" style="color:#767574">Consolidado de Notas</span> 
					 			<i class="bi bi-upload ms-auto me-5"></i>
						</label> 
				
						<input type="file" name="uploadNotas" id="idNotas" accept=".pdf"/>				
				</div>

                  
                    
                    <div> 
                        <a href="#"><button id="id_registrar" type="button" class="btn btnPostula">Enviar</button></a> 
                    </div>

                </form>
               
                
                <!-- embed id="VISOR-PDF"
 src=""
 type="application/pdf" width="100%" height="600px"/-->
            </div>
            <div class="col-md-6">
                <img class="imgPostula" src="Imagenes/pexels-august-de-richelieu-4427430.jpg" alt="">
                <br><br>
                <ol type="i">
                    <h6 class="Requisitos">REQUISITOS:</h6>
                    <li>El postulante debe ser <span>alumno matriculado de la FACULTAD DE DERECHO DE FEDERICO VILLAREAL</span></li>
                    <li>El postulante debe contar con un <span> Promedio Ponderado Estandarisado.</span></li>
                </ol>
            </div>
        </div>
    </section>
    <br>

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
      <script src="js/scriptCarga.js"></script>


<!-- programacion -->



	<script type="text/javascript">
	
	//document.getElementById('fichero').innerHTML = document.getElementById('file-input').files[0].name;
	
	let nameCV = "";
	let nameConsolidado = "";
	
	document.getElementById('idCV').addEventListener("change",function(e){
	    let reader=new FileReader();
	    reader.readAsDataURL(e.target.files[0]);	    
	    nameCV = e.target.files[0].name	  
	    
	    document.getElementById('nombre_cv').innerHTML = nameCV
	    
	    
	    let cadenainvertida = nameCV.split("").reverse().join("");
	    let extension = cadenainvertida.split(".")[1];
	    nameCV = extension.split("").reverse().join("");   
	    
	    
	    
	    reader.onload=function(){    
	    	
	            let filePDF = document.getElementById('idCV');	            
	            filePDF.setAttribute("value",reader.result);
	            
	            filePDF.getAttribute("value");	            
	        
	            
	            //document.getElementById('DOWNLOAD-PDF').setAttribute('href',reader.result)
	            //document.getElementById('VISOR-PDF').setAttribute('src',reader.result)
	    }
	    
	})
	
	
	document.getElementById('idNotas').addEventListener("change",function(e){
	    let reader=new FileReader();
	    reader.readAsDataURL(e.target.files[0]);
	    
	    nameConsolidado = e.target.files[0].name	
	    
	    document.getElementById('nombre_consolidado').innerHTML = nameConsolidado
	    
	    let cadenainvertida = nameConsolidado.split("").reverse().join("");
	    let extension = cadenainvertida.split(".")[1];
	    nameConsolidado = extension.split("").reverse().join("");
	    
	    
	    reader.onload=function(){    
	    	
	            let filePDF = document.getElementById('idNotas');	            
	            filePDF.setAttribute("value",reader.result);
	            
	            //document.getElementById('DOWNLOAD-PDF').setAttribute('href',reader.result)
	            //document.getElementById('VISOR-PDF').setAttribute('src',reader.result)
	    }
	    
	})
	
	
		$("#id_registrar").click(function() {
			
			var validator = $('#id_postula').data('bootstrapValidator');
			validator.validate();
			
			if(validator.isValid()){	  
			      
				  var formData=new FormData();  
				
				  formData.append("nombre", $("#id_nombre").val());
				  formData.append("telefono", $("#id_telefono").val());
				  formData.append("dni", $("#id_dni").val());
				  formData.append("email", $("#id_email").val());
				  
				  formData.append("cvPDF", $("#idCV").attr('value'));
				  formData.append("consolidadoNotaPDF", $("#idNotas").attr('value'));	
				  
				  formData.append("nameCvPDF", nameCV);
				  formData.append("nameConsolidadoNotaPDF", nameConsolidado);
				 
				  
				
				
				$.ajax({
					type : 'POST',
					data: formData,
				    // enctype: 'multipart/form-data',
				    contentType: false,
				    processData: false,
				    cache: false,
					url : 'registraPostulante',
					success : function(data) {
						mostrarMensaje(data.MENSAJE);
						limpiar();
						validator.resetForm();
					},
					error: function(){
						mostrarMensaje(MSG_ERROR);
					}
				});
			}
		});
		
		
		
		
		
		
		function limpiar(){
			$("#id_nombre").val('');
			$("#id_telefono").val('');
			$("#id_dni").val('');
			$("#id_email").val('');
			
			
			//------ archivos -------
			$("#idCV").val('');
			$("#idNotas").val('');	
			
			//--- NOMBRES ----
			document.getElementById('nombre_cv').innerHTML = '';
		    document.getElementById('nombre_consolidado').innerHTML = '';
		}
		
/*validaciones de campos*/
		$('#id_postula')
				.bootstrapValidator(
						{
							message : 'This value is not valid',
							feedbackIcons : {
								valid : 'glyphicon glyphicon-ok',
								invalid : 'glyphicon glyphicon-remove',
								validating : 'glyphicon glyphicon-refresh'
							},
							fields : {
								nombre : {
									selector : '#id_nombre',
									validators : {
										notEmpty : {
											message : 'ingrese su nombre completo'
										},
										stringLength : {
											message : 'El nombre es de 5 a 100 caracteres',
											min : 5,
											max : 100
										}
									}
								},

								telefono : {
									selector : '#id_telefono',
									validators : {
										notEmpty : {
											message : 'Ingrese su número de teléfono'
										},
										digits: {
				                    		message:"Ingrese solo números/ "
				                  		},
										stringLength : {
											message : 'El número de teléfono es de 9 caracteres',
											min : 9,
											max : 9
										}
										
									}
								},
								
								dni : {
									selector : '#id_dni',
									validators : {
										notEmpty : {
											message : 'Ingrese su número de DNI'
										},
										digits: {
				                    		message:"Ingrese solo números/ "
				                  		},
										stringLength : {
											message : 'El número de DNI es de 8 caracteres',
											min : 8,
											max : 8
										}
										
									}
								},

								email : {
									selector : '#id_email',
									validators : {
										notEmpty : {
											message : 'Ingrese su correo electrónico'
										},
										emailAddress : {
											message : 'El correo no es válido'
										}
									}
								},
								uploadCV : {
									selector : '#idCV',
									validators : {
										notEmpty : {
											message : 'Ingrese su CV'
										}
									}
								},
								uploadNotas : {
									selector : '#idNotas',
									validators : {
										notEmpty : {
											message : 'Ingrese su Consolidado de Notas'
										}
									}
								},

							}
						});
	</script>














</body>
</html>
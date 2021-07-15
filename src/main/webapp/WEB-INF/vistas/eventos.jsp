<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/inicio.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />
	<link rel="shortcut icon" href="Iconos/isotipo.5.png">



    <title>Eventos</title>
</head>

<body class="d-flex">


   <jsp:include page="menu.jsp" />

    <div id="panel-list" class=" col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10 panel">

        <div id="cabezera" class="col-12 d-flex p-4">
            <div>
                <h5>Bienvenido a la familia de Sociedad Jurídica</h5>
            </div>
            <div id="cabezera-usu" class="">
                <h5>${sessionScope.objUsuario.area.nombre }</h5>
                <div class="vl me-2 ms-2"></div>
                <h5>${sessionScope.objUsuario.cargo.descripcion }</h5>
            </div>
        </div>
        
        
        <table id="idTableEvent" class="table table-borderless caption-top ">
		<caption id="" class=" w-100">
                <div class="w-100 d-flex">
                    <h5 class="me-auto float-start">Registro de Eventos</h5>
                   
                </div>
              <div class="row col-12">
              
                <div class="p-2 col-6">

                    <form class="d-flex justify-content-between">
                        <input type="search" class="w-100 m-2">
                    </form>       

                </div>
                  <div  class="col-3 d-flex ms-auto ">
                  <button id="btn-crud-crear" class="col-6 ms-auto btn-crud float-end justify-content-end ">
                    <i  class="icon-crud icon-crear-event"></i> Crear
                    </button>  
                  <button class="col-6 ms-auto btn-crud float-end justify-content-end">
                    <i id="icon-filtrar" class="icon-crud "></i> Filtro
                    </button>
                 	               
                </div> 
             	
              
              </div>   
            </caption>

			<thead class="border-thead">
				<tr>
					<th class="check"></th>
					<th>Nombre de Evento</th>
					<th>Fecha/Hora</th>					
					<th>Capacidad</th>
					<th>Lugar</th>
					<th>Tipo de evento</th>
					<th></th>
					
				</tr>
			</thead>
			<tbody >		
				
				
			</tbody>
		</table>
        
       
    </div>





<div id="panel-reg-edit"
		class=" col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10 panel">

		<div id="cabezera" class="col-12 d-flex p-4">
			<div>
				<h5>Bienvenido a la familia de Sociedad Juridica</h5>
			</div>
			<div id="cabezera-usu" class="">
				<h5>${sessionScope.objUsuario.area.nombre }</h5>
                <div class="vl me-2 ms-2"></div>
                <h5>${sessionScope.objUsuario.cargo.descripcion }</h5>
			</div>
		</div>

		<form id="form-edit" class="row col-12" method="post">

			<h3 class="col-12 d-flex justify-content-start m-4">REGISTRAR EVENTO</h3>
			<br>
			
			<input class="" id="id_evento" value=0
						name="idEvento" placeholder="" hidden="true"/>
			
			<div class="form-group image-upload col-3 d-block text-center">
				<img id="foto_evento" width=200px height=200px 
					src="Imagenes/no-image.png" alt=""> <label
					for="file-input" class="w-100"> <svg
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" width="60.048"
						height="60.048" viewBox="0 0 1080 1080">
                        <image alt="Click aquÃ­ para subir tu foto"
							title="Click aquÃ­ para subir tu foto" x="73" y="220" width="936"
							height="640"
							xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAADQAAAAkCAYAAADGrhlwAAAEXElEQVRYhd2Ze4xeQxjGf1uS1m41kRXqVht3VsUlaVPRVoWWuMU1IqoV9Q/LH4h/xB+CVEo0ITRIio1U2qoq61YRiUupa6JIbInWWpruqq5YglKZ5jnN03HO+c75vvPZ8CRf8s6ZmTPznJl532fer+Wx7h5SMAlYm1YR4UlgdvRsN6Af2LdA/6px66iMF55UcKATU55dOEJkAjp3z6gYNvsb4A0r7wPMlL01pe91Zn8GfFzBRPNwhHZUwE9ZhPrNfh7osnJY1T9lD0f99gKmW/ksoK95XHbgEmCZ7O2BUKdYOk41O2yr8618jNkHARdY+TKz3/8XyAS0eyEQ+rRGhynAsxl1RwHPZNTdXd/8SmMXP5DlFBrFthyiTYWfoe+BryoY7Dfg3pEgQ0ToKeCmJo51AjADOA7YG/gZ6AXeBt4EfqliECc0pooXpmCeXPnxOW02A48DC4AfGhnMz9CPjbwoBSG4vgY8WoMMim23AOuB8xoZ1FdoKnA5MABsUizaUud7j9RWao+eh5i2DvgOGCcvGULEBNWHOLZKK/pQo4Sm6ZdgWAP3ieAg8ArwYo13jk0h84gcxfqMOVwLzAda9exB4GvgpUYIxWgDDtcvwQ3AxBqxa1lEJkTyp3PaBxd/P/Cctughev6Ctu1AGUJ+hoLLfhX4PGiinD5H59RNkdxJMCciE1bvUuBm4JpIoWwAJps+bAHuK0MmJrRCorNTe/owDXB2FJ9i/eZwdRDOS7eVLwa+BJYC92gbfgE8YG0Go+vIFXIYdRHa0+whkXhPZ6aIJtsvOoOuus8BlmdcK7oi4j3Rlr6owNg74YRactrtUeBdrrLX2kcYHW274DkXKZgmmB31X2L2jAJj70SVWs5V+IdmzxQp5DUnyqtNkyNIMM/sj8zev8wkqiQ01uwhs/32u0KkEiww+2CzvU1bmUlUSegPs11GfWv25KjPLLP9I4wz+/cyk8iLQ2Wxwdp77PIszCTFqSVSCbdZ3SqzO80eLDOPKlfoLbNPs4+1SW46QQi0K6UMEoSPsdjKruf8PNZEUULbCrRZZ9urVWIzQbCfyOjXKz33l8oHKPYlyFMZ/0BRtT06p85xh9l3AR1Wngucq2vCB5I210t5bLR2y83+RL/C8DMUkiFXSyV0KAi26zJ2YEFyIfrfDoxX+XWdm0SP9URnKsbDkk8JunLapsIJzYq8ThaGatSHROMa2R3ainOk1LMwQWTOtPqFUfAtTSgPw9qSq6OkYxreUeBM7jNhpV+W8A2B9F2pheDajwVOB66MVj5kmW4sSyYm1C+PMqDAtlFZ0z4922oJxlpYpI+wWLnugDP0q4Vwxq6qh0xMaGnFSZJurcZ8bcNaCIf/zsgplEazkyS9UssnS3En1+02pbs2K8O6Wh+0YTihqpMkjjXmKKqGS6tdCE2vx02WwHatyq86i6PkCMbIzru+5GFqFqFT9Psvo7VZue2Rwo7/h0LC4tD/AZktwMK/AYg22ha43FwEAAAAAElFTkSuQmCC" />
                      </svg>
				</label> <input  class="form-control" id="file-input" type="file" name="foto"/> <label id="fichero"
					for="file-input" class="my-btn btn-danger"></label><br> <label>Subir
					maximo foto de 1MB</label><br>
			</div>





			<div class="col-sm-12 col-md-12 col-xl-8 col-lg-8 mb-auto " id="subir">
				<div class="form-group offset-md-2 pb-3">
					<label>Título</label> 
					<input class="form-control" id="id_nombre" name="nombre" placeholder="Título o nombre del evento"/>
				</div>

				<div class="form-group  offset-md-2 pb-3">
					<label>Descripción</label> 
					<textarea class="form-control areaAltura" id="id_descripcion" name="descripcion" placeholder="Descripción"></textarea>
				</div>

				<div class="form-group offset-md-2 pb-3">
					<label>URL</label> 
					<input class="form-control" id="id_url" name="url" placeholder="Link de YouTube" />
				</div>
				
				<div class="form-group offset-md-2 pb-3">
					<label>Capacidad</label> 
					<input class="form-control" id="id_capacidad" name="capacidad" placeholder="Capacidad" />
				</div>
					
				<div class="row offset-md-2 pb-3" >
				
					<div class="col-md-4 p-0">
					<label>Publicar en:</label> 
					<select class="w-100 form-control" name="tipoEventos" id="id_tipo">
					<option value=" ">Seleccione</option>
					</select>
					</div>
					
					
					<div class="col-md-4 p-0 offset-md-3">
					<label>Fecha</label> 
					<input class="form-control" id="id_fecha" name="fecha_pub" type="date"/>
					</div>
				</div>
				
				<div class="row offset-md-2 pb-3" >
					<div class="col-md-4 p-0">
					<label>Hora</label>
					<select class="w-100 form-control" name="horario" id="id_hora">
					<option value=" ">Seleccione</option>
					</select>
					</div>
					
					<div class="col-md-4 p-0 offset-md-3">
					<label>Venta de Entrada</label> 
					<input class="form-control" id="id_venta" name="precioPresencial" placeholder="S/ 0.00" />
					</div>
				</div>
					
			</div>
			

			<div class="col-12 btn-submit just">
				<button type="button" id="id_cancelar" class="cancel btn m-4">Cancelar</button>
				<button id="id_reg_act" type="submit" class="acept btn m-4">Aceptar</button>
			</div>
		</form>



	</div>



    <script type="text/javascript" src="js/ver-usu.js"></script>
    
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>


    <script type="text/javascript">
    
    
    //--------COMBO TIPO DE EVENTOS-----//
	  $.ajax({
	        type: "GET",
	        url: "listaTipoEventos",
	        success: function(response)
	        {
	        	$.each(response, function(index,item){
	        		//console.log("option: "+option)
	        		$("#id_tipo").append("<option value='"+ item.idTipoEvento +"'>"+ item.descripcion+"</option>");
	        	})
	        }
	});
    
	  //--------COMBO HORARIO-----//
	  $.ajax({
	        type: "GET",
	        url: "listaHorarios",
	        success: function(response)
	        {
	        	$.each(response, function(index,item){
	        		console.log("option: "+item.hora)
	        		$("#id_hora").append("<option value='"+ item.idHorario +"'>"+ item.hora+"</option>");
	        	})
	        }
	});
  
	  
	  
	  
	  document.getElementById('file-input').addEventListener("change",function(e){
		    let reader=new FileReader();
		    reader.readAsDataURL(e.target.files[0]);
		    reader.onload=function(){    
		            let foto = document.getElementById('foto_evento');	            
		            foto.setAttribute("src",reader.result);
		    }
		})

		

		
	  
		function listarEventos(lista){
	 $('#idTableEvent').DataTable().clear();
	 $('#idTableEvent').DataTable().destroy();
	 $('#idTableEvent').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: true,
			responsive: true,
			pageLength: 5,
			lengthChange: false,
			language: {
		        "decimal": "",
		        "emptyTable": "No hay información",
		        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
		        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
		        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
		        "infoPostFix": "",
		        "thousands": ",",
		        "lengthMenu": "Mostrar _MENU_ Entradas",
		        "loadingRecords": "Cargando...",
		        "processing": "Procesando...",
		        "search": "Buscar:",
		        "zeroRecords": "Sin resultados encontrados",
		        "paginate": {
		            "first": "Primero",
		            "last": "Ultimo",
		            "next": "Siguiente",
		            "previous": "Anterior"
		        }
		    },
			columns:[			
				{data: "nombre"},
				{data: "fecha_pub"},
				{data: "capacidad"},
				{data: function(row, type, val, meta){
					var salida= row.ubigeo.provincia + ", " + row.ubigeo.distrito;
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idRevistas + '\',\'' + row.titulo +'\',\'' + row.descripcion +'\',\'' + row.precioPresencial + '\',\'' + row.precioVirtual + '\',\'' +  row.autor + '\',\'' +  row.foto + '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idRevistas + '\')">Eliminar</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
	 $('#idTableEvent').removeClass('dataTable');
	 $("#idTableEvent").removeAttr("style");

}
		
		
	  
	  $("#id_reg_act").click(function (e){ 
			e.preventDefault();
			var validator = $('#form-edit').data('bootstrapValidator');
			validator.validate();

			if (validator.isValid()){
				
				  var formData=new FormData();		  
				  
				  let foto = document.getElementById('foto_evento');	            
			      var file =  foto.getAttribute("src");			  
				
				  formData.append("foto", file);
				  
				  formData.append("id_evento", $("#id_evento").val());
				  formData.append("nombre", $("#id_nombre").val());
				  formData.append("descripcion", $("#id_descripcion").val());
				  formData.append("url", $("#id_url").val());
				  formData.append("fecha_pub", $("#id_fecha").val());
				  formData.append("tipoEventos", $("#id_tipo").val());
				  //formData.append("ubigeo", $("#id_rama_nuevo").val());
				  formData.append("horario", $("#id_hora").val());
				  formData.append("capacidad", $("#id_capacidad").val());
				 
				
				  
				  		$.ajax({
							type: 'POST',  					
							data: formData,					
					        contentType: false,
					        processData: false,
							url: 'insertaActualizaEvento',
							success: function(data){			
								$('#panel-reg-edit').css('display','none');
					            $('#panel-list').css('display','block');
								mostrarMensaje(data.MENSAJE);						
								limpiarFormulario();
								//listar();
								validator.resetForm();
							},
							error: function(){
								mostrarMensaje(MSG_ERROR);
								
								
							}
						});
				 
				  //return false;
			};
		});	


	  
	  
	  
	  
	  
	  

	//-----------------------------------------



	$(document).ready(function() {
		  
		$.getJSON("listaEventos", function(data){	
			listarEventos(data);
	});

		
		$('#form-edit').bootstrapValidator({
				message: 'El valor no es válido',
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
					nombre: {
						selector: '#id_nombre',
						validators: {
							notEmpty: {
								message: '* Este campo es obligatorio'
							},
							stringLength: {
								min: 3,
								max: 40,
								message: 'De 3 a 40 caracteres'
							},
						}
					},
					
					descripcion: {
						selector: '#id_descripcion',
						validators: {
							notEmpty: {
								message: '* Este campo es obligatorio'
							},
							stringLength: {
								min: 3,
								max: 40,
								message: 'De 3 a 40 caracteres'
							},
						}
					},
					url: {
						selector: '#id_url',
						validators: {
							notEmpty: {
								message: '* Este campo es obligatorio'
							},
							stringLength: {
								min: 15,							
								message: 'De 15 a más caracteres'
							},
						}
					},
					fecha_pub: {
						selector: '#id_fecha',
						validators: {
							notEmpty: {
								message: '* Este campo es obligatorio'
							}
							
						}
					},				
					TipoEventos: {
						selector: '#id_tipo',
						validators: {
							notEmpty: {
								message: '* Este campo es obligatorio'
							},
						}
					},
					horario: {
						selector: '#id_hora',
						validators: {
							notEmpty: {
								message: '* Este campo es obligatorio'
							},
						}
					},		
					
				}
			});
		
		});
    
    </script>

</body>

</html>
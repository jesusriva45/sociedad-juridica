<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script type="text/javascript"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>
    
    
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    
 <link href="css/inicio.css" rel="stylesheet">
   
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css" />
	
	<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.24/css/dataTables.jqueryui.min.css" />
	
		<link rel="stylesheet" type="text/css"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	
		<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/rowreorder/1.2.7/css/rowReorder.jqueryui.min.css" />
	
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />

<link rel="shortcut icon" href="Iconos/isotipo.5.png">



    <title>Lo Nuevo</title>
</head>

<body class="d-flex">


    <jsp:include page="menu.jsp" />

    <div id="panel-list" class=" col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10 panel">

        <div id="cabezera" class="col-12 d-inline-flex">
            <div>
                <h5>Bienvenido a la familia de Sociedad Jurídica</h5>
            </div>
            <div id="cabezera-usu" class="">
                <h5>${sessionScope.objUsuario.area.nombre }</h5>
                <div class="vl me-2 ms-2"></div>
                <h5>${sessionScope.objUsuario.cargo.descripcion }</h5>
            </div>
        </div>


		<table id="table_pagina_principal" class="table-sm table-borderless caption-top idTable mt-5 mb-5">
			<caption id="" class=" w-100">
            
             	 <div class="row col-12">              
              		 <h5 class="col-4 me-auto float-start">PÁGINA PRINCIPAL </h5>
             		 <button id="btn-crud-crear-principal" class="col-6 ms-auto btn-crud float-end justify-content-end ">
                    <i   class="icon-crud icon-crear-event"></i> Crear
                    </button>                  
              
             	 </div>   
            </caption>

			<thead class="border-thead ">
				<tr class="p-2">
					<th class="check"></th>
					<th class="pt-2 pb-2">Nombre de documento</th>
					<th>Boton/Link</th>					
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody >	
				
				
			</tbody>
		</table>		

		
		<table id="table_noticias"  class="table-sm table-borderless caption-top idTable mt-5 mb-5">
			<caption id="" class=" w-100">
            
             	 <div class="row col-12">              
              		 <h5 class="col-4 me-auto float-start"> Noticias (Lo nuevo) </h5>
             		 <button id="btn-crud-crear-noticias" class="col-6 ms-auto btn-crud float-end justify-content-end ">
                    <i   class="icon-crud icon-crear-event"></i> Crear
                    </button>                  
              
             	 </div>   
            </caption>

			<thead class="border-thead ">
				<tr class="p-2">
					<th class="check"></th>
					<th class="pt-2 pb-2">Nombre de documento</th>
					<th>Lugar publicado</th>					
					<th>Acciones</th>
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
<h3 class="col-10 justify-content-start me-auto ms-auto mt-4" id="titulo_noticias"></h3>
		<form id="form-edit" class="row col-12" method="post">

<input class="" id="id_noticia" value=0
						name="idNoticia" placeholder="" hidden="true"/>
						
			<input class="" id="id_pag_principal" value=0
						name="idpagina_principal" placeholder="" hidden="true"/>
			
			<br>
			
			<div class="form-group image-upload col-4 d-block text-center mt-5 ms-auto me-auto">
				<img id="imagen_b64" width=100% height=250px 
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





			<div class="col-sm-12 col-md-12 col-xl-8 col-lg-8 mb-auto mt-auto p-3" id="subir">
				<div class="form-group pb-3" id="input_titulo">
					<label></label> 
					<input class="form-control" id="id_titulo" name="titulo" placeholder="Título" />
				</div>

			

				<div class="form-group pb-3" id="textarea_descripcion">
					<label></label> 
					<textarea class="form-control" rows="1" id="id_descripcion" name="descripcion" placeholder="Descripción" ></textarea>
				</div>
				
				<div class="form-group pb-3" id="input_url">
					<label></label> 
					<input class="form-control" id="id_url" name="url" placeholder="URL" />
				</div>

				<div class="row col-md-12  pb-3 " id="select_tipo_rama">
					
					<div class="form-group col-5 ">
					<label>Publicar en</label>
					<select class="form-control" id="id_tipo_noticia" name="tipoNoticias">									
					</select>
					</div>
				
					<div class="form-group col-5 ">
					<label>Rama</label>
					<select class="form-control" id="id_rama" name="rama">						
					</select>
					</div>
				</div>
			</div>
			

			<div class="col-12 btn-submit just">
				<button type="button" id="id_cancelar" class="cancel btn m-4">Cancelar</button>
				<button id="id_registrar_noticia" type="submit" class="acept btn m-4">Aceptar</button>
				<button id="id_registrar_pag_principal" type="submit" class="acept btn m-4">Aceptar</button>
			</div>
		</form>



	</div>














    <script type="text/javascript" src="js/ver-usu.js"></script>
    
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>
   
<script type="text/javascript">



document.getElementById('file-input').addEventListener("change",function(e){
    let reader=new FileReader();
    reader.readAsDataURL(e.target.files[0]);
    reader.onload=function(){    
            let foto = document.getElementById('imagen_b64');	            
            foto.setAttribute("src",reader.result);
    }
})


/*$.getJSON("listaRamas", function(data){		
		$("#id_rama").append("<option selected value=' '>-- Elija una rama --</option>");
		$.each(data, function(i, item){
			
			$("#id_rama").append("<option value='"+ item.idRama +"'>"+ item.descripcion+"</option>");

		});
	});*/





$("#id_registrar_noticia").click(function (e){ 
	e.preventDefault();
	var validator = $('#form-edit').data('bootstrapValidator');
	validator.validate();

	if (validator.isValid()){
		
		  var formData=new FormData();		  
		  
		  let foto = document.getElementById('imagen_b64');	            
	      var file =  foto.getAttribute("src");			  
		
		  formData.append("foto", file);
		  
		  formData.append("id_noticia", $("#id_noticia").val());
		  formData.append("titulo", $("#id_titulo").val());
		  formData.append("descripcion", $("#id_descripcion").val());
		  formData.append("url", $("#id_url").val());
		  formData.append("tipoNoticia", $("#id_tipo_noticia").val());
		  formData.append("rama", $("#id_rama").val());

	  
		 
			
		  
		  		$.ajax({
					type: 'POST',  					
					data: formData,					
			        contentType: false,
			        processData: false,
					url: 'insertaActualizaNoticiaNuevo',
					success: function(data){			
						$('#panel-reg-edit').css('display','none');
			            $('#panel-list').css('display','block');
						mostrarMensaje(data.MENSAJE);						
						limpiarFormulario();
						//listar();
						
						listarNoticias(data.lista);
						validator.resetForm();
					},
					error: function(){
						mostrarMensaje(MSG_ERROR);
						console.log($("#id_rama").val());
						
					}
				});
		 
		  //return false;
	};
});	



	//-------- PAGINA PRINCIPAL ------------------------
	
$("#id_registrar_pag_principal").click(function (e){ 
		e.preventDefault();
		var validator = $('#form-edit').data('bootstrapValidator');
		validator.validate();

		if (validator.isValid()){
			
			  var formData=new FormData();		  
			  
			  let foto = document.getElementById('imagen_b64');	            
		      var file =  foto.getAttribute("src");			  
			
			  formData.append("imagen", file);
			  
			  formData.append("id_pagina_principal", $("#id_pag_principal").val());
			  formData.append("titulo", $("#id_titulo").val());
			  formData.append("descripcion", $("#id_descripcion").val());
			  formData.append("url", $("#id_url").val());		
			

		  
			 
				
			  
			  		$.ajax({
						type: 'POST',  					
						data: formData,					
				        contentType: false,
				        processData: false,
						url: 'insertaActualizaPaginaPrincipal',
						success: function(data){			
							$('#panel-reg-edit').css('display','none');
				            $('#panel-list').css('display','block');
							mostrarMensaje(data.MENSAJE);						
							limpiarFormulario();
							//listar();
							listarPortadaPrincipal(data.lista);
							validator.resetForm();
						},
						error: function(){
							mostrarMensaje(MSG_ERROR);
							console.log($("#id_rama").val());
							
						}
					});
			 
			  //return false;
		};
	});	



function listarPortadaPrincipal(lista){
	 $('#table_pagina_principal').DataTable().clear();
	 $('#table_pagina_principal').DataTable().destroy();
	 $('#table_pagina_principal').DataTable({
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
				{data: function(row, type, val, meta){
					
					var salida='<img width=70px height=70px src='+row.imagen+'>';
					return salida;
				},className:'text-center'},
				{data: "url"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 20px; margin-right:15px" class="btn btn-crud" onclick="editarPortada(\''+row.idpagina_principal + '\',\'' + row.titulo +'\',\'' + row.descripcion +'\',\'' + row.url + '\',\'' +  row.imagen + '\')"><i class="fas fa-pencil-alt fa-2x"></i></button>' +
					'<button type="button" style="width: 20px; margin-left:15px;" class="btn btn-crud" onclick="eliminar(\'' + row.idpagina_principal + '\')"><i class="far fa-times-circle fa-2x"></i></button>';
					return salida;
				},className:'text-center'},	
																
			]                                     
	    });
	 $('#table_pagina_principal').removeClass('dataTable');
	 $("#table_pagina_principal").removeAttr("style");

}



function listarNoticias(lista){
	 $('#table_noticias').DataTable().clear();
	 $('#table_noticias').DataTable().destroy();
	 $('#table_noticias').DataTable({
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
				{data: function(row, type, val, meta){
					
					var salida='<img width=70px height=70px src='+row.imagen+'>';
					return salida;
				},className:'text-center'},
				{data: "tipoNoticias.descripcion"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 20px; margin-right:15px" class="btn btn-crud" onclick="editarNoticias(\''+row.idNoticias + '\',\''+  row.titulo + '\',\''  + row.descripcion +'\',\'' + row.tipoNoticias.idTipo +'\',\'' + row.rama.idRama + '\',\'' + row.imagen+'\')"><i class="fas fa-pencil-alt fa-2x"></i></button>' +
					'<button type="button" style="width: 20px; margin-left:15px" class="btn btn-crud" onclick="eliminar(\'' + row.idNoticias + '\')"><i class="far fa-times-circle fa-2x"></i></button>';
					return salida;
				},className:'text-center'},	
																
			]                                     
	    });
	 $('#table_noticias').removeClass('dataTable');
	 $("#table_noticias").removeAttr("style");

}



//--------- LIMPIAR FORMULARIO --------------

function limpiarFormulario(){
	$('#id_noticia').val(0); 
	$('#id_pag_principal').val(0); 
	$('#id_titulo').val(''); 
	$('#id_descripcion').val('');	 
	$('#id_url').val('');	 
	$('#id_rama option').val('');
	$('#id_tipo_noticia option').val('');
	$('#imagen_b64').attr('src','Imagenes/no-image.png');

	
	comboBox();
}


//----- ABRIR PANEL DE REGISTRO ------------

let panelList = $('#panel-list');
let panelRegEdit = $('#panel-reg-edit');

let inputTitulo = $('#id_titulo'); 
let inputDescripcion = $('#id_descripcion');
 
let selectRama = $('#id_rama');
let selectTipoNoticia = $('#id_tipo_noticia');
 
 

let divtUrl = $('#input_url'); 
let divTipoRama = $('#select_tipo_rama');
let divSubir = $('#subir');
let divDescripcion = $('#textarea_descripcion');
let divTitulo = $('#input_titulo');







function editarPortada(idPaginaPrincipal,titulo,descripcion,url,imagen){
	
	$('#id_registrar_noticia').css('display','none');
	$('#id_registrar_pag_principal').css('display','block');
	
	$('#titulo_noticias').html("Editar Portada principal");
	
	
	$('#id_pag_principal').val(idPaginaPrincipal); 
	$('#id_titulo').val(titulo);
	$('#id_descripcion').val(descripcion);	
	$('#id_url').val(url);	 
	$('#imagen_b64').attr('src',imagen);
	
	
	
	
	$("#id_tipo_noticia").empty();
	panelList.css('display','none');
	panelRegEdit.css('display','block');
	divTipoRama.css('display','none');
	divTitulo.css('display','flex');
	divDescripcion.css('display','block');
	divtUrl.css('display','block');
	divDescripcion.attr('rows','1');
	
	$.getJSON("listaTipoNoticias", function(data){
		$.each(data, function(i, item){
			if(item.descripcion == "pagina principal"){
				$("#id_tipo_noticia").append("<option selected value='"+ item.idTipo +"'>"+ item.descripcion+"</option>");
				
			}
		});
	});
	selectRama.val(1);

}






$('#btn-crud-crear-principal').click(function(e){
	
	$('#id_registrar_noticia').css('display','none');
	$('#id_registrar_pag_principal').css('display','block');
	
	$('#titulo_noticias').html("Portada principal");
	$("#id_tipo_noticia").empty();
	panelList.css('display','none');
	panelRegEdit.css('display','block');
	divTipoRama.css('display','none');
	divTitulo.css('display','flex');
	divDescripcion.css('display','block');
	divtUrl.css('display','block');
	divDescripcion.attr('rows','1');
	
	$.getJSON("listaTipoNoticias", function(data){
		$.each(data, function(i, item){
			if(item.descripcion == "pagina principal"){
				$("#id_tipo_noticia").append("<option selected value='"+ item.idTipo +"'>"+ item.descripcion+"</option>");
				
			}
		});
	});
	selectRama.val(1);
	
	
})






//---------------- BOTON CREAR Y ACTUALIZAR NOTICIAS ---------------



function editarNoticias(idNoticias,titulo,descripcion,tipoNoticias,rama,imagen){
	
	
	$('#id_registrar_pag_principal').css('display','none');
	$('#id_registrar_noticia').css('display','block');
	
	$('#id_noticia').val(idNoticias); 
	
	$('#titulo_noticias').html("Editar Noticia");

	$('#id_titulo').val(titulo);
	$('#id_descripcion').val(descripcion);
	$('#imagen_b64').attr('src',imagen);
	
	
	
	
	$("#id_tipo_noticia").val(tipoNoticias);
	$("#id_rama").val(rama);
	
	panelList.css('display','none');
	panelRegEdit.css('display','block');
	divTipoRama.css('display','flex');
	divtUrl.css('display','none');
	divTitulo.css('display','flex');
	divDescripcion.css('display','block');
	inputDescripcion.attr('rows',4);

}





$('#btn-crud-crear-noticias').click(function(e){
	
	$('#id_registrar_pag_principal').css('display','none');
	$('#id_registrar_noticia').css('display','block');
	
	$('#titulo_noticias').html("Noticias");

	//comboBox();
	
	
	panelList.css('display','none');
	panelRegEdit.css('display','block');
	divTipoRama.css('display','flex');
	divtUrl.css('display','none');
	divTitulo.css('display','flex');
	divDescripcion.css('display','block');
	inputDescripcion.attr('rows',4);
	
	var validator = $('#form-edit').data('bootstrapValidator');
	validator.resetForm();  
	
})

//------------ LENAR COMBO BOX -------------

function comboBox(){
	$("#id_rama").empty();
	$("#id_tipo_noticia").empty();
	
	
	$.getJSON("listaTipoNoticias", function(data){
		$("#id_tipo_noticia").append("<option selected value=' '>-- Elija un lugar --</option>");
		$.each(data, function(i, item){
			
			if(item.descripcion != "cursos" && item.descripcion != "pagina principal"){
				$("#id_tipo_noticia").append("<option value='"+ item.idTipo +"'>"+ item.descripcion+"</option>");
			}

		});
	});
	

	$.getJSON("listaRamas", function(data){		
		$("#id_rama").append("<option selected value=' '>-- Elija una rama --</option>");
		$.each(data, function(i, item){
			
			$("#id_rama").append("<option value='"+ item.idRama +"'>"+ item.descripcion+"</option>");

		});
	});
}




//-------------------- LLENAR TABLAS ---------------------------

$(document).ready(function() {	
	comboBox();
})


	$.getJSON("listaNoticias", function (listado){
			
		listarNoticias(listado);
		console.log(listado);
			
})

	$.getJSON("listaPaginaPrincipal", function (listado){
			
		listarPortadaPrincipal(listado);
			
})


//-----------------------------------------



$(document).ready(function() {
	  

	
	$('#form-edit').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				titulo: {
					selector: '#id_titulo',
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
							max: 1000,
							message: 'De 3 a 1000 caracteres'
						},
					}
				},
				
						
			
			
				
				tipoNoticias: {
					selector: '#id_tipo_noticia',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},
				rama: {
					selector: '#id_rama',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},				
			      foto: {
			  		selector : '#file-input',
			          validators: {
			              file: {
			              	extension: 'png,jpg',
			              	type: 'image/jpeg,image/png',
			              	maxSize: 1024*1024,                	
			             		message: 'La foto es de formato jpg o png de máximo 1MB'
			           		}
			          }
			      }
				
			}
		});
	
	});

</script>


</body>

</html>
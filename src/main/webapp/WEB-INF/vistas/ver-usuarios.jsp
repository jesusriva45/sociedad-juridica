<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">    

<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>



 
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
<title>Usuarios</title>
</head>

<body class="d-flex">


	<jsp:include page="menu.jsp" />



	<div id="panel-list"
		class=" col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10 panel">

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

		<table id="id_table" class="table-sm idTable table-borderless  caption-top">
			<caption id="" class=" w-100">
                <div class="w-100 d-flex">
                    <h5 class="me-auto float-start">VER USUARIOS</h5>
                   
                </div>
              <div class="row col-12">   
              
              <div class="p-2 col-6">

                    <form class="d-flex justify-content-between">
                        <input type="search" class="w-100 m-2" id="txtfiltrar" placeholder="Ingrese un nombre">
                    </form>       

                </div>           
               
                  <div  class="col-3 d-flex ms-auto ">
                  <button id="btn-crud-crear" class="col-6 ms-auto btn-crud float-end justify-content-end" style="outline-style:none;">
                    <i   class="icon-crud icon-crear-event"></i> Crear
                    </button>  
                  <button id="id_btn_filtrar" class="col-6 ms-auto btn-crud float-end justify-content-end" style="outline-style:none;">
                    <i id="icon-filtrar" class="icon-crud "></i> Filtro
                    </button>
                 	               
                </div> 
             	
              
              </div>   
            </caption>         

		<thead class="border-thead">
				<tr>
					<th class="check"></th>
					<th>ID</th>
					<th>Nombre Completo</th>
					<th>DNI</th>
					<th>Email</th>
					<th>Fecha de Nacimiento</th>
					<th>Área</th>
					<th>Editar</th>
					<th>Eliminar</th>
					
				</tr>
			</thead>
			<tbody>
			
			</tbody>
		</table>
		
		
	</div>

	<div id="panel-reg-edit"
		class=" col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10 panel">

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

		<form id="form-edit" class="row col-12" method="post" enctype="multipart/form-data">

			<h3 id="accion_crud" class="col-12 d-flex justify-content-start m-4">REGISTRAR USUARIO
				</h3>

<input class="" id="idUsuario"
						name="idUsuario" placeholder="" hidden="true"/>


			<div class="form-group image-upload col-3 d-block text-center mt-5 ms-auto me-auto">
				<img id="foto_usuario" width=200px height=200px class="rounded-circle "
					src="Imagenes/photo-profile.jpeg" alt=""> <label
					for="file-input" class="w-100"> <svg
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" width="60.048"
						height="60.048" viewBox="0 0 1080 1080">
                        <image alt="Click aquÃ­ para subir tu foto"
							title="Click aquÃ­ para subir tu foto" x="73" y="220" width="936"
							height="640"
							xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAADQAAAAkCAYAAADGrhlwAAAEXElEQVRYhd2Ze4xeQxjGf1uS1m41kRXqVht3VsUlaVPRVoWWuMU1IqoV9Q/LH4h/xB+CVEo0ITRIio1U2qoq61YRiUupa6JIbInWWpruqq5YglKZ5jnN03HO+c75vvPZ8CRf8s6ZmTPznJl532fer+Wx7h5SMAlYm1YR4UlgdvRsN6Af2LdA/6px66iMF55UcKATU55dOEJkAjp3z6gYNvsb4A0r7wPMlL01pe91Zn8GfFzBRPNwhHZUwE9ZhPrNfh7osnJY1T9lD0f99gKmW/ksoK95XHbgEmCZ7O2BUKdYOk41O2yr8618jNkHARdY+TKz3/8XyAS0eyEQ+rRGhynAsxl1RwHPZNTdXd/8SmMXP5DlFBrFthyiTYWfoe+BryoY7Dfg3pEgQ0ToKeCmJo51AjADOA7YG/gZ6AXeBt4EfqliECc0pooXpmCeXPnxOW02A48DC4AfGhnMz9CPjbwoBSG4vgY8WoMMim23AOuB8xoZ1FdoKnA5MABsUizaUud7j9RWao+eh5i2DvgOGCcvGULEBNWHOLZKK/pQo4Sm6ZdgWAP3ieAg8ArwYo13jk0h84gcxfqMOVwLzAda9exB4GvgpUYIxWgDDtcvwQ3AxBqxa1lEJkTyp3PaBxd/P/Cctughev6Ctu1AGUJ+hoLLfhX4PGiinD5H59RNkdxJMCciE1bvUuBm4JpIoWwAJps+bAHuK0MmJrRCorNTe/owDXB2FJ9i/eZwdRDOS7eVLwa+BJYC92gbfgE8YG0Go+vIFXIYdRHa0+whkXhPZ6aIJtsvOoOuus8BlmdcK7oi4j3Rlr6owNg74YRactrtUeBdrrLX2kcYHW274DkXKZgmmB31X2L2jAJj70SVWs5V+IdmzxQp5DUnyqtNkyNIMM/sj8zev8wkqiQ01uwhs/32u0KkEiww+2CzvU1bmUlUSegPs11GfWv25KjPLLP9I4wz+/cyk8iLQ2Wxwdp77PIszCTFqSVSCbdZ3SqzO80eLDOPKlfoLbNPs4+1SW46QQi0K6UMEoSPsdjKruf8PNZEUULbCrRZZ9urVWIzQbCfyOjXKz33l8oHKPYlyFMZ/0BRtT06p85xh9l3AR1Wngucq2vCB5I210t5bLR2y83+RL/C8DMUkiFXSyV0KAi26zJ2YEFyIfrfDoxX+XWdm0SP9URnKsbDkk8JunLapsIJzYq8ThaGatSHROMa2R3ainOk1LMwQWTOtPqFUfAtTSgPw9qSq6OkYxreUeBM7jNhpV+W8A2B9F2pheDajwVOB66MVj5kmW4sSyYm1C+PMqDAtlFZ0z4922oJxlpYpI+wWLnugDP0q4Vwxq6qh0xMaGnFSZJurcZ8bcNaCIf/zsgplEazkyS9UssnS3En1+02pbs2K8O6Wh+0YTihqpMkjjXmKKqGS6tdCE2vx02WwHatyq86i6PkCMbIzru+5GFqFqFT9Psvo7VZue2Rwo7/h0LC4tD/AZktwMK/AYg22ha43FwEAAAAAElFTkSuQmCC" />
                      </svg>
				</label> <input id="file-input" type="file" name="foto"/> <label id="fichero"
					for="file-input" class="my-btn btn-danger"></label><br> <label>Subir
					máximo foto de 1MB</label><br>
			</div>
					
				
			<div class="col-sm-12 col-md-12 col-xl-3 col-lg-3 mt-auto mb-auto">
				<div class="form-group">
					<label>Nombre Completo</label> <input class="" id="idNombre"
						name="nombre" placeholder="" />
				</div>

				<div class="form-group  col-12">
					<label>Apellido Paterno</label> <input class="" id="idApePat"
						name="apellPaterno" placeholder="" />
				</div>

				<div class="form-group  col-12">
					<label>Apellido Materno</label> <input class="" id="idApeMat"
						name="apellMaterno" placeholder="" />
				</div>

				<div class="form-group  col-12">
					<label>Teléfono</label> <input class="" id="idTelf"
						name="telefono" placeholder="" />
				</div>

				<div class="form-group  col-12">
					<label>Dirección o Domicilio</label> <input class="" id="idDir"
						name="direccion" placeholder="" />
				</div>
			</div>

			<div class="col-sm-12 col-md-12 col-xl-3 col-lg-3 mt-auto mb-auto">
				<div class="form-group  col-12">
					<label>DNI</label> <input class="" id="idDni"
						name="dni" placeholder="" style="width:-125%"/>
				</div>

				<div class="form-group  col-12">
					<label>Fecha de Nacimiento</label> 
					<input type="date" class="form-control"
						id="idFechaNac" name="fechaNacimiento" />
				</div>
				
				<div class="form-group  col-12">
					<label>Email</label> <input class="" id="idCorreo"
						name="correo" placeholder="" />
				</div>
				
				<div class="form-group  col-12">
					<label>Contraseña</label> <input class="" id="idPassword"
						name="password" placeholder="" />
				</div>
				
				<div class="form-group  col-12">
					<label>Sexo</label> 
				<select class="w-100" name="sexo" id="idSexo">
					<option value=" " selected hidden="true">-- Seleccione Sexo --</option>
						<option value="HOMBRE">Hombre</option>
						<option value="MUJER">Mujer</option>
					</select>
				</div>

			</div>

			<div class="col-sm-12 col-md-12 col-xl-3 col-lg-3 mt-auto mb-auto">

			  <div class="form-group  col-12" >
					<label class="" for="idCargo">Cargo</label>
					<select id="idCargo" name="cargo" class='w-100'>
						<option value=" ">--Seleccione Cargo--</option>    
					</select>
			    </div>
			    
			      <div class="form-group  col-12" >
					<label class="" for="idArea">Area</label>
					<select id="idArea" name="area" class='w-100'>
						<option value=" ">--Seleccione Area--</option>    
					</select>
			    </div>
				
				  <div class="form-group  col-12" >
					<label class="" for="id_departamento">Departamento</label>
					<select id="idDepartamento" name="departamento" class='w-100'>
						<option value=" ">--Seleccione Departamento--</option>    
					</select>
			    </div>
			    
			    <div class="form-group  col-12" >
					<label class="" for="id_provincia">Provincia</label>
					<select id="idProvincia" name="provincia" class='w-100'>
						<option value=" ">--Seleccione Provincia--</option>    
					</select>
			    </div>
			    
			    <div class="form-group  col-12">
					<label class="" for="id_distrito">Distrito</label>
					<select id="idDistrito" name="ubigeo" class='w-100'>
						<option value=" ">--Seleccione Distrito--</option>    
					</select>
			    </div>


			</div>

			<div class="col-12 btn-submit just">
				<button type="button" id="id_cancelar" class="cancel btn m-4">Cancelar</button>
				<button id="id_registrar" type="submit" class="acept btn m-4">Aceptar</button>
			</div>
		</form>



	</div>




		

<script src="js/ver-usu.js"></script>
 <script src="js/global.js"></script>		
	<script type="text/javascript"
		src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>
		
		
		
		
		
	<script type="text/javascript">
	
	
	document.getElementById('file-input').addEventListener("change",function(e){
	    let reader=new FileReader();
	    reader.readAsDataURL(e.target.files[0]);
	    reader.onload=function(){    
	            let foto = document.getElementById('foto_usuario');	            
	            foto.setAttribute("src",reader.result);
	    }
	})
	
	
	
	//---------- AREA -------------------
	
		  $.ajax({
        type: "GET",
        url: "listaArea",
        success: function(response)
        {
        	$.each(response, function(index,item){
        		//console.log("option: "+option)
        		$("#idArea").append("<option value='"+ item.idArea +"'>"+ item.nombre+"</option>");
        	})
        }
});
	
	//-----------------------------------
	
	
	//----------- CARGO -----------------
	
	  $.ajax({
        type: "GET",
        url: "listaCargo",
        success: function(response)
        {
        	$.each(response, function(index,item){
        		//console.log("option: "+option)
        		$("#idCargo").append("<option value='"+ item.idCargo +"'>"+ item.descripcion+"</option>");
        	})
        }
});
	
	//-----------------------------------
	
	
	
	
	
	
    $.ajax({
        type: "GET",
        url: "listaDepartamentos",
        success: function(response)
        {
        	$.each(response, function(index,option){
        		//console.log("option: "+option)
        		$("#idDepartamento").append("<option value='"+ option +"'>"+ option+"</option>");
        	})
        }
});



//});



$("#idDepartamento").change(function(){
var var_dep = $("#idDepartamento").val();

$("#idProvincia").empty();
$("#idProvincia").append("<option value=' '>[Seleccione Provincia]</option>");

$("#idDistrito").empty();
$("#idDistrito").append("<option value=' '>[Seleccione Distrito]</option>");

$.getJSON("listaProvincias",{"departamento":var_dep}, function(data){
	$.each(data, function(i, item){
		$("#idProvincia").append("<option value='"+ item +"'>"+ item+"</option>");
	});
});
});

$("#idProvincia").change(function(){
var var_dep = $("#idDepartamento").val();
var var_pro = $("#idProvincia").val();

$("#idDistrito").empty();
$("#idDistrito").append("<option value=' '>[Seleccione Distrito]</option>");

$.getJSON("listaDistritos",{"departamento":var_dep,"provincia":var_pro}, function(data){
	$.each(data, function(i, item){
		$("#idDistrito").append("<option value='"+ item.idUbigeo +"'>"+ item.distrito+"</option>");
	});
});
});	
	
	
	
$("#id_registrar").click(function (e){ 
	e.preventDefault();
	var validator = $('#form-edit').data('bootstrapValidator');
	validator.validate();

	if (validator.isValid()){	
		
		  var formData=new FormData();		  
		  let foto = document.getElementById('foto_usuario');	            
	      var file =  foto.getAttribute("src");	
		  formData.append("foto", file);		  
		  formData.append("id_usuario", $("#idUsuario").val());
		  formData.append("nombre", $("#idNombre").val());
		  formData.append("apellidoPat", $("#idApePat").val());
		  formData.append("apellidoMat", $("#idApeMat").val());
		  formData.append("telefono", $("#idTelf").val());
		  formData.append("direccion", $("#idDir").val());
		  formData.append("dni", $("#idDni").val());
		  formData.append("fecha_nac", $("#idFechaNac").val());
		  formData.append("correo", $("#idCorreo").val());
		  formData.append("password", $("#idPassword").val());
		  formData.append("sexo", $("#idSexo").val());
		  formData.append("cargo", $("#idCargo").val());
		  formData.append("area", $("#idArea").val());
		  formData.append("ubigeo", $("#idDistrito").val());
		  
		  console.log($("#idApeMat").val());
		  
		  		$.ajax({
					type: 'POST',  					
					data: formData,					
			        contentType: false,
			        processData: false,
			        async: false,
					url: 'insertaActualizaUsuario',
					success: function(data){			
						$('#panel-reg-edit').css('display','none');
			            $('#panel-list').css('display','block');
						mostrarMensaje(data.MENSAJE);						
						limpiar();
						listar();
						validator.resetForm();
					},
					error: function(){
						mostrarMensaje(MSG_ERROR);
						
					}
				});
		 
		 return false;
	};
	return false;
});	





//--------------------- EDITAR USUARIO -----------------------------
// editar(idUsuario , nombre , apellPaterno  , apellMaterno , correo , telefono , direccion , dni , fechaNacimiento , password , idArea , idCargo , departamento, provincia, distrito);

function editar(idUsuario , nombre , apellPaterno  , apellMaterno , correo , telefono , direccion , dni , fechaNacimiento , sexo, password , area , cargo , departamento, provincia, distrito, foto){



	$('#accion_crud').text('Actualizar Usuario');
	
	
	document.getElementById('foto_usuario').setAttribute('src',foto);	
	
	
	$("#idUsuario").val(idUsuario);
	$("#idNombre").val(nombre);
	$("#idApePat").val(apellPaterno);
	$("#idApeMat").val(apellMaterno);
	$("#idCorreo").val(correo);
	$("#idTelf").val(telefono);
	$("#idDir").val(direccion);
	$("#idDni").val(dni);
	$("#idFechaNac").val(fechaNacimiento);
	$("#idSexo").val(sexo);
	$("#idPassword").val(password);

	
	$('#idCargo').val(cargo);
	$('#idArea').val(area);
	
	
	
	
	//para ubigeo
	$("#idProvincia").empty();
    $("#idDistrito").empty();

    $("#idProvincia").append("<option value=' ' >[Seleccione Provincia]</option>");
    $("#idDistrito").append("<option value=' ' >[Seleccione Distrito]</option>");

    //Seleccionar departamento
    $('#idDepartamento').val(departamento);
    
    $.getJSON("listaProvincias",{"departamento":departamento},function(data){
    $.each(data,function(i, obj){
       if(obj ==  provincia){
          $("#idProvincia").append("<option selected value='" + obj+ "'>"+obj+"</option>");
       }else{
          $("#idProvincia").append("<option value='" + obj+ "'>"+obj+"</option>");
       }
    });
    });

    $.getJSON("listaDistritos",{"departamento":departamento,"provincia":provincia},function(data){
    $.each(data,function(index,obj){
       if(obj.distrito ==  distrito){
		 $("#idDistrito").append("<option selected value='"+obj.idUbigeo+"'>"+obj.distrito+"</option>")
	  }else{
		 $("#idDistrito").append("<option value='"+obj.idUbigeo+"'>"+obj.distrito+"</option>")
       }
    });

    });
    
    $('#panel-reg-edit').css('display','block');
    $('#panel-list').css('display','none');
}

//-----------------------------------------------------------------------------


//------------- ELIMINAR USUARIO -----------------------

function eliminar(id){	
	mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
}

function accionEliminar(id){	
    $.ajax({
          type: "POST",
          url: "eliminaCrudUsuario", 
          data: {"id":id},
          success: function(data){
        	  agregarGrilla(data.lista);
        	  mostrarMensaje(data.MENSAJE);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
     });
}


//--------------------------------------------

//----------FILTRO DE USUARIO POR NOMBRE -----------------------

$(document).ready(function() {
	listar();
	$('#id_table').removeClass('dataTable');
	$("#id_table").removeAttr("style");
})



function listar(){
	
	 //$('#id_table').removeClass('dataTable');
	 
	$.getJSON("listaUsuario", function (listado){
		agregarGrilla(listado);
	});
	
}


function listarUsuarioPorFiltro(fil){	
	
	$.getJSON("consultaCrudUsuarios",{"filtro":fil}, function (lista){
		agregarGrilla(lista);
	});	
}
	
$("#id_btn_filtrar").click(function(){
	var fil=$("#txtfiltrar").val();
	listarUsuarioPorFiltro(fil)
});	

//------------------------------------------------------------

	//---------- LISTAR USUARIOS --------------------
	function agregarGrilla(lista){
	 $('#id_table').DataTable().clear();
	 $('#id_table').DataTable().destroy();
	 $('#id_table').DataTable({
		 data: lista,
			searching: false,
			ordering: true,
			processing: false,
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
				{data: "idUsuario"},
				{data: function(row, type, val, meta){						

					var nombresApellidos= row.nombre+" "+row.apellPaterno+" "+row.apellMaterno;

					return nombresApellidos;
				},className:'table-sm m-5 table-borderless  caption-top'},		
				{data: "dni"},
				{data: "correo"},				
				{data: "fechaNacimiento"},
				{data: "area.nombre"},
				{data: function(row, type, val, meta){						

					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idUsuario + '\',\'' + row.nombre +'\',\'' + row.apellPaterno  +'\',\'' + row.apellMaterno + '\',\'' + row.correo + '\',\'' +  row.telefono + '\',\'' +  row.direccion + '\',\''+  row.dni + '\',\''+  row.fechaNacimiento +'\',\''+  row.sexo + '\',\''+  row.password + '\',\''+  row.area.idArea + '\',\''+  row.cargo.idCargo + '\',\'' + row.ubigeo.departamento +'\',\''+ row.ubigeo.provincia + '\',\'' + row.ubigeo.distrito + '\',\'' + row.foto + '\')">Editar</button>';

					return salida;
				},className:'table-sm m-5 table-borderless  caption-top'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idUsuario + '\')">Eliminar</button>';
					return salida;
				},className:'table-sm m-5 table-borderless  caption-top'},													
			]                                     
	    });
	// $('#id_table').DataTable().columns.adjust().draw();
	 
	// $('#id_table').removeClass('dataTable');
	 $('#id_table').removeClass('dataTable');
	 
	 $("#id_table").removeAttr("style");
}
	
	//--------------------------------

	
	
	//------------- LIMPIAR CAMPOS ----------------
	
	$("#id_cancelar").click(function (){ limpiar()});
	
	
	function limpiar(){				

		
	$("#idUsuario").val(0);
	$("#idNombre").val('');
	$("#idApePat").val('');	
	$("#idApeMat").val('');
	$("#idTelf").val('');
	$("#idDir").val('');
	$("#idDni").val('');
	$("#idFechaNac").val(' ');
	$("#idCorreo").val(' ');
	$("#idPassword").val(' ');
	$("#idSexo").val(' ');
	$("#idCargo").val(' ');
	$("#idArea").val(' ');
	$("#idDepartamento").val(' ');
	$("#idProvincia").val(' ');
	$("#idDistrito").val(' ');
	$("#foto_usuario").attr('src','Imagenes/photo-profile.jpeg');
	
	
	
	
	
}
	
	//--------------------------------------------
	
	//---------------- VALIDACIONES ---------------------
	$(document).ready(function() {
	  

	
	$('#form-edit').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				idUsuario: {
					selector: '#idUsuario',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
						
					}
				},
				nombre: {
					selector: '#idNombre',
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
				apellPaterno: {
					selector: '#idApePat',
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
				apellMaterno: {
					selector: '#idApeMat',
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
				telefono: {
					selector: '#idTelf',
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
				direccion: {
					selector: '#idDir',
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
				dni: {
					selector: '#idDni',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
						stringLength: {
							min: 8,
							max: 8,
							message: 'Debe contener 8 digitos'
						},
					}
				},
				fechaNacimiento: {
					selector: '#idFechaNac',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},				
				correo: {
					selector: '#idCorreo',
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
				password: {
					selector: '#idPassword',
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
				sexo: {
					selector: '#idSexo',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},
				area: {
					selector: '#idArea',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},
				cargo: {
					selector: '#idCargo',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},
				departamento: {
					selector: '#idDepartamento',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},
				provincia: {
					selector: '#idProvincia',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},
				ubigeo: {
					selector: '#idDistrito',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},
				
				
				stock: {
					selector: '#id_stock',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
						regexp: {
							regexp: /^([1-9][0-9]+|[0-9])$/,
							message: 'Debe ser entero'
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
	//---------------------------------------------------	

		
		
	</script>

</body>

</html>
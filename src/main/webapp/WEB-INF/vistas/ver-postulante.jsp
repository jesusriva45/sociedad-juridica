<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/inicio.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
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



<title>Postulantes</title>






</head>

<body class="d-flex" style="overflow-x: hidden;">


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
                    <h5 class="me-auto float-start">POSTULANTES</h5>
                   
                </div>
              <div class="row col-12">              
                
                  <div  class="col-3 d-flex ms-auto ">
                  
                 <div class="col-md-8" >
					<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
				 </div>
                  
                  <button class="col-4 ms-auto btn-crud float-end justify-content-end" id="id_btn_filtrar">
                    <i id="icon-filtrar" class="icon-crud "></i> Filtro</button>
                 	               
                </div> 
             	
              
              </div>   
            </caption>         

		<thead class="border-thead">
				<tr>
					
					<th style="width: 10%">ID</th>
					<th style="width: 25%">Nombre Completo</th>
					<th style="width: 10%">Teléfono</th>
					<th style="width: 10%">DNI</th>
					<th style="width: 20%">Email</th>
					<th style="width: 5%">CV</th>
					<th style="width: 25%">Consolidado de Notas</th>
					<th style="width: 10%">Estado</th>		
					<th style="width: 10%">Editar</th>
				</tr>
			</thead>
			<tbody>
			
			
			
			
			
			<!--  
				<tr>
					<td>202172748355</td>
					<td>Nilton Jesus Rivadeneyra Llerena</td>
					<td>99999999</td>
					<td>8888888</td>
					<td>jesus@gmail.com</td>
					<td>cv.pdf</td>
					<td>notas.pdf</td>
					<td><button class="table-btn-crud"><i id="icon-editar" class="icon-crud"></i></button></td>
					<td><button class="table-btn-crud"><i id="icon-eliminar" class="icon-crud "></i></button></td>
				</tr>
				<tr>
					<td class="check"></td>
					<td>202172748356</td>
					<td>Gustavo Ramon Cortex</td>
					<td>99999999</td>
					<td>gustavo@gmail.com</td>
					<td>02-06-2021</td>
					<td>Sistemas</td>
					<td><button class="table-btn-crud"><i id="icon-editar" class="icon-crud"></i></button></td>
					<td><button class="table-btn-crud"><i id="icon-eliminar" class="icon-crud "></i></button></td>
				</tr>	
				-->		
			</tbody>
		</table>
	</div>


<!-- Estado del postulante -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Editar Estado del Postulante</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="padding-bottom:100px;">
      
      <form id="id_form_actualiza" action="">
      
      <input class="form-control" id="id_ID" name="idPostulante" type="hidden" maxlength="8"/>
      
      
      <div class="form-group col-md-12">
        <label class="control-label" for="id_estado">Estado</label>
					<select id="id_estado" name="estado" class='form-control'>
						<option value=" ">[Seleccione]</option>
						<!-- <option value="1">Activo</option> 
						<option value="0">Inactivo</option> -->
						<option value="0">Pendiente</option>
						<option value="1">Rechazado</option>
						<option value="2">Aceptado</option>
						     
					</select>
	  </div>
	  </form>
	  
	  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary" id="id_btn_actualiza">Actualizar</button>
      </div>
    </div>
  </div>
</div>
	
	
	
	
	
	
	
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>



<!-- listado de todos los datos a la tabla -->
<script type="text/javascript">
<!--
$(document).ready(function(){
	function listar(){
		$.getJSON("listaPostulante", function (listado){
			agregarGrilla(listado);
		});
		
	}
});
-->

window.onload=function listar(){
	$.getJSON("listaPostulante", function (listado){
		agregarGrilla(listado);
	});
	
}

$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val();
	$.getJSON("listaPostulantexNombre",{"filtro":fil}, function (lista){
		agregarGrilla(lista);
	});
});



$("#id_btn_actualiza").click(function(){
	var ide = $('#id_ID').val();
	var est = $('#id_estado').val();
	
        $.ajax({
          type: "POST",
          url: "actualizaEstadoPostulante", 
          data: {idPostulante:ide, estado: est},
          success: function(data){
        	  agregarGrilla(data.lista);
        	  $('#exampleModal').modal("hide");
        	  mostrarMensaje(data.mensaje);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
        
    
});


function editar(id,estado){	
	$('#id_ID').val(id);
	$('#id_estado').val(estado);
	$('#exampleModal').modal("show");
}





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
				{data: "idPostulante"},
				{data: "nombre"},
				{data: "telefono"},
				{data: "dni"},
				{data: "email"},
				{data: function(row, type, val, meta){
					console.log(row.cvPDF)
					var salida="<a href="+row.cvPDF+" download="+row.nameCvPDF+">"+row.nameCvPDF+"</a>";
					
				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
					return salida;
				},className:'table-sm m-5 table-borderless  caption-top'},	
				{data: function(row, type, val, meta){
					let nombre = row.nameConsolidadoNotaPDF;
					var salida="<a href="+row.consolidadoNotaPDF+" target='_blank' download='"+row.nameConsolidadoNotaPDF+"'>"+row.nameConsolidadoNotaPDF+"</a>";
					
				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
					return salida;
				},className:'table-sm m-5 table-borderless  caption-top'},	
				{data: "nombreEstado"},
				{data: function(row, type, val, meta){
					var salida='<button class="table-btn-crud" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="editar(\''+row.idPostulante + '\',\'' + row.estado +'\')" ><i id="icon-editar" class="icon-crud"></i></button>';
					
				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
					return salida;
				},className:'table-sm m-5 table-borderless  caption-top'},													
			]                                     
	    });
	 
	 
	 $('#id_table').removeClass('dataTable');
	 //$('#id_table').removeClass('dataTable');
	 
	 $("#id_table").removeAttr("style");
	 
	
	 
}


</script>


	<script>
		$(document).ready(function() {
			/*$('#idTable').DataTable({

				columnDefs : [ {
					orderable : false,
					className : 'select-checkbox',
					targets : 0
				} ],
				select : {
					style : 'os',
					selector : 'td:first-child'
				},
				order : [ [ 1, 'asc' ] ],

				"bPaginate" : false,
				"bLengthChange" : false,
				"bFilter" : true,
				"bInfo" : false,
				"bAutoWidth" : false,
				"searching" : false,
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
			}

			);*/
		});
	</script>

</body>

</html>
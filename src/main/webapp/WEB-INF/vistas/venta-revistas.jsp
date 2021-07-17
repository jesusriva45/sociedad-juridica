<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
    
<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>
	
    <!-- JavaScript Bundle with Popper -->

    
   

    
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />
	
	
	
	<link rel="stylesheet" href="css/bootstrap.min.css">  
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.jqueryui.min.css" />
    <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/rowreorder/1.2.7/css/rowReorder.jqueryui.min.css" />
<link rel="shortcut icon" href="Iconos/isotipo.5.png">




    <title>Venta de Revistas</title>
</head>

<body class="d-flex">


 <jsp:include page="menu.jsp" />


    <div id="panel-list" class=" col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10 panel">



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

      

		 <table  class="table-sm idTable table-borderless  caption-top" id="idTableEvent">
		<caption id="" class=" w-100">

                <div class="w-100 d-flex">
                    <h5 class="me-auto float-start">VENTA DE REVISTAS</h5>
                   
                </div>
              <div class="row col-12">
              
                <div class="p-2 col-6">

                    <form class="d-flex justify-content-between">
                        <input class="w-100 m-2" id="txtfiltrar" placeholder="Ingrese el nombre de la Revista" name="filtro">
                    </form>       

                </div>
                  <div  class="col-3 d-flex ms-auto ">
                  <button id="btn-crud-crear" class="col-6 ms-auto btn-crud float-end justify-content-end ">
                    <i  class="icon-crud icon-crear-event"></i> Crear
                    </button>  
                  <button class="col-6 ms-auto btn-crud float-end justify-content-end" id="btn_filtrar">
                    <i id="icon-filtrar" class="icon-crud "></i> Filtro
                    </button>
                 	               
                </div> 
             	
              
              </div>   
            </caption>

			<thead   class="border-thead ">
				<tr class="p-2">
					<th>ID</th>		
					<th class="pt-2 pb-2">Título</th>
					<th>Descripción</th><!-- no voy a listar a la descripcion por ser muy larga -->					
					<th>Precio Presencial</th>
					<th>Precio Virtual</th>
					<th>Autor</th>
					<th>Foto</th>
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
				<h5>Bienvenido a la familia de Sociedad Juridica</h5>
			</div>
			<div id="cabezera-usu" class="">
				<h5>${sessionScope.objUsuario.area.nombre }</h5>
                <div class="vl me-2 ms-2"></div>
                <h5>${sessionScope.objUsuario.cargo.descripcion }</h5>
			</div>
		</div>

		<form id="form-edit" class="row col-12" method="post">


			<h3 class="col-12 d-flex justify-content-start m-4">REGISTRAR REVISTA</h3>
			<br>
			
			<div class="form-group image-upload col-3 d-block text-center">
				<img id="foto_revista" width=200px height=200px 
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
					<input class="form-control" id="id_reg_titulo" name="titulo" />
				</div>

				<div class="form-group  offset-md-2 pb-3">
					<label>Autor</label> 
					<input class="form-control" id="id_reg_autor" name="autor" placeholder="" />
				</div>

				<div class="form-group  offset-md-2 pb-3">
					<label>Descripción</label> 
					<textarea class="form-control areaAltura" id="id_reg_descripcion" name="descripcion" ></textarea>
				</div>

				<div class="form-group col-md-4  offset-md-2 pb-3">
					<label>Precio Presencial</label> 
					<input class="form-control" id="id_reg_presencial" name="precioPresencial" placeholder="S/ 0.00" />
				</div>

				<div class="form-group col-md-4	 offset-md-2 pb-3">
					<label>Precio Virtual</label>
					 <input class="form-control" id="id_reg_virtual"	name="precioVirtual" placeholder="S/ 0.00" />
				</div>
			</div>
			

			<div class="col-12 btn-submit just">
				<button type="button" id="id_cancelar" class="cancel btn m-4">Cancelar</button>
				<button id="id_registrar" type="submit" class="acept btn m-4">Aceptar</button>
			</div>
		</form>



	</div>
	
	
	<!-- Panel de Actualizar  -->
	
	 <div id="panel-editar"
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

		<form id="form-editar" class="row col-12" method="post">

			<h3 class="col-12 d-flex justify-content-start m-4">ACTUALIZAR REVISTA</h3>
			<br>
			
			<div class="form-group image-upload col-3 d-block">
				<img id="fotito" width=200px height=200px 
					src="" alt=""> <label
					for="file-input-act" class="w-100"> <svg
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" width="60.048"
						height="60.048" viewBox="0 0 1080 1080">
                        <image alt="Click aquÃ­ para subir tu foto"
							title="Click aquÃ­ para subir tu foto" x="73" y="220" width="936"
							height="640"
							xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAADQAAAAkCAYAAADGrhlwAAAEXElEQVRYhd2Ze4xeQxjGf1uS1m41kRXqVht3VsUlaVPRVoWWuMU1IqoV9Q/LH4h/xB+CVEo0ITRIio1U2qoq61YRiUupa6JIbInWWpruqq5YglKZ5jnN03HO+c75vvPZ8CRf8s6ZmTPznJl532fer+Wx7h5SMAlYm1YR4UlgdvRsN6Af2LdA/6px66iMF55UcKATU55dOEJkAjp3z6gYNvsb4A0r7wPMlL01pe91Zn8GfFzBRPNwhHZUwE9ZhPrNfh7osnJY1T9lD0f99gKmW/ksoK95XHbgEmCZ7O2BUKdYOk41O2yr8618jNkHARdY+TKz3/8XyAS0eyEQ+rRGhynAsxl1RwHPZNTdXd/8SmMXP5DlFBrFthyiTYWfoe+BryoY7Dfg3pEgQ0ToKeCmJo51AjADOA7YG/gZ6AXeBt4EfqliECc0pooXpmCeXPnxOW02A48DC4AfGhnMz9CPjbwoBSG4vgY8WoMMim23AOuB8xoZ1FdoKnA5MABsUizaUud7j9RWao+eh5i2DvgOGCcvGULEBNWHOLZKK/pQo4Sm6ZdgWAP3ieAg8ArwYo13jk0h84gcxfqMOVwLzAda9exB4GvgpUYIxWgDDtcvwQ3AxBqxa1lEJkTyp3PaBxd/P/Cctughev6Ctu1AGUJ+hoLLfhX4PGiinD5H59RNkdxJMCciE1bvUuBm4JpIoWwAJps+bAHuK0MmJrRCorNTe/owDXB2FJ9i/eZwdRDOS7eVLwa+BJYC92gbfgE8YG0Go+vIFXIYdRHa0+whkXhPZ6aIJtsvOoOuus8BlmdcK7oi4j3Rlr6owNg74YRactrtUeBdrrLX2kcYHW274DkXKZgmmB31X2L2jAJj70SVWs5V+IdmzxQp5DUnyqtNkyNIMM/sj8zev8wkqiQ01uwhs/32u0KkEiww+2CzvU1bmUlUSegPs11GfWv25KjPLLP9I4wz+/cyk8iLQ2Wxwdp77PIszCTFqSVSCbdZ3SqzO80eLDOPKlfoLbNPs4+1SW46QQi0K6UMEoSPsdjKruf8PNZEUULbCrRZZ9urVWIzQbCfyOjXKz33l8oHKPYlyFMZ/0BRtT06p85xh9l3AR1Wngucq2vCB5I210t5bLR2y83+RL/C8DMUkiFXSyV0KAi26zJ2YEFyIfrfDoxX+XWdm0SP9URnKsbDkk8JunLapsIJzYq8ThaGatSHROMa2R3ainOk1LMwQWTOtPqFUfAtTSgPw9qSq6OkYxreUeBM7jNhpV+W8A2B9F2pheDajwVOB66MVj5kmW4sSyYm1C+PMqDAtlFZ0z4922oJxlpYpI+wWLnugDP0q4Vwxq6qh0xMaGnFSZJurcZ8bcNaCIf/zsgplEazkyS9UssnS3En1+02pbs2K8O6Wh+0YTihqpMkjjXmKKqGS6tdCE2vx02WwHatyq86i6PkCMbIzru+5GFqFqFT9Psvo7VZue2Rwo7/h0LC4tD/AZktwMK/AYg22ha43FwEAAAAAElFTkSuQmCC" />
                      </svg>
				</label> <input  class="form-control" id="file-input-act" type="file" name="foto"/> <label id="fichero_act"
					for="file-input-act" class="my-btn btn-danger"></label><br> <label>Subir
					maximo foto de 1MB</label><br>
			</div>





			<div class="col-sm-12 col-md-12 col-xl-8 col-lg-8 mb-auto " id="subir">
				<div class="form-group offset-md-2 pb-3">
					<label>Código de Revista</label> 
					<input class="form-control" id="id" name="idRevistas" disabled/>
				</div>
				
				<div class="form-group offset-md-2 pb-3">
					<label>Título</label> 
					<input class="form-control" id="id_act_titulo" name="titulo" />
				</div>

				<div class="form-group  offset-md-2 pb-3">
					<label>Autor</label> 
					<input class="form-control" id="id_act_autor" name="autor" placeholder="" />
				</div>

				<div class="form-group  offset-md-2 pb-3">
					<label>Descripción</label> 
					<textarea class="form-control areaAltura" id="id_act_descripcion" name="descripcion" ></textarea>
				</div>

				<div class="form-group col-md-4  offset-md-2 pb-3">
					<label>Precio Presencial</label> 
					<input class="form-control" id="id_act_presencial" name="precioPresencial" placeholder="S/ 0.00" />
				</div>

				<div class="form-group col-md-4	 offset-md-2 pb-3">
					<label>Precio Virtual</label>
					 <input class="form-control" id="id_act_virtual" name="precioVirtual" placeholder="S/ 0.00" />
				</div>
				
			</div>
			

			<div class="col-12 btn-submit just">
				<button type="button" id="id_cancelar_editar" class="cancel btn m-4">Cancelar</button>
				<button id="id_actualizar" type="submit" class="acept btn m-4">Actualizar</button>
			</div>
		</form>
		
	</div>
	
	



    <script type="text/javascript" src="js/ver-usu.js"></script>
   

	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>

	<script type="text/javascript">
	
	window.onload=function listar(){
		$.getJSON("listaRevistas", function (listado){
			agregarGrilla(listado);
			
			
			//------------ AQUI SE INSERTA LAS IMAGENES AL CARRUSEL---------------------------------
			
			$.each(listado, function(index,item){
				$("#grupo-botones-indicadores").append("<button type='button' class='boton-indicador' data-bs-target='#carouselExampleIndicators' data-bs-slide-to="+index+"></button>");
				
				
				$("#imagenes_carrusel").append("<div class='carousel-item' >"+
					      "<img src="+item.foto+" class='d-block' alt='' width='400px' height='300px'>"+
					      "<div class='carousel-caption d-none d-md-block text-dark'>"+
					       "<h5>"+item.titulo+"</h5>"+
					        "<p>Some representative placeholder content for the first slide.</p>"+
					      "</div>"+
					    "</div>");
			});	
			//----------------------------------------------------------------------------------------
			
			//----------- EL PRIMER ITEM DEL CARRUSEL DEBE ESTAR SIEMPRE CON CLASE ACTIVE -------------
			$('.carousel-item').eq(0).addClass('active');	
			$('.boton-indicador').eq(0).addClass('active');
			//-----------------------------------------------------------------------------------------
			
			
			
		});	
	}
	
	
	document.getElementById('file-input').addEventListener("change",function(e){
	    let reader=new FileReader();
	    reader.readAsDataURL(e.target.files[0]);
	    reader.onload=function(){    
	    	
	            let foto = document.getElementById('foto_revista');	            
	            foto.setAttribute("src",reader.result);
	    }
	    
	})
	
	
	document.getElementById('file-input-act').addEventListener("change",function(e){
	    let reader=new FileReader();
	    reader.readAsDataURL(e.target.files[0]);
	    reader.onload=function(){    
	    	
	            let fotoAc = document.getElementById('fotito');	            
	            fotoAc.setAttribute("src",reader.result);
	    }
	    
	})
	
	
	</script>	
		
	<script type="text/javascript">



function agregarGrilla(lista){
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
				{data: "idRevistas"},
				{data: "titulo"},
				{data: "descripcion"},
				{data: "precioPresencial"},
				{data: "precioVirtual"},
				{data: "autor"},
				{data: function(row, type, val, meta){
					
					var salida='<img width=70px height=70px src='+row.foto+'>';
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



//filtrar
$("#btn_filtrar").click(function(){
	var fil=$("#txtfiltrar").val();
	$.getJSON("consultaCrudRevistas",{"filtro":fil}, function (lista){
		agregarGrilla(lista);
	});
});



function eliminar(id){	
	mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
}

function accionEliminar(id){	
  $.ajax({
        type: "POST",
        url: "eliminaCrudRevista", 
        data: {"id":id},
        success: function(data){
      	  agregarGrilla(data.lista);
      	  mostrarMensaje(data.mensaje);
        },
        error: function(){
      	  mostrarMensaje(MSG_ERROR);
        }
   });
}

//

function editar(id,titulo,descripcion,precioPresencial,precioVirtual,autor,foto){	
	$('#id').val(id);
	$('#id_act_titulo').val(titulo);
	$('#id_act_descripcion').val(descripcion);
	$('#id_act_presencial').val(precioPresencial);
	$('#id_act_virtual').val(precioVirtual);
	$('#id_act_autor').val(autor);
	
	
	
	//$("#foto_revista").attr("src",foto);
	document.getElementById('fotito').setAttribute('src',foto);
	
	
	console.log(foto);
	
	
	
	$('#panel-editar').css("display", "block");
	$('#panel-list').css("display", "none");

}

//limpiar formulario
function limpiarFormulario(){	
	$('#id_reg_titulo').val('');
	$('#id_reg_descripcion').val('');
	$('#id_reg_autor').val('');
	$('#id_reg_presencial').val('');
	$('#id_reg_virtual').val('');
	$('#file-input').val('');
	$('#fichero').html('');
	$('#foto_revista').attr('src', 'Imagenes/no-image.png');
}


//registra

$("#id_registrar").click(function(e){
	e.preventDefault();
	var validator = $('#form-edit').data('bootstrapValidator');
  	validator.validate();
	
  if (validator.isValid()) {
	  
	  var formData=new FormData();
	  
	  //var file = $('#file-input')[0].files[0];
	  
	  
	  let foto = document.getElementById('foto_revista');	            
      var file =  foto.getAttribute("src");
	  
	  formData.append("foto", file);
	  formData.append("titulo", $("#id_reg_titulo").val());
	  formData.append("descripcion", $("#id_reg_descripcion").val());
	  formData.append("precioPresencial", $("#id_reg_presencial").val());
	  formData.append("precioVirtual", $("#id_reg_virtual").val());
	  formData.append("autor", $("#id_reg_autor").val());
	  
	  
	  
      $.ajax({
        type: "POST",
        url: "registraCrudRevista", 
        data: formData,
       // enctype: 'multipart/form-data',
        contentType: false,
        processData: false,
        cache: false,
        success: function(data){
      	  agregarGrilla(data.lista);
      	  $('#panel-reg-edit').css('display','none');
      	  $('#panel-list').css('display','block');
      	  mostrarMensaje(data.mensaje);
      	  limpiarFormulario();
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





$("#id_actualizar").click(function(e){
	e.preventDefault();
	
	var validator = $('#form-editar').data('bootstrapValidator');
  	validator.validate();
	
  if (validator.isValid()) {
	  
	  var formData=new FormData();
	  
	  //var file = $('#file-input')[0].files[0];
	  
	  
	  let foto = document.getElementById('fotito');	            
      var file =  foto.getAttribute("src");
	  
	  formData.append("idRevistas", $("#id").val());
	  formData.append("foto", file);
	  formData.append("titulo", $("#id_act_titulo").val());
	  formData.append("descripcion", $("#id_act_descripcion").val());
	  formData.append("precioPresencial", $("#id_act_presencial").val());
	  formData.append("precioVirtual", $("#id_act_virtual").val());
	  formData.append("autor", $("#id_act_autor").val());
	  
	  
	  
      $.ajax({
        type: "POST",
        url: "actualizaCrudRevista", 
        data: formData,
       // enctype: 'multipart/form-data',
        contentType: false,
        processData: false,
        cache: false,
        success: function(data){
      	  agregarGrilla(data.lista);
      	  $('#panel-editar').css('display','none');
      	  $('#panel-list').css('display','block');
      	  mostrarMensaje(data.mensaje);
      	  //limpiarFormulario();
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

//validaciones para el registrar

$('#form-edit').bootstrapValidator({
  message: 'This value is not valid',
  feedbackIcons: {
      valid: 'glyphicon glyphicon-ok',
      invalid: 'glyphicon glyphicon-remove',
      validating: 'glyphicon glyphicon-refresh'
  },
  fields: {
  	titulo: {
  		selector : '#id_reg_titulo',
          validators: {
              notEmpty: {
                  message: 'El título es un campo obligatorio'
              },
              stringLength :{
              	message:'El título es de 2 a 100 caracteres',
              	min : 2,
              	max : 100
              }
          }
      },
      
      autor: {
  		selector : '#id_reg_autor',
          validators: {
              notEmpty: {
                  message: 'El autor es un campo obligatorio'
              },
              stringLength :{
              	message:'El autor es de 2 a 100 caracteres',
              	min : 2,
              	max : 100
              }
          }
      },
      
      descripcion: {
  		selector : '#id_reg_descripcion',
          validators: {
              notEmpty: {
                  message: 'La descripción es un campo obligatorio'
              },
              stringLength :{
              	message:'La descripcion es de 3 a 300 caracteres',
              	min : 3,
              	max : 300
              }
          }
      },
      
      precioPresencial: {
  		selector : '#id_reg_presencial',
          validators: {
              notEmpty: {
                  message: 'El precio presencial es un campo obligatorio'
              },
              digits: {
           		message:"Ingrese solo números enteros"
         		},
          }
      },
      
      precioVirtual: {
  		selector : '#id_reg_virtual',
          validators: {
              notEmpty: {
                  message: 'el precio virtual es un campo obligatorio'
              },
              digits: {
             		message:"Ingrese solo números enteros"
           		},
          }
      },
      foto: {
  		selector : '#file-input',
          validators: {
              notEmpty: {
                  message: 'La foto es un campo obligatorio'
              },
              file: {
              	extension: 'png,jpg',
              	type: 'image/jpeg,image/png',
              	maxSize: 2*1024*1024,                	
             		message: 'La foto es de formato jpg o png de máximo 2MB'
           		}
          }
      }
    
     
  }   
});

//validaciones para el editar

$('#form-editar').bootstrapValidator({
  message: 'This value is not valid',
  feedbackIcons: {
      valid: 'glyphicon glyphicon-ok',
      invalid: 'glyphicon glyphicon-remove',
      validating: 'glyphicon glyphicon-refresh'
  },
  fields: {
  	titulo: {
  		selector : '#id_act_titulo',
          validators: {
              notEmpty: {
                  message: 'El título es un campo obligatorio'
              },
              stringLength :{
              	message:'El título es de 2 a 100 caracteres',
              	min : 2,
              	max : 100
              }
          }
      },
      
      autor: {
  		selector : '#id_act_autor',
          validators: {
              notEmpty: {
                  message: 'El autor es un campo obligatorio'
              },
              stringLength :{
              	message:'El autor es de 2 a 100 caracteres',
              	min : 2,
              	max : 100
              }
          }
      },
      
      descripcion: {
  		selector : '#id_act_descripcion',
          validators: {
              notEmpty: {
                  message: 'La descripción es un campo obligatorio'
              },
              stringLength :{
              	message:'La descripcion es de 3 a 300 caracteres',
              	min : 3,
              	max : 300
              }
          }
      },
      
      precioPresencial: {
  		selector : '#id_act_presencial',
          validators: {
              notEmpty: {
                  message: 'El precio presencial es un campo obligatorio'
              },
              digits: {
           		message:"Ingrese solo números enteros"
         		},
          }
      },
      
      precioVirtual: {
  		selector : '#id_act_virtual',
          validators: {
              notEmpty: {
                  message: 'el precio virtual es un campo obligatorio'
              },
              digits: {
             		message:"Ingrese solo números enteros"
           		},
          }
      },
      foto: {
  		selector : '#file-input-act',
          validators: {
              file: {
              	extension: 'png,jpg',
              	type: 'image/jpeg,image/png',
              	maxSize: 2*1024*1024,                	
             		message: 'La foto es de formato jpg o png de máximo 2MB'
           		}
          }
      }
    
     
  }   
});




</script>
 

</body>

</html>
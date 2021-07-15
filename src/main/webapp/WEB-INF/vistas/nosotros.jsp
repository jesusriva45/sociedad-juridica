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



    <title>Nosotros</title>
</head>

<body class="d-flex">


<jsp:include page="menu.jsp" />


    <div id="panel-list" class=" col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10 panel">



        <div id="cabezera" class="col-12 d-flex p-4">
            <div>
                <h5>Bienvenido a la familia de Sociedad Juridica</h5>
            </div>
            <div id="cabezera-usu" class="">
                <h5>ASOCIADO</h5>
                <div class="vl me-2 ms-2"></div>
                <h5>Maryori Alayo Torres</h5>
            </div>
        </div>

       

       <table  class="table-sm table-borderless caption-top idTable">
		<caption id="" class=" w-100">
                <div class="w-100 d-flex">
                    <h5 class="me-auto float-start">NOSOTROS</h5>
                   
                </div>
              <div class="row col-12">
              
                <div class="p-2 col-6">

                    <form class="d-flex justify-content-between">
                        <input placeholder="Buscar" type="search" class="w-100 m-2">
                    </form>       

                </div>
                  <div  class="col-3 d-flex ms-auto ">
                  <button class="col-6 ms-auto btn-crud float-end justify-content-end ">
                    <i  class="icon-crud icon-crear-event"></i> Crear
                    </button>  
                  <button class="col-6 ms-auto btn-crud float-end justify-content-end">
                    <i id="icon-filtrar" class="icon-crud "></i> Filtro
                    </button>
                 	               
                </div> 
             	
              
              </div>   
            </caption>

			<thead class="border-thead ">
				<tr class="p-2">
					<th class="check"></th>
					<th class="pt-2 pb-2">Nombre completo</th>
					<th>Descripción</th>					
					<th>Imagen</th>
					<th>Área</th>
					<th></th>
				</tr>
			</thead>
			<tbody >
				<tr>
					<td class="check"></td>
					<td >Nilton Jesus Rivadeneyra Llerena</td>				
					<td>MMMMMMMMMMMMMMMMMMMMMMMM</td>
					<td>Foto.jpg</td>
					<td>Consejo consultivo</td>
					<td class="pt-2 pb-2">
					<button class="table-btn-crud"><i id="icon-editar" class="icon-crud"></i></button>
					<button class="table-btn-crud"><i id="icon-eliminar" class="icon-crud"></i></button>
					</td>
				</tr>
				
				<tr>
					<td class="check"></td>
					<td >Nilton Jesus Rivadeneyra Llerena</td>				
					<td>MMMMMMMMMMMMMMMMMMMMMMMM</td>
					<td>Foto.jpg</td>
					<td>Consejo consultivo</td>
					<td class="pt-2 pb-2">
					<button class="table-btn-crud"><i id="icon-editar" class="icon-crud"></i></button>
					<button class="table-btn-crud"><i id="icon-eliminar" class="icon-crud"></i></button>
					</td>
				</tr>
				
				<tr>
					<td class="check"></td>
					<td >Nilton Jesus Rivadeneyra Llerena</td>				
					<td>MMMMMMMMMMMMMMMMMMMMMMMM</td>
					<td>Foto.jpg</td>
					<td>Consejo consultivo</td>
					<td class="pt-2 pb-2">
					<button class="table-btn-crud"><i id="icon-editar" class="icon-crud"></i></button>
					<button class="table-btn-crud"><i id="icon-eliminar" class="icon-crud"></i></button>
					</td>
				</tr>
				
				
			</tbody>
		</table>

       

       

    </div>

    <div id="panel-reg-edit" class=" col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10 panel">

        <div id="cabezera" class="col-12 d-flex p-4">
            <div>
                <h5>Bienvenido a la familia de Sociedad Juridica</h5>
            </div>
            <div id="cabezera-usu" class="">
                <h5>ASOCIADO</h5>
                <div class="vl me-2 ms-2"></div>
                <h5>Maryori Alayo Torres</h5>
            </div>
        </div>

        <form id="form-edit">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>



    </div>













    <script type="text/javascript" src="js/ven-revistas.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>


    <script>
        $(document).ready(function() {
            $('#idTable-rev').DataTable({

                    columnDefs: [{
                        orderable: false,
                        className: 'select-checkbox',
                        targets: 0
                    }],
                    select: {
                        style: 'os',
                        selector: 'td:first-child'
                    },
                    order: [
                        [1, 'asc']
                    ],

                    "bPaginate": false,
                    "bLengthChange": false,
                    "bFilter": true,
                    "bInfo": false,
                    "bAutoWidth": false,
                    "searching": false,
                    "ordering": false
                }

            );
        });
    </script>

</body>

</html>
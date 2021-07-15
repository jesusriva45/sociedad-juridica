<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/inicio.css" rel="stylesheet">
    <link href="css/typography.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="shortcut icon" href="Iconos/isotipo.5.png">
    
    <title>Inicio</title>
</head>

<body class="d-flex">
	
	<jsp:include page="menu.jsp" />
	

 

   <div id="trabajador" class="d-flex col-lg-9 col-md-8  col-7 col-sm-6 col-xl-9 col-xxl-10">
        <figure class="me-auto ms-auto text-center">
            <h3 class="mb-4">Bienvenido(a) ${sessionScope.objUsuario.nombre} ${sessionScope.objUsuario.apellPaterno}</h3>
            <img style="width:50vw;height:60vh" src="Imagenes/300x300px.png" alt="">

            <h3 class="p-4 mt-4">${sessionScope.objUsuario.cargo.descripcion } de ${sessionScope.objUsuario.area.nombre }</h3>
        </figure>
    </div>




</body>




</html>
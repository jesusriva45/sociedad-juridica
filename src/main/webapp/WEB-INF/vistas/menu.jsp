<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<html lang="en">

<head> 
	<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	 <script src="js/global.js"></script>
	 <script src="js/bootstrap.min.js"></script>
	 
   
      
  	<link rel="stylesheet" href="css/inicio.css" >
  	<link rel="stylesheet" href="css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">

    <link rel="shortcut icon" href="Iconos/isotipo.5.png">
    <!-- link rel="stylesheet" href="css/tipografias.css"-->
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
    <link rel="stylesheet" href="css/bootstrapValidator.css"/>
    
    <title>Inicio</title>
</head>

<body class="d-flex">


    <nav class="navbar col-lg-3 col-md-4  col-5 col-sm-6 col-xl-3 col-xxl-2 align-content-start" id="menu-hori">

        <div class="container justify-content-center col-md-12 ">
            <a class="navbar-brand" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="100.008" height="100.008" viewBox="0 0 1080 1080">
                    <image x="305" y="64" width="470" height="952" xlink:href="data:img/png;base64,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"/>
                  </svg>
            </a>
            <h3 class="text-white">Sociedad Juridica</h3>
        </div>




		        				
		        			
        <ul class="nav navbar-nav ms-5">
   
        
         	<c:forEach var="x" items="${sessionScope.objMenus}">   
         	        			
		      
		        
					<li class="nav-item  ${ruta == x.ruta ? 'select-menu-opcion' : ''}">
					
		        			<a class="nav-link d-inline-flex"  href="${x.ruta}">
		        				
		        				<i class="icons" id="${x.icon}"></i> <p>${x.nombre}</p>
		        			</a>
		        		</li>
	        		
	        	</c:forEach>
     

            <li class="nav-item">
                <a class="nav-link d-inline-flex" href="verLogin"><i class="icons" id="icon-salir"></i> <p>Salir</p> </a>
            </li>
        </ul>
    </nav>
 
 	

 

</body>

 <!-- script>
        // Add active class to the current button (highlight it)
        // var header = document.getElementById("myDIV");
        var btns = document.getElementsByClassName("nav-item");
        for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener("click", function() {
            	console.log("active")
                var current = document.getElementsByClassName("active");
                current[0].className = current[0].className.replace(" active", "");
                this.className += " active";
            });
        }
    </script-->


</html>

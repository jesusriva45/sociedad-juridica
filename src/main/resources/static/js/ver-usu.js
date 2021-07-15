//var hijo = document.getElementById("icon-editar");

//hijo.parentElement.setAttribute('style', 'display:block'); 

let idUser = document.getElementById("idUsuario");

let panCrud = document.getElementById("panel-list");
let panRegEdit = document.getElementById("panel-reg-edit");

//
let panEditar = document.getElementById("panel-editar");


//------------ ACCION CRUD --------------

let accion_crud_usuario = document.getElementById('accion_crud');

//----------------------------------------

// --------------------- BOTONES DE TABLE CAPTION ----------------
let btnCrudCancel = document.getElementById("btn-crud-cancelar");
let btnCrudAceptar = document.getElementById("btn-crud-aceptar");
let btnCrudCrear = document.getElementById("btn-crud-crear");

let btnCrudActualizar = document.getElementById("btn-actualizar");

let btnCrudEditar = document.getElementById("btn-crud-editar");
let btnCrudEliminar = document.getElementById("btn-crud-eliminar");
let btnCrudFiltrar = document.getElementById("btn-crud-filtrar");

let btnCancelar = document.getElementById("id_cancelar");

//gustavo
let btnCancelarEditar = document.getElementById("id_cancelar_editar");
//
//----------------------------------------------------------------

let fotoFile = document.getElementById('file-input');
let fotoFileEdit = document.getElementById('file-input-act');

//---------------------------------------------------------------


/*fotoFileEdit.onchange = function(){
 
 	if(fotoFileEdit.selectedIndex !== 0){
 	document.getElementById('fichero_act').innerHTML = document.getElementById('file-input-act').files[0].name;
 	}
 
}*/

fotoFile.addEventListener('change', function() {
    document.getElementById('fichero').innerHTML = document.getElementById('file-input').files[0].name;
});


//nombre foto editar
if(fotoFileEdit != null){
	fotoFileEdit.addEventListener('change', function(e) {
		e.preventDefault();	
  		document.getElementById('fichero_act').innerHTML = document.getElementById('file-input-act').files[0].name;
	},false);
}else{

}


var btnCrud = document.getElementsByClassName("btn-crud");

var check = document.getElementsByClassName("check");


function checkNone(str) {
    for (let index = 0; index < check.length; index++) {
        check[index].style.display = str;
    }
}


let clickEdit = 0;
let clickCancel = false;

if(btnCrudCrear){
btnCrudCrear.addEventListener("click", function(e) {	

    panCrud.style.display = "none";
    panRegEdit.style.display = "block";
    idUser.setAttribute("value",0);
    accion_crud_usuario.innerHTML = 'Registrar Usuario';
    
    var validator = $('#form-edit').data('bootstrapValidator');
	validator.resetForm();  

})
}

//
/*
btnCrudActualizar.addEventListener("click", function(e) {

    panCrud.style.display = "none";
    panEditar.style.display = "block";

})

*/
//
btnCancelar.addEventListener("click", function(e) {

	var validator = $('#form-edit').data('bootstrapValidator');
	validator.resetForm(); 
	
    panCrud.style.display = "block";
    panRegEdit.style.display = "none";
    
    limpiarFormulario();

})


btnCancelarEditar.addEventListener("click", function(e) {

	var validacion = $('#form-editar').data('bootstrapValidator');
	validacion.resetForm();  
    panCrud.style.display = "block";
    panEditar.style.display = "none";
    
    

})


/*btnCrudCancel.addEventListener("click", function(e) {

    for (let i = 0; i < btnCrud.length; i++) {
        btnCrudCrear.style.display = "inline-flex";
        btnCrudEliminar.style.display = "inline-flex";
        btnCrudEditar.style.display = "inline-flex";
        btnCrudAceptar.style.display = "none"
        btnCrudCancel.style.display = "none";
        checkNone("none");
    }

    clickEdit = 0;
    return clickEdit;
})*/


/*btnCrudEliminar.addEventListener("click", function(evt) {


    if (clickEdit === 0) {
        btnCrudCrear.style.display = "none";
        btnCrudEliminar.style.display = "none";
        btnCrudEditar.style.display = "none";
        btnCrudAceptar.style.display = "inline-flex"
        btnCrudCancel.style.display = "inline-flex";
        clickEdit++;
        console.log(clickEdit);
        checkNone("table-cell")
        return clickEdit;
    }

    if (clickEdit === 1) {
        console.log(clickEdit);
        panCrud.style.display = "none";
        panEdit.style.display = "block";
        clickEdit = 0;
        return clickEdit;
    }

});*/



/*btnCrudEditar.addEventListener("click", function(evt) {
    //var btn = evt.target;
    //this.style.display = "none";

    if (clickEdit === 0) {
        btnCrudCrear.style.display = "none";
        btnCrudEliminar.style.display = "none";
        btnCrudCancel.style.display = "inline-flex";
        clickEdit++;
        console.log(clickEdit);
        checkNone("table-cell")
        return clickEdit;
    }

    if (clickEdit === 1) {
        console.log(clickEdit);
        panCrud.style.display = "none";
        panRegEdit.style.display = "block";
        clickEdit = 0;
        return clickEdit;
    }

});*/
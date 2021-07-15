document.getElementById('idCV').onchange = function() {
    console.log(this.value);
   document.getElementById('cv').setAttribute("value",document.getElementById('idCV').files[0].name);
}

document.getElementById('idNotas').onchange = function() {
    console.log(this.value);
   document.getElementById('notas').setAttribute("value",document.getElementById('idNotas').files[0].name);
}





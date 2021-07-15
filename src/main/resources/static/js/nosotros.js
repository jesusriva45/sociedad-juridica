// -------------- PUBLICAR REVISTA ----------------------------
var panList = document.getElementById("panel-list");
var panEdit = document.getElementById("panel-edit");

var btnPubRev = document.getElementById("btn-crud-pub-rev");

//btnPubRev.onclick = genera_fila;
btnPubRev.onclick = publicar_revista;
window.onload = genera_fila;


function publicar_revista() {

    panList.style.display = "none";
    panEdit.style.display = "block";

}



function genera_fila() {


    let fila = document.getElementById("tbody-revista");



    fila.innerHTML += ` <tr>
    <td class="check"></td>
    <td>Wick</td>
    <td>Otto</td>
    <td>@mdo</td>
    <td>asdasd</td>
    <td><button class="btn-rev-edit">Editar</button></td>
</tr>`;
}
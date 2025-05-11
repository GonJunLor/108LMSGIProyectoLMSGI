let contenedor = document.getElementById("contenido");
document.getElementById("boton").addEventListener("click", cargarLista);

function cargarLista() {
    fetch("Archivo 01.json")
  .then(response => response.json()) // Convertir la respuesta a JSON
  .then(personas => { // Manejar los datos JSON
    
    //console.log(personas); // Mostrar los datos en la consola   

    contenedor.innerHTML = ""; // Limpiar el contenedor antes de agregar nuevos elementos
    /*
    for (let i = 0; i < personas.length; i++) {
        contenedor.innerHTML += `<li><span class="clave">Nombre: </span>${personas[i].Nombre} - `
    + `<span class="clave">Edad: </span>: ${personas[i].Edad} `
    + `<button onclick="borrar(this)">Borrar</button> </li>`;   // Mostrar los datos en el contenedor
    }
    */
   
    personas.forEach(e => {
        contenedor.innerHTML += `<li><span class="clave">Nombre: </span>${e.Nombre} - `
    + `<span class="clave">Edad: </span>: ${e.Edad} `
    + `<button onclick="borrar(this)">Borrar</button> </li>`;
    });
    

  })
  .catch(error => console.error('Error:', error)); // Manejar errores en caso de que la solicitud falle
}

function borrar(boton) {
    // borrar el elemento de la lista
    let li = boton.parentNode; // Obtener el elemento padre (li) del botón
    li.parentNode.removeChild(li); // Eliminar el elemento li del DOM
}
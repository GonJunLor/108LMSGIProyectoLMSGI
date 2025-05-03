let contenedor = document.getElementById("contenido");

fetch("Archivo 01.json")
  .then(response => response.json()) // Convertir la respuesta a JSON
  .then(comments => { // Manejar los datos JSON
    
    console.log(comments); // Mostrar los datos en la consola   

    contenedor.innerHTML = `<span class="clave">Nombre: </span>${comments.Nombre} `
    + `<span class="clave">Edad: </span>: ${comments.Edad}`;   // Mostrar los datos en el contenedor

  })
  .catch(error => console.error('Error:', error)); // Manejar errores en caso de que la solicitud falle



function mostrarDescripcion(id) {

    let nombres = {
    1: "ARIES",
    2: "TAURO",
    3: "GEMINIS",
    4: "CANCER",
    5: "LEO",
    6: "VIRGO",
    7: "LIBRA",
    8: "ESCORPIO",
    9: "SAGISTARIO",
    10: "CAPRICORNIO",
    11: "ACUARIO",
    12: "PISCIS"
};
    console.log("hola" + id + nombres[id])
    //et parrafo = document.getElementsByClassName("parrafo")
    let parrafo = document.getElementById("descripcion"+id)
    let caja = document.getElementById("cajaDescripcion"+id)
    

    fetch("./webroot/json/"+nombres[id]+"/horoscopo.json")
  .then(response => response.json()) // Convertir la respuesta a JSON
  .then(personas => { // Manejar los datos JSON
    
    //console.log(caja.style.display=="none")
   
    // Intento de mostrar y ocultar los parrafos
    if (parrafo) {
        parrafo.innerHTML = personas.horoscope.sign.message;
        caja.style.display="block";
        
    } else {
        parrafo.innerHTML="";
        caja.style.display="none";
    }
    
    

  })
  .catch(error => console.error('Error:', error)); // Manejar errores en caso de que la solicitud falle
    
}
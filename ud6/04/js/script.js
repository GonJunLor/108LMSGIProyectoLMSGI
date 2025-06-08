let contenedor = document.getElementById("contenido");
let indice = document.getElementById("indice");
let numConsultasMostrar = 9;

/* 
Definimos un objeto con las extensiones de los archivos y el número 
de ejercicio al que corresponde la extension menos txt.
*/
let extensiones = {
    1: "txt",
    4: "txt"
};

function cargarConsultas() {
    for (let i = 1; i < numConsultasMostrar+1; i++) {
        let extension = extensiones[i] || "xml";// Si no hay extensión definida, usamos "xml"

        indice.innerHTML += `
            <li>
                <a href="#ej${i-1}">${i}</a>
            </li>`

        contenedor.innerHTML += `
            <li id="ej${i}">
                <div>
                    <h2>Ejercicio ${i}</h2>
                    <a href="src/${i}.xq">Consulta</a>
                    <a href="target/${i}.${extension}">Resultado</a>
                    <a href="#ej0">Volver</a>
                </div>
                <a href="webroot/images/${i}c.png">
                    <img src="webroot/images/${i}c.png" alt="Consulta ${i}">
                </a>
                <a href="webroot/images/${i}r.png">
                    <img src="webroot/images/${i}r.png" alt="Resultado ${i}"> 
                </a>
            </li>`
    
        // Mostrar en consola el número de consulta
        console.log(`Consulta: ${i}`);
    }
}

cargarConsultas()  
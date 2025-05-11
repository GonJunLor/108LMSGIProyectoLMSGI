let contenedor = document.getElementById("contenido");
let numConsultasMostrar = 28;

/* 
Definimos un objeto con las extensiones de los archivos y el número 
de ejercicio al que corresponde la extension menos txt.
*/
let extensiones = {
    3: "html",
    4: "xml",
    5: "html",
    7: "xml",
    8: "html",
    10: "xml",
    28: "html"
};

async function cargarConsultas() {
    for (let i = 1; i < numConsultasMostrar+1; i++) {
        let extension = extensiones[i] || "txt";// Si no hay extensión definida, usamos "txt"

        contenedor.innerHTML += `
            <li>
                <div>
                    <h2>Ejercicio ${i}</h2>
                    <a href="src/${i}.xq">Consulta</a>
                    <a href="target/${i}.${extension}">Resultado</a>
                </div>
                <a href="webroot/images/${i}c.png" target="_blank">
                    <img src="webroot/images/${i}c.png" alt="Consulta ${i}">
                </a>
                <a href="webroot/images/${i}r.png" target="_blank">
                    <img src="webroot/images/${i}r.png" alt="Resultado ${i}"> 
                </a>
            </li>`
    
        // Mostrar en consola el número de consulta
        console.log(`Consulta: ${i}`);
    }
}

cargarConsultas()  
let contenedor = document.getElementById("contenido");
let numConsultasMostrar = 5;


function cargarConsultas() {
    for (let i = 1; i < numConsultasMostrar+1; i++) {

        contenedor.innerHTML += `
            <li id="ej${i}">
                <div>
                    <h2>Ejercicio ${i}</h2>
                    <a href="src/${i}.xq">Consulta</a>
                    <a href="target/${i}.txt">Resultado</a>
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
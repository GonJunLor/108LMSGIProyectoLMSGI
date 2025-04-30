const contenedor = document.getElementById('tablero');
contenedor.innerHTML = '<div><img src="images/B.jpg" onclick="cambiarImagen(this)"/>'
+'<img src="images/B.jpg" onclick="cambiarImagen(this)"/>'
+'<img src="images/B.jpg" onclick="cambiarImagen(this)"/></div>'
+'<div><img src="images/B.jpg" onclick="cambiarImagen(this)"/>'
+'<img src="images/B.jpg" onclick="cambiarImagen(this)"/>'
+'<img src="images/B.jpg" onclick="cambiarImagen(this)"/></div>';

function cambiarImagen(imagen) {
    const imagenes = [ 'https://picsum.photos/200?random=1', 
        'https://picsum.photos/200?random=2', 
        'https://picsum.photos/200?random=3', 
        'https://picsum.photos/200?random=4', 
        'https://picsum.photos/200?random=5', 
        'https://picsum.photos/200?random=6', 
        'https://picsum.photos/200?random=7', 
        'https://picsum.photos/200?random=8' 
    ];
    imagen.src = imagenes[Math.floor(Math.random() * imagenes.length)];
}
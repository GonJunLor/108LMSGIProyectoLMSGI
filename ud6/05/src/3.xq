(:3. Mostrar el nombre y email de los profesores que imparten el curso "Bases de Datos OR":)

let $id := collection("academia")/curso[nombre="Bases de Datos OR"]/profesor/@idref

for $x in collection("academia")/profesor
where $x/@id=$id
return (data($x/nombre),data($x/email))
(:2. Qué cursos imparten/o han impartido clases en el "Aula 1":)
let $id := collection("academia")/aula[nombre="Aula 1"]/@id

for $x in collection("academia")/curso
where $x/aula/@idref=$id
return $x/nombre/text()
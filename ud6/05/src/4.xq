(:4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33856315:)
let $bbdd := collection("academia")

let $id := $bbdd/profesor[dni="33856315"]/@id

for $x in $bbdd/curso
where $x/@id=$id
return data($x/nombre)
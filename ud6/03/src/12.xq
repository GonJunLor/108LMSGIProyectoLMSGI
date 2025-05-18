(:12.Mostrar los años de publicación, primero con for y luego con let. Etiquetar la salida con publicación:)
declare option output:indent "yes"; 

(:
<publicacion>
{
  for $x in /bookstore/book
  return $x/year
}
</publicacion>
:)

<publicacion>
{
  let $years := /bookstore/book/year
  return $years 
}
</publicacion>


   




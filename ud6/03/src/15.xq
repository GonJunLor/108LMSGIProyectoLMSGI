(:15.Mostrar los títulos de los libros y al final una etiqueta con el número total de libros:)
<libros>
declare option output:indent "yes"; 
{
  let $x := 
    for $z in /bookstore/book
    return <book>{$z/title/text()}</book>
  , $y:=<total>{count($x)}</total>
  return ($x,$y)
}
</libros>

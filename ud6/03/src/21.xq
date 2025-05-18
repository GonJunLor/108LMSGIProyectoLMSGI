(:21.Mostrar en la misma etiqueta el título y entre paréntesis el número 
de autores que tiene ese título:)
declare option output:indent "yes"; 
<libros>
{
  for $x in /bookstore/book
  return <libro>
  <titulo>{$x/title/text()}({count($x/author)})</titulo>
  </libro>
}
</libros>

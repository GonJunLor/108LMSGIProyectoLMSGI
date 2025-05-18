(:26.Mostrar todos los años en los que se ha publicado un libro eliminando 
los repetidos. Etiquétanos con "año".:)
declare option output:indent "yes"; 
<años_publicación>
{
  for $x in distinct-values(/bookstore/book/year/text())
  order by $x descending
  return
    <año>{$x}</año>
}
</años_publicación>
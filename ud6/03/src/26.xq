(:26.Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétanos con "año".:)
declare option output:indent "yes"; 
<anyos_publicacion>
{
  for $x in distinct-values(/bookstore/book/year)
  order by $x descending
  return
    <anyo>{$x}</anyo>
}
</anyos_publicacion>
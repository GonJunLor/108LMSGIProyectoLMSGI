(:22.Mostrar los libros escritos en años que terminan en “3”:)
<books>
declare option output:indent "yes"; 
{
  let $x:= /bookstore/book[ends-with(year,"3")]
  return $x
}
</books>
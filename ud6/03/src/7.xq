(:07. Uso de at, for variable1 at variable2 expresiónXpath, siendo la segunda variable la posición de cada nodo. Genera el siguiente archivo XML (07.xml),:)
declare option output:indent "yes"; 
<books>
{
  for $x at $y in /bookstore/book
  return <book>
    {$y}.{$x/title/text()}
  </book>
}
</books>

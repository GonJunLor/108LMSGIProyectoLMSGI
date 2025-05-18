(:17.Mostrar el título del libro, su precio y su precio con el IVA incluido, 
cada uno con su propia etiqueta.
Ordenado de precio con IVA (4% en España):)
declare option output:indent "yes"; 

<libros>
{
 for $x in /bookstore/book
 let $iva:=$x/price/text()*1.04
 order by $iva
 return 
    <libro>
    <titulo>{$x/title/text()}</titulo>
    <precio>{$x/price/text()}$</precio>
    <importe>{format-number($iva,'#.00')}$</importe>
    </libro>  
}
</libros>
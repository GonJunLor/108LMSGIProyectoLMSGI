(:18.Mostrar la suma total de los precios con la etiqueta total:)
let $x:=/bookstore/book/price
return <total>{format-number(sum($x),'#.00')}$</total>
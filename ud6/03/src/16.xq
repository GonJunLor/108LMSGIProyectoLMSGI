(:16.Mostrar el precio mínimo y el máximo de los libros:)
let $x:=bookstore/book/price
return concat("Máximo: ",max($x), "$&#10;Minimo: ", min($x), "$")

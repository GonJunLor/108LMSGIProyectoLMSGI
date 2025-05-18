(:23.Mostrar los libros cuya categoría empiece por C:)
let $x:= /bookstore/book[starts-with(@category,"c")]/title/text()
return $x
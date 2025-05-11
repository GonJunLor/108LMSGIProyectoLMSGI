(:04.Crea un documento XML(04.xml) clasificación de los libros según categoría, donde el elemento
raíz es libros. Y si la categoría del libro es children el título aparece entre las etiquetas <children>
y en caso contrario aparece con la etiqueta <adult>.:)
declare option output:indent "yes"; 

<libros>
    {
      for $x in /bookstore/book
      
      return if ($x [@category="children"]){
        <children>{$x /title/text()}</children>
      } else {
        <adult>{$x /title/text()}</adult>
      }
    }
</libros>
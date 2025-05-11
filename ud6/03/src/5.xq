(:05.Crea una página web (05.html), que contenga todos los libros con su categoría, en la lista aparece distintos colores el título en función de la categoría.:)
declare option output:indent "yes"; 
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style><![CDATA[
        .cooking { color: #FF5733; } /* Naranja */
        .children { color: #FFBD33; } /* Amarillo */
        .web { color: #337AFF; } /* Azul */
        .programming { color: #33FF57; } /* Verde */
        .science { color: #9D33FF; } /* Morado */
        .fiction { color: #FF3380; } /* Rojo oscuro */
        .self-help { color: #33FFC1; } /* Verde agua */
        .history { color: #A67C52; } /* Marrón */
        .biography { color: #FFD700; } /* Dorado */
        .finance { color: #32CD32; } /* Verde lima */
        .fantasy { color: #4B0082; } /* Índigo */
        ]]>
    </style>
    <title>UD6-3.5 Libros-Categoría. Gonzalo Junquera Lorenzo</title>
</head>
<body>
    <h1>Bookstore</h1>
    <table>
        <tr>
            <th>Título</th>
            <th>Categoría</th>
        </tr>
        {
            for $x in /bookstore/book
            return <tr>
                <td>{$x/title/text()}</td>
                <td>{data($x/@category)}</td>
            </tr>
        }
    </table>
    <ul>
    {
      for $x in /bookstore/book
      return <li class="{ $x/@category }">{$x /title/text()}</li>
    }   
    </ul>
</body>
</html>
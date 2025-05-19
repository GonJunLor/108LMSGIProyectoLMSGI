(:28.Mostrar los títulos en una tabla de HTML.:)
declare option output:indent "yes"; 
<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style><![CDATA[
        table, td, th{
          border: 1px solid #c7c7c7;
        }]]>
    </style>
    <title>UD6-3.28 Libros-Categoría. Gonzalo Junquera Lorenzo</title>
</head>
<body>
    <h1>Bookstore</h1>
    <table>
        <tr>
            <th>Título</th>
        </tr>
        {
            for $x in /bookstore/book
            return <tr>
                <td>{$x/title/text()}</td>
            </tr>
        }
    </table>
</body>
</html>

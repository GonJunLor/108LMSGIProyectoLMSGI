(:PREGUNTA 2.- Se pide transformar con XQUERY obteniendo la siguiente web
(FIGURA2), los nombres de las distribuciones son enlaces a la web oficial. Cuando sit uo
el puntero sobre el nombre cambia de color:)
declare option output:indent "yes"; 
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      <meta charset="utf-8"/>
      <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
      <title>Distribución de software Linux</title>
   </head>
   <body>
      <header><img src="./images/logo.jpg" alt="logo linux"/><h1>Distribución de software Linux</h1>
      </header>
      <main>
        <ul>
          {
            for $x in doc("linux")/software-libre/distribuciones/distribucion
            return <li><a href="{$x/web}">{$x/nombre/text()}</a></li>
          }
        </ul>
      </main>
   </body>
</html>
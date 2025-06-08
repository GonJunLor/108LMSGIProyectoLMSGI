(:PREGUNTA 3. Transformación de input/01.xml en target/03.xml, con los últimos
lanzamientos de todas las distribuciones mediante XSLT(src/03.xslt).:)
declare option output:indent "yes"; 

let $doc := doc("linux")

return
<ultimaversion>
  {
    for $dist in $doc/software-libre/distribuciones/distribucion
    let $id := $dist/@id
    let $maxVersion := max(//lanzamiento[@distribucion=$id]/@version)
    for $lanz in $doc/software-libre/lanzamientos/lanzamiento[@distribucion=$id and @version=$maxVersion]
      return $lanz
  }
</ultimaversion>

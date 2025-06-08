(:5. Nombre de los cursos que no han finalizado:)
declare function local:convertir-fecha($fecha as xs:string) as xs:string {
  (: Separar la fecha en día, mes, año usando '/' como delimitador :)
  let $partes := fn:tokenize($fecha, "/")
  let $dia := fn:format-number(xs:integer($partes[1]), "01") (: Asegura 2 dígitos para el día :)
  let $mes := fn:format-number(xs:integer($partes[2]), "01") (: Asegura 2 dígitos para el mes :)
  let $anio := fn:format-number(xs:integer($partes[3]), "0001") (: Asegura 4 dígitos para el año :)
  let $fechaISO := concat($anio, "-", $mes, "-", $dia) (: Formato YYYY-MM-DD :)
  return
    if (fn:matches($fechaISO, "^\d{4}-\d{2}-\d{2}$") and xs:date($fechaISO)) then
      (: Validar que sea una fecha válida y formatearla :)
      fn:format-date(xs:date($fechaISO), "[Y0001]-[M01]-[D01]")
    else
      "Fecha inválida"
};

(: Ejemplo con tu fecha :)
local:convertir-fecha("31/7/2024")

for $x in collection("academia")/curso
where local:convertir-fecha($x/fin/text())>xs:date("2024-09-30")
return data($x/nombre)
(:1. Listar el nombre de todos los clientes:)
for $x in collection("facturasDB")
return $x/factura/cliente/nombre/text()
(:6. Insertar un nuevo nodo estado con valor pagada dentro de en la factura F001:)
for $x in collection("facturasDB")
where $x/factura/@id="F001"
return insert node <estado>pagada</estado> as last into $x/factura
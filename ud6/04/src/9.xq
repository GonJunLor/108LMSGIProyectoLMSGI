(:9. Actualizar todas las facturas con importe inferior a 100 con el valor 100.:)
for $x in collection("facturasDB")
where $x/factura/importeTotal<200
return replace value of node $x/factura/importeTotal with 200
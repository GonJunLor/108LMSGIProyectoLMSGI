(:7. Eliminar el nodo en la factura F001:)
<facturas>
for $x in collection("facturasDB")
where $x/factura/@id="F001"
return delete node $x/factura/estado
</facturas>

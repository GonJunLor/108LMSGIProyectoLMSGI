(:8. Renombrar el nodo total por importeTotal:)
<facturas>
for $x in collection("facturasDB")
return rename node $x/factura/total as "importeTotal"
</facturas>

(:2. Filtrar facturas con un importe total mayor que 200:)
<facturas>
for $x in collection("facturasDB")/factura
where $x/total>200
return $x
</facturas>
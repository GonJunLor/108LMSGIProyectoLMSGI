(:5. Remplazar el nombre del cliente en la factura F001 por "tu nombre y Apellidos":)

for $x in doc("facturasDB/factura1.xml")/factura
return replace value of node $x/cliente/nombre with "Gonzalo Junquera"
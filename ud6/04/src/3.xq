(:3. Mostrar el ID de factura como ID de cliente y correo del cliente:)
declare option output:indent "yes"; 
<clientes>
{
  for $x in collection("facturasDB")/factura
  return <cliente id="{$x/@id}">{$x/cliente/email/text()}</cliente>
}
</clientes>
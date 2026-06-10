UPDATE SUCURSAL 
SET nombre='Sucursal Habanas',direccion='Av.Bellavista 432'
WHERE ciudad='Arequipa';

UPDATE PEDIDO
SET id_empleado= 2, id_mesa= 4, estado='Entregado', total=150
WHERE id_cliente=4;

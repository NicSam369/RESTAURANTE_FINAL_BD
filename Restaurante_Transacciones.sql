BEGIN;

INSERT INTO PEDIDO (id_cliente, id_empleado, id_mesa, estado, total)
VALUES (1, 2, 3, 'Pendiente', 50.00);

INSERT INTO DETALLE_PEDIDO (id_pedido, id_producto, cantidad, precio_unitario, subtotal)
VALUES (1, 10, 2, 25.00, 50.00);

UPDATE PRODUCTO SET stock = stock - 2 WHERE id_producto = 10;

UPDATE MESA SET estado = 'Ocupada' WHERE id_mesa = 3;

COMMIT;

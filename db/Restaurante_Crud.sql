
--Pagos
INSERT INTO PAGO (monto, metodo, fcha_pago, estado, id_pedido) 
VALUES (15000, 'tarjeta debito', CURRENT_DATE, 'pendiente', 5);

INSERT INTO FACTURA (numero, fecha_emision, monto_total, id_pago)
VALUES ('FAC-C01', CURRENT_DATE, 150.00, currval('pago_id_pago_seq'));

UPDATE PEDIDO SET estado = 'Pagado' WHERE id_pedido = 5;


--Compra a proveedor
INSERT INTO COMPRA (fecha, total, estado, id_scrsal, id_prvdor)
VALUES (CURRENT_DATE, 0, 'recibido', 1, 1);

INSERT INTO DETALLE_COMPRA (cantidad, subtotal, precio_unitario, id_producto, id_compra)
VALUES (36, 36 * 8.00, 8.00, 10, currval('compra_id_compra_seq'));

UPDATE PRODUCTO SET stock = stock + 36 WHERE id_producto = 10;

UPDATE COMPRA
SET total = (SELECT SUM(subtotal) FROM DETALLE_COMPRA
             WHERE id_compra = currval('compra_id_compra_seq'))
WHERE id_compra = currval('compra_id_compra_seq');


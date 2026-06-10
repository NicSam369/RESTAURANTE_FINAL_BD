
--Pagos
INSERT INTO PAGO (monto, metodo, fcha_pago, estado, id_pedido) 
VALUES (15000, 'tarjeta', CURRENT_DATE, 'completado', 5);

INSERT INTO FACTURA (numero, fecha_emision, monto_total, id_pago) 
VALUES ('FAC-001', CURRENT_DATE, 15000, LASTVAL());

UPDATE PEDIDO SET estado = 'Pagado' WHERE id_pedido = 5;

UPDATE PAGO SET estado = 'verificado' WHERE id_pedido = 5;


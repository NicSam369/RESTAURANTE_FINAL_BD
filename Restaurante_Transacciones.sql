BEGIN;
INSERT INTO PAGO (monto, metodo, fcha_pago, estado, id_pedido)
VALUES (15000, 'tarjeta debito', CURRENT_DATE, 'completado', 5);
INSERT INTO FACTURA (numero, fecha_emision, monto_total, id_pago)
VALUES ('FAC-001', CURRENT_DATE, 15000, 1);
UPDATE PEDIDO SET estado = 'Pagado' WHERE id_pedido = 5;
COMMIT;


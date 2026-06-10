INSERT INTO SUCURSAL(nombre,dirección,telefono,ciudad)
VALUES
    ('Sucursal Centro', 'Av. Principal 123', '555-0101', 'Lima'),
    ('Sucursal Norte', 'Calle Norte 456', '555-0102', 'Lima'),
    ('Sucursal Sur', 'Av. Del Sur 789', '555-0103', 'Arequipa'),
    ('Sucursal Este', 'Jr. Este 321', '555-0104', 'Cusco'),
    ('Sucursal Oeste', 'Av. Oeste 654', '555-0105', 'Trujillo');

INSERT INTO CATEGORIA (nombre, descripcion) 
VALUES
    ('Bebidas', 'Refrescos, jugos y bebidas alcoholicas'),
    ('Entradas', 'Aperitivos y entradas'),
    ('Platos principales', 'Segundos platos principales'),
    ('Postres', 'Dulces y postres'),
    ('Desayunos', 'Opciones de desayuno');

INSERT INTO PEDIDO (id_cliente, id_empleado, id_mesa, estado, total)
VALUES
	(1, 1, 1, 'Pendiente', 45.50),
	(2, 3, 2, 'En preparación', 78.00),
	(3, 2, 7, 'Entregado', 120.00),
	(4, 4, 3, 'Pendiente', 35.00),
	(5, 4, 4, 'Cancelado', 0.00),
	(6, 3, 6, 'Entregado', 95.650),
	(7, 1, 5, 'En preparación', 60.00),
	(8, 2, 2, 'Pendiente', 42.00);

-- Pedido 1 (Cliente Juan - Mesa 1)
--Pedido 2 (Cliente Maria - Mesa 2)
-- Pedido 3 (Cliente Ana - Mesa 7)
-- Pedido 4 (Cliente Carlos - Mesa 3)
-- Pedido 5 (Cliente Luis - Mesa 4) Cancelado
-- Pedido 6 (Cliente Juan -  Mesa 6)
-- Pedido 7 (Cliente Sofia - Mesa 5)
-- Pedido 8 (Cliente Diego - Mesa 2)
INSERT INTO DETALLE_PEDIDO (id_pedido, id_producto, cantidad, precio_unitario, subtotal)
VALUES
	(1, 3, 1, 25.00, 25.00),
	(1, 1, 2, 3.50, 7.00),
	(1, 7, 1, 15.50, 15.00),
	(1, 2, 1, 5.00, 5.00),

	(2, 5, 2, 35.00, 70.00),
	(2, 2, 1, 5.00, 5.00),
	(2, 8, 1, 8.00, 8.00),

	(3, 6, 3, 28.00, 84.00),
	(3, 10, 2, 15.00, 30.00),
	(3, 1, 2, 3.50, 7.00),

	(4, 3, 1, 25.00, 25.00),
	(4, 1, 2, 3.50, 7.00),
	(4, 11, 1, 4.00, 4.00),
	
	(5, 8, 1, 8.00, 8.00),

	(6, 4, 2, 18.00, 36.00),
	(6, 9, 1, 12.00, 12.00),
	(6, 1, 3, 3.50, 10.50),
	(6, 11, 2, 4.00, 8.00),

	(7, 12, 2, 20.00, 40.00),
	(7, 2, 1, 5.00, 5.00),

	(8, 5, 1, 35.00, 35.00),
	(8, 3, 1, 25.00, 25.00),
	(8, 7, 1, 15.00, 15.00);

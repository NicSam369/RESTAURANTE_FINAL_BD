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

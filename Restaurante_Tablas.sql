--1
  CREATE TABLE CLIENTE (
	id_cliente SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	dni VARCHAR(20) UNIQUE NOT NULL,
	telefono VARCHAR(20),
	fecha_registro DATE DEFAULT CURRENT_TIMESTAMP
  );

--2
  CREATE TABLE MESA (
	id_mesa SERIAL PRIMARY KEY,
    id_scrsal VARCHAR(20) NOT NULL,
    numero INTEGER NOT NULL,
    capacidad INTEGER NOT NULL,
    estado VARCHAR(20) DEFAULT 'Disponible',
    CONSTRAINT fk_mesa_sucursal
        FOREIGN KEY (id_scrsal)
        REFERENCES SUCURSAL(id_scrsal)
  );

--3
  CREATE TABLE PEDIDO (
	id_pedido SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,          
    id_empleado INT NOT NULL,          
    id_mesa INT NOT NULL,              
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(30) DEFAULT 'Pendiente',
    total NUMERIC(10,2),
    CONSTRAINT fk_pedido_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES CLIENTE(id_cliente),
    CONSTRAINT fk_pedido_empleado
        FOREIGN KEY (id_empleado)
        REFERENCES EMPLEADO(id_empleado),
    CONSTRAINT fk_pedido_mesa
        FOREIGN KEY (id_mesa)
        REFERENCES MESA(id_mesa)
  );

--4
  CREATE TABLE DETALLE_PEDIDO (
	id_detalle SERIAL PRIMARY KEY,
    id_pedido INT NOT NULL,            
    id_producto INT NOT NULL,          
    cantidad NUMERIC(8,0) NOT NULL,
    precio_unitario NUMERIC(12,2) NOT NULL,
    subtotal NUMERIC(12,2),
    CONSTRAINT fk_detalle_pedido_pedido
        FOREIGN KEY (id_pedido)
        REFERENCES PEDIDO(id_pedido),
    CONSTRAINT fk_detalle_pedido_producto
        FOREIGN KEY (id_producto)
        REFERENCES PRODUCTO(id_producto)
  );

--5
CREATE TABLE PRODUCTO (
	id_producto SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(50),
	precio DECIMAL(10,2) NOT NULL,
	stock INT NOT NULL,
	id_categoria INT NOT NULL,

	CONSTRAINT fk_id_categoria
		FOREIGN KEY (id_categoria)
		REFERENCES CATEGORIA(id_categoria)
		ON DELETE SET NULL
  );

--6
CREATE TABLE CATEGORIA (
	id_categoria SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(50)
  );

--7
  CREATE TABLE EMPLEADO (
	id_empleado SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	dni VARCHAR(9) UNIQUE,
	email VARCHAR(50) UNIQUE,
	telefono VARCHAR(12),
	rol VARCHAR(50) NOT NULL CHECK (rol IN ('Mesero', 'Cocinero', 'Gerente', 'Cajero')),
	turno VARCHAR(50) NOT NULL CHECK (turno IN ('Mañana', 'Tarde', 'Noche')),
	id_scrsal INT NOT NULL,

	CONSTRAINT fk_id_scrsal
		FOREIGN KEY (id_scrsal)
		REFERENCES SUCURSAL(id_scrsal)
	  	ON DELETE SET NULL
  );


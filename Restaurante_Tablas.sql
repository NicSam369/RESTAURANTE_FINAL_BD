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

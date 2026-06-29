CREATE TABLE PEDIDO_JSONB (
    id_pedido SERIAL PRIMARY KEY,
    datos JSONB
);

INSERT INTO PEDIDO_JSONB (datos)
VALUES ('{
    "id_pedido": 1,
    "fecha_hora": "2026-06-19 14:30:00",
    "total": 50.00,
    "cliente": {
        "id": 1,
        "nombre": "Juan",
        "apellido": "Perez",
        "email": "juan.perez@email.com",
        "telefono": "999-111-111"
    },
    "productos": [
        {
            "id_producto": 10,
            "nombre": "Coca Cola 500ml",
            "cantidad": 2,
            "precio_unitario": 25.00,
            "subtotal": 50.00
        }
    ],
    "estado_pago": "pendiente"
}');

SELECT * FROM PEDIDO_JSONB
WHERE datos->'cliente'->>'nombre' = 'Juan';

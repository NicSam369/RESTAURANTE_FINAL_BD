--Ventas por Sucursal
SELECT 
    s.nombre AS sucursal,
    COUNT(DISTINCT p.id_pedido) AS total_pedidos,
    COALESCE(SUM(p.total), 0) AS total_ventas
FROM SUCURSAL s
LEFT JOIN MESA m ON s.id_scrsal = m.id_scrsal
LEFT JOIN PEDIDO p ON m.id_mesa = p.id_mesa
GROUP BY s.id_scrsal, s.nombre
HAVING COALESCE(SUM(p.total), 0) > 100
ORDER BY total_ventas DESC;

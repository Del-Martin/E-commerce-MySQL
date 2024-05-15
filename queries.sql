USE comercio_electronico;

-- 1. Calcula el total de ventas para cada producto, ordenado de mayor a menor.
SELECT p.id_producto, nombre, SUM(dp.cantidad * p.precio) AS total_ganancias FROM Productos p
INNER JOIN Detalles_Pedidos dp ON dp.id_producto = p.id_producto
GROUP BY p.id_producto
ORDER BY total_ganancias DESC;

-- 2. Identifica el último pedido realizado por cada cliente.
SELECT P.id_cliente, P.id_pedido, P.fecha_pedido
FROM Pedidos P
JOIN (
    SELECT id_cliente, MAX(fecha_pedido) AS max_fecha
    FROM Pedidos
    GROUP BY id_cliente
) AS UltimosPedidos
ON P.id_cliente = UltimosPedidos.id_cliente AND P.fecha_pedido = UltimosPedidos.max_fecha;

-- 3. Determina el número total de pedidos realizados por clientes en cada ciudad.
SELECT COUNT(p.id_cliente) AS Total_pedidos, c.ciudad FROM Pedidos p
INNER JOIN Clientes c on c.id_cliente = p.id_cliente
GROUP BY c.ciudad
ORDER BY Total_pedidos DESC;

-- 4. Lista todos los productos que nunca han sido parte de un pedido.
SELECT p.id_producto, p.nombre FROM Productos p
LEFT JOIN Detalles_Pedidos dp ON dp.id_producto = p.id_producto
WHERE dp.id_producto IS NULL;

-- 5. Encuentra los productos más vendidos en términos de cantidad total vendida.
SELECT p.id_producto, nombre, SUM(dp.cantidad) AS venta_total_unidades FROM Productos p
INNER JOIN Detalles_Pedidos dp ON dp.id_producto = p.id_producto
GROUP BY p.id_producto
ORDER BY venta_total_unidades DESC;

-- 6. Identifica a los clientes que han realizado compras en más de una categoría de producto.
SELECT c.id_cliente, c.nombre FROM Clientes c
INNER JOIN Pedidos pe ON pe.id_cliente = c.id_cliente
INNER JOIN Detalles_Pedidos dp ON dp.id_pedido = pe.id_pedido
INNER JOIN Productos pr ON pr.id_producto = dp.id_producto
GROUP BY c.id_cliente
HAVING COUNT(categoría) > 1;

-- 7. Muestra las ventas totales agrupadas por mes y año.
SELECT 
    EXTRACT(YEAR FROM pe.fecha_pedido) AS año, 
    EXTRACT(MONTH FROM pe.fecha_pedido) AS mes,
    SUM(dp.cantidad * p.precio) AS total_ganancias
FROM Productos p
INNER JOIN Detalles_Pedidos dp ON dp.id_producto = p.id_producto
INNER JOIN Pedidos pe ON pe.id_pedido = dp.id_pedido
GROUP BY 
    EXTRACT(YEAR FROM pe.fecha_pedido), 
    EXTRACT(MONTH FROM pe.fecha_pedido)
ORDER BY 
    total_ganancias DESC;
    
-- 8. Calcula la cantidad promedio de productos por pedido.
SELECT 
    ROUND(AVG(cantidad_por_pedido), 2) AS Promedio_cantidad_productos, 
    COUNT(DISTINCT id_pedido) AS Total_cantidad_pedidos
FROM (
	SELECT id_pedido, SUM(cantidad) AS cantidad_por_pedido FROM Detalles_Pedidos
    GROUP BY id_pedido) AS tabla_cantidad_por_pedido;

-- 9. Determina cuántos clientes han realizado pedidos en más de una ocasión. 
SELECT COUNT(cr.Cantidad_clientes) AS Total_clientes FROM (
	SELECT COUNT(p.id_cliente) AS Cantidad_clientes FROM Pedidos p
	GROUP BY p.id_cliente
	HAVING COUNT(DISTINCT id_pedido) > 1) AS cr;
    
-- 10. Calcula el tiempo promedio que pasa entre pedidos para cada cliente. 
SELECT id_cliente, AVG(tiempo_entre_pedidos) AS tiempo_promedio_entre_pedidos FROM (
    SELECT p.id_cliente, DATEDIFF(p.fecha_pedido, lag(p.fecha_pedido) OVER (PARTITION BY p.id_cliente ORDER BY p.fecha_pedido)) AS tiempo_entre_pedidos
    FROM Pedidos p
) AS diferencia_entre_pedidos
GROUP BY id_cliente
HAVING AVG(tiempo_entre_pedidos) IS NOT NULL;

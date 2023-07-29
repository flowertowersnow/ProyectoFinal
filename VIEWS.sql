USE tienda;
-- Creación de vista para chequear la info de los clientes y la fecha de última compra
CREATE VIEW vista_ultima_compra AS
SELECT
    c.id_usuario,
    c.nombre,
    c.apellido,
    c.DNI,
    c.mail,
    c.telefono,
    c.direccion,
    c.zona_entrega,
    MAX(p.fecha) AS ultima_compra -- así obtengo la fecha de la última compra x cliente
FROM
    Clientes c
LEFT JOIN -- con esto uno las tablas Clientes y Pedidos x la columna zona_entrega
    Pedidos p ON c.zona_entrega = p.zona_entrega
GROUP BY
    c.id_usuario;
SELECT * FROM vista_ultima_compra;

-- Con esta vista chequeo la info de los productos y calculo la ganancia x unidad y total para cada producto
CREATE VIEW vista_productos_ganancia AS
SELECT
    id_producto,
    categoria,
    stock,
    costo,
    precio_venta,
    (precio_venta - costo) AS ganancia_por_unidad, -- uso operaciones simples para determinarlo
    (precio_venta - costo) * stock AS ganancia_total
FROM
    Productos;
    
SELECT * FROM vista_productos_ganancia;

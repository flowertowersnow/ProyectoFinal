/* Funcion para obtener el número de pedidos por cliente */
DELIMITER //
CREATE FUNCTION getpedidos (cliente_id INT) /* establezco parámetro de entrada cliente_id) */
RETURNS INT /* quiero que la función me devuelva un número */
DETERMINISTIC
BEGIN
	DECLARE num_pedidos int; /* el resultado se almacena en esta variable num_pedidos */
    SET num_pedidos = (
		SELECT COUNT(*) /* COUNT para contar el N de filas en la tabal Pedidos */
        FROM Pedidos
        WHERE id_usuario = cliente_id /* con id_usuario filtro por el cliente seleccionado */
	);
    RETURN num_pedidos;
END
//
select getpedidos(3);

/* Funcion para obtener valores de otras tablas */
DELIMITER //
CREATE FUNCTION getproductos_x_categoria(categoria VARCHAR(50)) /* establezco parámetro de entrada categoria, que es el que quiero consultar) */
RETURNS VARCHAR(100) /* quiero que la función me devuelva una rta alfanumérica */
DETERMINISTIC
BEGIN
    DECLARE productos_lista VARCHAR(100); /* el resultado se almacena en esta variable productos_lista */
    
    SELECT GROUP_CONCAT(p.id_producto SEPARATOR ', ') /* Subconsulta: para concatenar los nombres de los productos */
    INTO productos_lista /* almaceno el resultado de la concatenación en la variable productos_lista */
    FROM productos p
    WHERE p.categoria = categoria; /* para filtrar los registros de la tabla Productos según categoria. Solo se van a seleccionar los registros donde la columna categoria coincida con el paramtro de entrada */
    
    RETURN productos_lista;
END
//
select getproductos_x_categoria('Limpieza');



/* SP para ordenar una tabla según un campo (columna) y en una dirección específica */
DELIMITER //

CREATE PROCEDURE ordenar_tabla(
    IN tabla_nombre VARCHAR(50), -- Nombre de la tabla que se desea ordenar
    IN campo_orden VARCHAR(50), -- Campo por el cual se desea ordenar la tabla
    IN direccion VARCHAR(50) -- Dirección de ordenamiento (ASC para ascendente, DESC para descendente)
)
BEGIN
    SET @query = CONCAT('SELECT * FROM ', tabla_nombre, ' ORDER BY ', campo_orden, ' ', direccion, ';'); -- Se concatenan los valores de los parametros dentro de la cadena para formar la consulta completa (y se almacena en query)
    PREPARE stmt FROM @query; -- asocio query con stmt
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt; -- dsps del execute con esto aseguro que los recursos se liberen correctamente
END 
//

CALL ordenar_tabla('Clientes', 'nombre', 'ASC');

/* SP para modificar una tabla */

DELIMITER //

CREATE PROCEDURE modificar_tabla(
    IN accion INT, -- accion a realizar: 1 para inserción, 2 para eliminación
    IN tabla_nombre VARCHAR(50), -- nombre de la tabla en la cual quiero realizar la modificación
    IN valores_csv VARCHAR(1000) -- registros en formato CSV
)
BEGIN
    IF accion = 1 THEN
        SET @query = CONCAT('INSERT INTO ', tabla_nombre, ' (id_usuario, nombre, apellido, DNI, mail, telefono, direccion, zona_entrega) VALUES (', valores_csv, ');');
    ELSEIF accion = 2 THEN
        SET @query = CONCAT('DELETE FROM ', tabla_nombre, ' WHERE id_usuario IN (', valores_csv, ');');
    END IF;

    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END 
//

CALL modificar_tabla(1, 'Clientes', '5,"Karen","Filippino","33435612","karen@hotmail.com.ar","11236789","Rodrigo Pertegas 34","Villa Ballester"'); -- inserto un nuevo cliente en la tabla 'Clientes'


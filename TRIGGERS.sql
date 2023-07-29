-- Creación de Triggers
-- 1er paso: incluyo dos tablas a mi base de datos
USE tienda;
-- Registro de cambios en la tabla Clientes
CREATE TABLE log_clientes (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    nombre_usuario VARCHAR(50),
    accion_realizada VARCHAR(100),
    fecha DATE,
    hora TIME
);

-- Registro de cambios en la tabla Pedidos
CREATE TABLE log_pedidos (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    n_orden INT,
    nombre_usuario VARCHAR(50),
    accion_realizada VARCHAR(100),
    fecha DATE,
    hora TIME
);

-- 2do paso: agregro los Triggers en cada tabla para registrar las actualizaciones
-- Trigger para registrar la adición de nuevos registros en Clientes ANTES de que se realice la operación
DELIMITER //
CREATE TRIGGER tr_before_insert_log_clientes 
BEFORE INSERT ON Clientes -- se va a activar antes de insertar datos en la tabla
FOR EACH ROW
BEGIN
    INSERT INTO log_clientes (id_usuario, nombre_usuario, accion_realizada, fecha, hora)
    VALUES (NEW.id_usuario, USER(), 'INSERCIÓN', CURDATE(), CURTIME()); 
    -- va a registrar la acción como INSERCIÓN y x USER obtendrá el usuario, tmb almacena la fecha y hora x CURDATE y CURTIME
END
//

-- Trigger para registrar la eliminación de datos en la tabla Pedidos dsps de que se realice esa operación
DELIMITER //
CREATE TRIGGER tr_after_delete_log_pedidos
AFTER DELETE ON Pedidos -- se va a activar dsps de eliminar datos en la tabla
FOR EACH ROW
BEGIN
    INSERT INTO log_pedidos (n_orden, nombre_usuario, accion_realizada, fecha, hora)
    VALUES (OLD.n_orden, USER(), 'ELIMINACIÓN', CURDATE(), CURTIME()); 
	-- va a registrar la acción como ELIMINACIÓN y x USER obtendrá el usuario, tmb almacena la fecha y hora x CURDATE y CURTIME
END
//
/* Con estos Triggers cada vez que haya una adición o eliminación de datos en dichas tablas
se van a registrar los detalles en las tablas que cree en el primer paso */

-- Poniendo a prueba los Triggers
-- Agrego info en Clientes:
INSERT INTO Clientes (id_usuario, nombre, apellido, DNI, mail, telefono, direccion, zona_entrega)
VALUES (6, 'Carolina', 'Elche', '123456789', 'caro@gmail.com', '1234567890', 'Gran Vía 23', 'Ensanche');
-- Chequeo la tabla LOG:
SELECT * FROM log_clientes;


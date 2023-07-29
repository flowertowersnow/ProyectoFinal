-- Creación de usuarios con nombre y contraseña específicos + asignación de permisos
USE tienda;
-- Usuario con permisos de solo lectura:
CREATE USER 'user_lectura'@'localhost' IDENTIFIED BY 'contraseña1';

-- Usuario con permisos de lectura, inserción y modificación de datos:
CREATE USER 'user_escritura'@'localhost' IDENTIFIED BY 'contraseña2';

-- Asigno permiso solo de lectura en todas las tablas al primer usuario:
GRANT SELECT ON tienda.* TO 'user_lectura'@'localhost';
-- Asigno permisos de lectura, inserción y modificación al 2do usuario:
GRANT SELECT, INSERT, UPDATE ON tienda.* TO 'user_escritura'@'localhost';

-- Bloqueo el permiso de eliminar registros en todas las tablas
REVOKE DELETE ON tienda.* FROM 'user_lectura'@'localhost';
REVOKE DELETE ON tienda.* FROM 'user_escritura'@'localhost';


-- Usando TCL (Transaction Control Language)
-- Comienzo una transacción para borrar productos en los que no haya stock
START TRANSACTION; -- significa que las sentencias que escriba se van a agrupar como una sola acción

-- Chequear si en Productos hay registros sin stock:
SELECT COUNT(*) FROM Productos WHERE stock = 0;

-- Elimino los registros de Productos donde el stock sea 0:
DELETE FROM Productos WHERE stock = 0;
-- ROLLBACK;  -- Si lo descomento puedo deshacer los cambios
-- COMMIT;  -- Si lo descomento puedo confirmar los cambios y hacerlos permanentes




-- 2da transacción
START TRANSACTION;

-- Inserto nuevos registros en Repartos
INSERT INTO Repartos VALUES
(1,'Roberto','Pertegas',27271166240,1537478945,'Olivos'),
(2,'Maria','Corrado',20406787907,1568331323,'Monteverde'),
(3,'Cecilia','Albesa',20382818727,153427823,'Munro'),
(4,'Martin','Menella',271798760,154848763,'Vicente Lopez'),
(5,'Amadeo','Madera',272711240,1537478945,'Olivos'),
(6,'Laura','Cuadrado',204067907,1568331323,'Monteverde'),
(7,'Keka','Matiz',203828187,153427823,'Ensanche'),
(8,'Vicente','Aquino',274598760,154848763,'Vicente Lopez');

-- Uso de savepoints: divido la transacción en partes más peques y puedo realizar cambios selectivos sin afectar otras partes
-- Savepoint dsps del registro #4
SAVEPOINT savepoint_4;

-- Savepoint después del registro #8
SAVEPOINT savepoint_8;

-- RELEASE SAVEPOINT savepoint_4;  -- Descomento para eliminar el savepoint 4

-- ROLLBACK TO SAVEPOINT savepoint_8;  -- Descomento para deshacer los cambios a partir del savepoint 8

-- COMMIT;  -- Descomento para confirmar los cambios y hacerlos permanentes


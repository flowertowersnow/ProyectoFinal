use tienda;
CREATE TABLE Clientes(
	id_usuario INT,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    DNI VARCHAR(30),
    mail VARCHAR (30),
    telefono INT,
    direccion VARCHAR(30),
    zona_entrega VARCHAR(30),
    PRIMARY KEY (id_usuario)
);

INSERT INTO Clientes VALUES 
(1,'Manuel','Aguilar',33116624,'manuel@gmail.com',15678945,'Entre Rios 2307', 'Olivos'),
(2,'Nicolas','Montagnani',33678790,'nicolas@yahoo.com',1566541323,'Lorenzo Vidaschi 30', 'Monteverde'),
(3,'Lucia','Otero',30281872,'lua@gmail.com',1534567823,'Pacheco 2345', 'Munro'),
(4,'Perla','Parati',28982673,'perla@hotmail.com',159838763,'Av. Maipú 5655', 'Vicente Lopez');

CREATE TABLE Pedidos(
	n_orden INT,
    fecha DATETIME,
    productos INT,
    zona_entrega VARCHAR(30),
    PRIMARY KEY (n_orden)
);

INSERT INTO Pedidos VALUES 
(10,'2023-06-10 10:10:10',23,'Olivos'),
(11,'2023-06-12 13:15:10',(23,34,56),'Vicente Lopez'),
(12,'2023-06-12 15:45:20',(34,12), 'Munro'),
(13,'2023-06-15 20:10:10',(23,23,23),'Monteverde');

CREATE TABLE Productos(
	id_producto INT,
    categoria TEXT(30),
    stock INT,
    costo INT,
    precio_venta INT,
    PRIMARY KEY (id_producto)
);

INSERT INTO Productos VALUES 
(23,'Alimentos',20,7,12),
(34,'Alimentos',15,4,8),
(56,'Higiene',30,10,15),
(12,'Limpieza',18,12,18);

CREATE TABLE Repartos(
	id_repartidor INT,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    cuit INT,
    telefono INT,
    zona_entrega VARCHAR(30),
    PRIMARY KEY (id_repartidor)
);

INSERT INTO Repartos VALUES 
(1,'Roberto','Pertegas',27271166240,1537478945,'Olivos'),
(2,'Maria','Corrado',20406787907,1568331323,'Monteverde'),
(3,'Cecilia','Albesa',20382818727,153427823,'Munro'),
(4,'Martin','Menella',271798760,154848763,'Vicente Lopez');

CREATE TABLE Blog(
    articulo_interes VARCHAR(30),
    resumen VARCHAR (30),
     PRIMARY KEY (articulo_interes)
);

INSERT INTO Blog VALUES 
('cocina basada en plantas','basicos en la cocina');

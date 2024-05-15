use comercio_electronico; 

-- Insertar productos
INSERT INTO Productos VALUES (1, 'Laptop', 1200.00, 'Electrónica');
INSERT INTO Productos VALUES (2, 'Smartphone', 800.00, 'Electrónica');
INSERT INTO Productos VALUES (3, 'Teclado', 100.00, 'Accesorios');
INSERT INTO Productos VALUES (4, 'Mouse', 50.00, 'Accesorios');
INSERT INTO Productos VALUES (5, 'Monitor', 300.00, 'Electrónica');
INSERT INTO Productos VALUES (6, 'Impresora', 150.00, 'Oficina');
INSERT INTO Productos VALUES (7, 'Tablet', 250.00, 'Electrónica');
INSERT INTO Productos VALUES (8, 'Cámara', 500.00, 'Electrónica');
INSERT INTO Productos VALUES (9, 'Silla de oficina', 120.00, 'Muebles');
INSERT INTO Productos VALUES (10, 'Escritorio', 220.00, 'Muebles');
INSERT INTO Productos VALUES (11, 'Router', 95.00, 'Electrónica');
INSERT INTO Productos VALUES (12, 'Disco Duro Externo', 120.00, 'Accesorios');
INSERT INTO Productos VALUES (13, 'Altavoces', 70.00, 'Electrónica');
INSERT INTO Productos VALUES (14, 'Micrófono', 85.00, 'Accesorios');
INSERT INTO Productos VALUES (15, 'Teclado Mecánico', 130.00, 'Accesorios');
INSERT INTO Productos VALUES (16, 'Monitor Curvo', 320.00, 'Electrónica');
INSERT INTO Productos VALUES (17, 'Mochila', 90.00, 'Accesorios');
INSERT INTO Productos VALUES (18, 'Power Bank', 50.00, 'Electrónica');
INSERT INTO Productos VALUES (19, 'Lámpara de escritorio', 45.00, 'Muebles');
INSERT INTO Productos VALUES (20, 'Silla ergonómica', 180.00, 'Muebles');

-- Insertar clientes
INSERT INTO Clientes VALUES (1, 'Juan Pérez', 'juanperez@mail.com', 'Madrid');
INSERT INTO Clientes VALUES (2, 'Ana Gómez', 'anagomez@mail.com', 'Barcelona');
INSERT INTO Clientes VALUES (3, 'Luisa Fernández', 'luisafern@mail.com', 'Valencia');
INSERT INTO Clientes VALUES (4, 'Carlos Ruiz', 'carlosruiz@mail.com', 'Sevilla');
INSERT INTO Clientes VALUES (5, 'Marta López', 'martalopez@mail.com', 'Madrid');
INSERT INTO Clientes VALUES (6, 'Andrea Jiménez', 'andreajimenez@mail.com', 'Málaga');
INSERT INTO Clientes VALUES (7, 'Pablo Martínez', 'pablomartinez@mail.com', 'Bilbao');
INSERT INTO Clientes VALUES (8, 'Sofía Castro', 'sofiacastro@mail.com', 'Zaragoza');
INSERT INTO Clientes VALUES (9, 'Raúl Navarro', 'raulnavarro@mail.com', 'Alicante');
INSERT INTO Clientes VALUES (10, 'Irene Molina', 'irenemolina@mail.com', 'Coruña');
INSERT INTO Clientes VALUES (11, 'Jorge Esteban', 'jorgeesteban@mail.com', 'Granada');
INSERT INTO Clientes VALUES (12, 'Clara Sanz', 'clarasanz@mail.com', 'Santander');
INSERT INTO Clientes VALUES (13, 'Mario Redondo', 'marroredondo@mail.com', 'Toledo');
INSERT INTO Clientes VALUES (14, 'Lucía Marín', 'luciamarin@mail.com', 'Cádiz');

-- Insertar pedidos
INSERT INTO Pedidos VALUES (1, 1, '2021-03-15', 'Entregado');
INSERT INTO Pedidos VALUES (2, 2, '2021-03-17', 'Pendiente');
INSERT INTO Pedidos VALUES (3, 3, '2021-03-20', 'Cancelado');
INSERT INTO Pedidos VALUES (4, 4, '2021-03-22', 'Entregado');
INSERT INTO Pedidos VALUES (5, 5, '2021-03-24', 'Pendiente');
INSERT INTO Pedidos VALUES (6, 6, '2021-03-25', 'Entregado');
INSERT INTO Pedidos VALUES (7, 7, '2021-03-28', 'Cancelado');
INSERT INTO Pedidos VALUES (8, 8, '2021-03-30', 'Entregado');
INSERT INTO Pedidos VALUES (9, 9, '2021-04-01', 'Entregado');
INSERT INTO Pedidos VALUES (10, 10, '2021-04-02', 'Entregado');
INSERT INTO Pedidos VALUES (11, 11, '2021-04-03', 'Entregado');
INSERT INTO Pedidos VALUES (12, 12, '2021-04-05', 'Pendiente');
INSERT INTO Pedidos VALUES (13, 13, '2021-04-05', 'Cancelado');
INSERT INTO Pedidos VALUES (14, 14, '2021-04-06', 'Entregado');
INSERT INTO Pedidos VALUES (15, 10, '2021-04-07', 'Entregado');
INSERT INTO Pedidos VALUES (16, 10, '2021-04-08', 'Entregado');
INSERT INTO Pedidos VALUES (17, 11, '2021-04-09', 'Entregado');
INSERT INTO Pedidos VALUES (18, 12, '2021-04-10', 'Pendiente');

-- Insertar detalles de pedidos
INSERT INTO Detalles_Pedidos VALUES (1, 1, 1, 1);
INSERT INTO Detalles_Pedidos VALUES (2, 1, 2, 2);
INSERT INTO Detalles_Pedidos VALUES (3, 2, 1, 1);
INSERT INTO Detalles_Pedidos VALUES (4, 3, 4, 1);
INSERT INTO Detalles_Pedidos VALUES (5, 4, 5, 2);
INSERT INTO Detalles_Pedidos VALUES (6, 5, 6, 1);
INSERT INTO Detalles_Pedidos VALUES (7, 5, 7, 1);
INSERT INTO Detalles_Pedidos VALUES (8, 6, 8, 1);
INSERT INTO Detalles_Pedidos VALUES (9, 7, 9, 1);
INSERT INTO Detalles_Pedidos VALUES (10, 8, 10, 1);
INSERT INTO Detalles_Pedidos VALUES (11, 9, 5, 2);
INSERT INTO Detalles_Pedidos VALUES (12, 9, 6, 3);
INSERT INTO Detalles_Pedidos VALUES (13, 10, 11, 1);
INSERT INTO Detalles_Pedidos VALUES (14, 11, 12, 1);
INSERT INTO Detalles_Pedidos VALUES (15, 11, 13, 2);
INSERT INTO Detalles_Pedidos VALUES (16, 12, 14, 1);
INSERT INTO Detalles_Pedidos VALUES (17, 13, 15, 1);
INSERT INTO Detalles_Pedidos VALUES (18, 14, 16, 1);
INSERT INTO Detalles_Pedidos VALUES (19, 15, 17, 1);
INSERT INTO Detalles_Pedidos VALUES (20, 15, 18, 2);
INSERT INTO Detalles_Pedidos VALUES (21, 16, 19, 1);
INSERT INTO Detalles_Pedidos VALUES (22, 17, 20, 1);
INSERT INTO Detalles_Pedidos VALUES (23, 17, 11, 1);
INSERT INTO Detalles_Pedidos VALUES (24, 18, 12, 2);
INSERT INTO Detalles_Pedidos VALUES (25, 18, 10, 3);
INSERT INTO Detalles_Pedidos VALUES (26, 18, 6, 4);

commit;





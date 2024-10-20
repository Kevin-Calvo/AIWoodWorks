-- Insertar datos en la tabla Pais
INSERT INTO Pais (idPais, nombre)
VALUES 
(1, 'Costa Rica'),
(2, 'Estados Unidos');

-- Inserta estados para paises
INSERT INTO Estado (idEstado, idPais, nombre) VALUES 
(1, 2, 'California'),
(2, 2, 'Texas'),
(3, 2, 'Florida'),
(4, 2, 'Nueva York'),
(5, 2, 'Illinois'),
(6, 2, 'Pennsylvania'),
(7, 2, 'Ohio'),
(8, 2, 'Michigan'),
(9, 2, 'Georgia'),
(10, 2, 'North Carolina'),
(11, 2, 'New Jersey'),
(12, 2, 'Virginia'),
(13, 2, 'Washington'),
(14, 2, 'Arizona'),
(15, 2, 'Massachusetts'),
(16, 2, 'Tennessee'),
(17, 2, 'Indiana'),
(18, 2, 'Missouri'),
(19, 2, 'Maryland'),
(20, 2, 'Wisconsin'),
(21, 1, 'San José'),
(22, 1, 'Alajuela'),
(23, 1, 'Cartago'),
(24, 1, 'Heredia'),
(25, 1, 'Guanacaste'),
(26, 1, 'Puntarenas'),
(27, 1, 'Limón');

-- Insertar ciudades en Estados Unidos (California - Limón)
INSERT INTO Ciudad (idCiudad, idEstado, nombre) VALUES
(1, 1, 'Los Angeles'), (2, 1, 'San Diego'), (3, 1, 'San Francisco'), 
(4, 1, 'Sacramento'), (5, 1, 'Fresno'),

(6, 2, 'Houston'), (7, 2, 'Dallas'), (8, 2, 'Austin'), 
(9, 2, 'San Antonio'), (10, 2, 'Fort Worth'),

(11, 3, 'Miami'), (12, 3, 'Orlando'), (13, 3, 'Tampa'), 
(14, 3, 'Jacksonville'), (15, 3, 'St. Petersburg'),

(16, 4, 'New York'), (17, 4, 'Buffalo'), (18, 4, 'Rochester'), 
(19, 4, 'Syracuse'), (20, 4, 'Albany'),

(21, 5, 'Chicago'), (22, 5, 'Aurora'), (23, 5, 'Naperville'), 
(24, 5, 'Joliet'), (25, 5, 'Elgin'),

(26, 6, 'Philadelphia'), (27, 6, 'Pittsburgh'), (28, 6, 'Allentown'), 
(29, 6, 'Erie'), (30, 6, 'Reading'),

(31, 7, 'Columbus'), (32, 7, 'Cleveland'), (33, 7, 'Cincinnati'), 
(34, 7, 'Toledo'), (35, 7, 'Akron'),

(36, 8, 'Detroit'), (37, 8, 'Grand Rapids'), (38, 8, 'Warren'), 
(39, 8, 'Sterling Heights'), (40, 8, 'Ann Arbor'),

(41, 9, 'Atlanta'), (42, 9, 'Augusta'), (43, 9, 'Columbus'), 
(44, 9, 'Macon'), (45, 9, 'Savannah'),

(46, 10, 'Charlotte'), (47, 10, 'Raleigh'), (48, 10, 'Greensboro'), 
(49, 10, 'Durham'), (50, 10, 'Winston-Salem'),

(51, 11, 'Newark'), (52, 11, 'Jersey City'), (53, 11, 'Paterson'), 
(54, 11, 'Elizabeth'), (55, 11, 'Edison'),

(56, 12, 'Richmond'), (57, 12, 'Virginia Beach'), (58, 12, 'Norfolk'), 
(59, 12, 'Chesapeake'), (60, 12, 'Arlington'),

(61, 13, 'Seattle'), (62, 13, 'Spokane'), (63, 13, 'Tacoma'), 
(64, 13, 'Vancouver'), (65, 13, 'Bellevue'),

(66, 14, 'Phoenix'), (67, 14, 'Tucson'), (68, 14, 'Mesa'), 
(69, 14, 'Chandler'), (70, 14, 'Scottsdale'),

(71, 15, 'Boston'), (72, 15, 'Worcester'), (73, 15, 'Springfield'), 
(74, 15, 'Lowell'), (75, 15, 'Cambridge'),

(76, 16, 'Nashville'), (77, 16, 'Memphis'), (78, 16, 'Knoxville'), 
(79, 16, 'Chattanooga'), (80, 16, 'Clarksville'),

(81, 17, 'Indianapolis'), (82, 17, 'Fort Wayne'), (83, 17, 'Evansville'), 
(84, 17, 'South Bend'), (85, 17, 'Carmel'),

(86, 18, 'Kansas City'), (87, 18, 'St. Louis'), (88, 18, 'Springfield'), 
(89, 18, 'Columbia'), (90, 18, 'Lees Summit'),

(91, 19, 'Baltimore'), (92, 19, 'Silver Spring'), (93, 19, 'Rockville'), 
(94, 19, 'Columbia'), (95, 19, 'Germantown'),

(96, 20, 'Milwaukee'), (97, 20, 'Madison'), (98, 20, 'Green Bay'), 
(99, 20, 'Kenosha'), (100, 20, 'Racine'), 

-- Insertar ciudades en Costa Rica (San José - Limón)
(101, 21, 'San José'), (102, 21, 'Escazú'), (103, 21, 'Desamparados'),
(104, 21, 'Puriscal'), (105, 21, 'Tarrazú'),

(106, 22, 'Liberia'), (107, 22, 'Nicoya'), (108, 22, 'Santa Cruz'), 
(109, 22, 'Bagaces'), (110, 22, 'Carrillo'),

(111, 23, 'San Carlos'), (112, 23, 'La Fortuna'), (113, 23, 'Naranjo'), 
(114, 23, 'Zarcero'), (115, 23, 'Palmares'),

(116, 24, 'Cartago'), (117, 24, 'Paraíso'), (118, 24, 'La Unión'), 
(119, 24, 'Jiménez'), (120, 24, 'El Guarco'),

(121, 25, 'Puntarenas'), (122, 25, 'Esparza'), (123, 25, 'Montes de Oro'), 
(124, 25, 'Osa'), (125, 25, 'Quepos'),

(126, 26, 'San Ramón'), (127, 26, 'Alajuela'), (128, 26, 'Grecia'), 
(129, 26, 'Naranjo'), (130, 26, 'Palmares'),

(131, 27, 'Pocosol'), (132, 27, 'San Isidro'), (133, 27, 'Guatuso'), 
(134, 27, 'Upala'), (135, 27, 'Cañas');


-- Insertar direcciones para ciudades en Estados Unidos
INSERT INTO Direccion (idDireccion, idCiudad, calle, numero, codigoPostal, geolocalizacion) VALUES
(1, 1, 'Main St', 123, '90001', geography::STGeomFromText('POINT(-118.2437 34.0522)', 4326)),
(2, 2, 'Broadway St', 456, '92101', geography::STGeomFromText('POINT(-117.1611 32.7157)', 4326)),
(3, 3, 'Market St', 789, '94105', geography::STGeomFromText('POINT(-122.4194 37.7749)', 4326)),
(4, 4, 'Capitol Ave', 101, '95814', geography::STGeomFromText('POINT(-121.4944 38.5816)', 4326)),
(5, 5, 'Shaw Ave', 202, '93710', geography::STGeomFromText('POINT(-119.7726 36.7477)', 4326)),
(6, 6, 'Main St', 150, '77002', geography::STGeomFromText('POINT(-95.3698 29.7604)', 4326)),
(7, 7, 'Elm St', 50, '75201', geography::STGeomFromText('POINT(-96.7969 32.7767)', 4326)),
(8, 8, 'Congress Ave', 300, '73301', geography::STGeomFromText('POINT(-97.7431 30.2672)', 4326)),
(9, 9, 'Alamo St', 450, '78205', geography::STGeomFromText('POINT(-98.4936 29.4241)', 4326)),
(10, 10, 'Lancaster Ave', 670, '76102', geography::STGeomFromText('POINT(-97.3407 32.7555)', 4326)),
(11, 11, 'Ocean Dr', 220, '33139', geography::STGeomFromText('POINT(-80.1345 25.7617)', 4326)),
(12, 12, 'Citrus Ave', 880, '32801', geography::STGeomFromText('POINT(-81.3792 28.5383)', 4326)),
(13, 13, 'Hillsborough St', 110, '33602', geography::STGeomFromText('POINT(-82.4572 27.9506)', 4326)),
(14, 14, 'Jackson St', 150, '32202', geography::STGeomFromText('POINT(-81.6556 30.3322)', 4326)),
(15, 15, 'Highland Ave', 600, '11201', geography::STGeomFromText('POINT(-73.9442 40.7128)', 4326)),
(16, 16, 'Franklin St', 400, '14202', geography::STGeomFromText('POINT(-78.8784 42.8864)', 4326)),
(17, 17, 'West Ave', 222, '14614', geography::STGeomFromText('POINT(-77.6109 43.1610)', 4326)),
(18, 18, 'Main St', 333, '13202', geography::STGeomFromText('POINT(-76.1499 43.0481)', 4326)),
(19, 19, 'State St', 700, '12207', geography::STGeomFromText('POINT(-73.7490 42.6526)', 4326)),
(20, 20, 'Lincoln Ave', 90, '60601', geography::STGeomFromText('POINT(-87.6298 41.8781)', 4326)),
(21, 21, 'Madison St', 515, '15222', geography::STGeomFromText('POINT(-79.9900 40.4406)', 4326)),
(22, 22, 'Broad St', 620, '18101', geography::STGeomFromText('POINT(-75.2140 40.6026)', 4326)),
(23, 23, 'Liberty St', 130, '44114', geography::STGeomFromText('POINT(-81.6944 41.4993)', 4326)),
(24, 24, 'Washington Blvd', 410, '48226', geography::STGeomFromText('POINT(-83.0458 42.3314)', 4326)),
(25, 25, 'Forsyth St', 55, '30303', geography::STGeomFromText('POINT(-84.3880 33.7490)', 4326)),
(26, 26, 'Queens Rd', 315, '28204', geography::STGeomFromText('POINT(-80.8431 35.2271)', 4326)),
(27, 27, 'King St', 555, '22003', geography::STGeomFromText('POINT(-74.2097 40.0583)', 4326)),
(28, 28, 'Church St', 265, '19901', geography::STGeomFromText('POINT(-75.5200 38.9107)', 4326)),
(29, 29, 'Main St', 25, '68104', geography::STGeomFromText('POINT(-96.7080 41.2565)', 4326)),
(30, 30, 'East Blvd', 415, '84111', geography::STGeomFromText('POINT(-111.8910 40.7608)', 4326)),
(31, 31, 'River Rd', 100, '55401', geography::STGeomFromText('POINT(-93.2650 44.9778)', 4326)),
(32, 32, '5th Ave', 23, '30342', geography::STGeomFromText('POINT(-84.3690 33.8408)', 4326)),
(33, 33, 'Park Ave', 83, '27603', geography::STGeomFromText('POINT(-78.6391 35.7783)', 4326)),
(34, 34, 'South St', 612, '44106', geography::STGeomFromText('POINT(-81.6080 41.4993)', 4326)),
(35, 35, 'Fifth St', 115, '85001', geography::STGeomFromText('POINT(-112.0740 33.4484)', 4326)),
(36, 36, 'Elm St', 500, '48201', geography::STGeomFromText('POINT(-83.0458 42.3314)', 4326)),
(37, 37, 'Park Ln', 15, '97301', geography::STGeomFromText('POINT(-123.0351 44.9429)', 4326)),
(38, 38, '6th Ave', 760, '63101', geography::STGeomFromText('POINT(-90.1994 38.6270)', 4326)),
(39, 39, 'Pine St', 250, '11201', geography::STGeomFromText('POINT(-73.9442 40.7128)', 4326)),
(40, 40, 'Jefferson Ave', 80, '12180', geography::STGeomFromText('POINT(-73.7554 42.1013)', 4326));

-- Insertar direcciones para ciudades en Costa Rica
INSERT INTO Direccion (idDireccion, idCiudad, calle, numero, codigoPostal, geolocalizacion) VALUES
(41, 101, 'Avenida Central', 100, '10101', geography::STGeomFromText('POINT(-84.0848 9.9333)', 4326)),
(42, 102, 'Calle 1', 150, '10202', geography::STGeomFromText('POINT(-84.2000 9.9300)', 4326)),
(43, 103, 'Avenida 2', 85, '10303', geography::STGeomFromText('POINT(-84.0333 9.9240)', 4326)),
(44, 104, 'Calle 3', 250, '10404', geography::STGeomFromText('POINT(-84.1500 9.9167)', 4326)),
(45, 105, 'Calle 4', 555, '10505', geography::STGeomFromText('POINT(-84.2150 9.9350)', 4326)),
(46, 106, 'Calle Real', 700, '10606', geography::STGeomFromText('POINT(-85.5500 10.6245)', 4326)),
(47, 107, 'Avenida de la Amistad', 120, '10707', geography::STGeomFromText('POINT(-84.0478 10.0569)', 4326)),
(48, 108, 'Calle 5', 990, '10808', geography::STGeomFromText('POINT(-84.1500 10.1958)', 4326)),
(49, 109, 'Avenida 6', 300, '10909', geography::STGeomFromText('POINT(-83.7775 9.5155)', 4326)),
(50, 110, 'Calle 7', 420, '11010', geography::STGeomFromText('POINT(-84.1485 10.4999)', 4326));

-- Insertar tipos de materiales
INSERT INTO Material (idMaterial, nombre) VALUES
(1, 'Madera de Pino'),
(2, 'Madera de Cedro'),
(3, 'Madera de Roble'),
(4, 'Metal'),
(5, 'Vidrio'),
(6, 'Plástico'),
(7, 'Fibra de Carbono'),
(8, 'Madera de Nogal'),
(9, 'Madera de Caoba'),
(10, 'Acero'),
(11, 'Aluminio'),
(12, 'Hormigón'),
(13, 'Cerámica'),
(14, 'Cuero'),
(15, 'Tela'),
(16, 'Mármol'),
(17, 'Granito'),
(18, 'Cobre'),
(19, 'Plomo'),
(20, 'Hueso'),
(21, 'Techo de Zinc'),
(22, 'Madera de Abeto'),
(23, 'Madera de Haya'),
(24, 'Madera de Sauce'),
(25, 'Madera de Eucalipto'),
(26, 'Madera de Ciprés'),
(27, 'Madera de Abedul'),
(28, 'Madera de Álamo'),
(29, 'Madera de Olmo'),
(30, 'Madera de Teca');

-- Insertar tipos de muebles
INSERT INTO TipoMueble (idTipoMueble, nombre) VALUES
(1, 'Silla'),
(2, 'Mesa'),
(3, 'Escritorio'),
(4, 'Estante'),
(5, 'Cama'),
(6, 'Sofá'),
(7, 'Armario'),
(8, 'Comoda'),
(9, 'Biblioteca'),
(10, 'Reclinable'),
(11, 'Mesa de Noche'),
(12, 'Consola'),
(13, 'Vitrina'),
(14, 'Butaca'),
(15, 'Silla de Oficina'),
(16, 'Mesa de Comedor'),
(17, 'Mesa de Café'),
(18, 'Cabecera'),
(19, 'Mesa de Centro'),
(20, 'Cajonera');

-- Inserta tipos de usuario
Insert INTO Tipo(idTipo, nombre) VALUES 
(1, 'usuario'),
(2, 'fabricante'),
(3, 'administrador');

-- Insertar 30 usuarios con idTipo 1
INSERT INTO Usuario (idUsuario, nombre, apellido, correo, password, telefono, idTipo, fechaLogUp) VALUES
(1, 'Carlos', 'Pérez', 'carlos.perez@example.com', 0x6861736865645F70617373676F, '1234567890', 1, '2024-10-19'),
(2, 'Ana', 'García', 'ana.garcia@example.com', 0x6861736865645F70617373676F, '1234567891', 1, '2024-10-18'),
(3, 'Luis', 'Martínez', 'luis.martinez@example.com', 0x6861736865645F70617373676F, '1234567892', 1, '2024-10-17'),
(4, 'María', 'Hernández', 'maria.hernandez@example.com', 0x6861736865645F70617373676F, '1234567893', 1, '2024-10-16'),
(5, 'José', 'Lopez', 'jose.lopez@example.com', 0x6861736865645F70617373676F, '1234567894', 1, '2024-10-15'),
(6, 'Pedro', 'Sánchez', 'pedro.sanchez@example.com', 0x6861736865645F70617373676F, '1234567895', 1, '2024-10-14'),
(7, 'Laura', 'Ramírez', 'laura.ramirez@example.com', 0x6861736865645F70617373676F, '1234567896', 1, '2024-10-13'),
(8, 'Francisco', 'Gomez', 'francisco.gomez@example.com', 0x6861736865645F70617373676F, '1234567897', 1, '2024-10-12'),
(9, 'Lucía', 'Moreno', 'lucia.moreno@example.com', 0x6861736865645F70617373676F, '1234567898', 1, '2024-10-11'),
(10, 'Miguel', 'Fernández', 'miguel.fernandez@example.com', 0x6861736865645F70617373676F, '1234567899', 1, '2024-10-10'),
(11, 'Alba', 'Jiménez', 'alba.jimenez@example.com', 0x6861736865645F70617373676F, '1234567800', 1, '2024-10-09'),
(12, 'Iván', 'García', 'ivan.garcia@example.com', 0x6861736865645F70617373676F, '1234567801', 1, '2024-10-08'),
(13, 'Valeria', 'López', 'valeria.lopez@example.com', 0x6861736865645F70617373676F, '1234567802', 1, '2024-10-07'),
(14, 'Diego', 'Mendoza', 'diego.mendoza@example.com', 0x6861736865645F70617373676F, '1234567803', 1, '2024-10-06'),
(15, 'Paula', 'Suárez', 'paula.suarez@example.com', 0x6861736865645F70617373676F, '1234567804', 1, '2024-10-05'),
(16, 'Álvaro', 'Torres', 'alvaro.torres@example.com', 0x6861736865645F70617373676F, '1234567805', 1, '2024-10-04'),
(17, 'Beatriz', 'Vega', 'beatriz.vega@example.com', 0x6861736865645F70617373676F, '1234567806', 1, '2024-10-03'),
(18, 'Rafael', 'Serrano', 'rafael.serrano@example.com', 0x6861736865645F70617373676F, '1234567807', 1, '2024-10-02'),
(19, 'Carmen', 'Ríos', 'carmen.rios@example.com', 0x6861736865645F70617373676F, '1234567808', 1, '2024-10-01'),
(20, 'Luis', 'Jiménez', 'luis.jimenez@example.com', 0x6861736865645F70617373676F, '1234567809', 1, '2024-09-30'),
(21, 'Carlos', 'Fernández', 'carlos.fernandez@example.com', 0x6861736865645F70617373676F, '1234567810', 1, '2024-09-29'),
(22, 'José', 'Pérez', 'jose.perez@example.com', 0x6861736865645F70617373676F, '1234567811', 1, '2024-09-28'),
(23, 'Manuel', 'González', 'manuel.gonzalez@example.com', 0x6861736865645F70617373676F, '1234567812', 1, '2024-09-27'),
(24, 'Marta', 'Díaz', 'marta.diaz@example.com', 0x6861736865645F70617373676F, '1234567813', 1, '2024-09-26'),
(25, 'José', 'García', 'jose.garcia@example.com', 0x6861736865645F70617373676F, '1234567814', 1, '2024-09-25'),
(26, 'Raúl', 'Martín', 'raul.martin@example.com', 0x6861736865645F70617373676F, '1234567815', 1, '2024-09-24'),
(27, 'Cristina', 'López', 'cristina.lopez@example.com', 0x6861736865645F70617373676F, '1234567816', 1, '2024-09-23'),
(28, 'Antonio', 'Hernández', 'antonio.hernandez@example.com', 0x6861736865645F70617373676F, '1234567817', 1, '2024-09-22'),
(29, 'Juan', 'García', 'juan.garcia@example.com', 0x6861736865645F70617373676F, '1234567818', 1, '2024-09-21'),
(30, 'Ángel', 'Gómez', 'angel.gomez@example.com', 0x6861736865645F70617373676F, '1234567819', 1, '2024-09-20');

-- Insertar 10 usuarios con idTipo 2
INSERT INTO Usuario (idUsuario, nombre, apellido, correo, password, telefono, idTipo, fechaLogUp) VALUES
(31, 'Juan', 'Gómez', 'juan.gomez@example.com', 0x6861736865645F70617373676F, '9876543210', 2, '2024-10-14'),
(32, 'Elena', 'Vázquez', 'elena.vazquez@example.com', 0x6861736865645F70617373676F, '9876543211', 2, '2024-10-13'),
(33, 'Martín', 'Díaz', 'martin.diaz@example.com', 0x6861736865645F70617373676F, '9876543212', 2, '2024-10-12'),
(34, 'Sofía', 'Paredes', 'sofia.paredes@example.com', 0x6861736865645F70617373676F, '9876543213', 2, '2024-10-11'),
(35, 'David', 'Sánchez', 'david.sanchez@example.com', 0x6861736865645F70617373676F, '9876543214', 2, '2024-10-10'),
(36, 'Gabriel', 'Moreno', 'gabriel.moreno@example.com', 0x6861736865645F70617373676F, '9876543215', 2, '2024-10-09'),
(37, 'Isabel', 'Ruiz', 'isabel.ruiz@example.com', 0x6861736865645F70617373676F, '9876543216', 2, '2024-10-08'),
(38, 'Pedro', 'Salazar', 'pedro.salazar@example.com', 0x6861736865645F70617373676F, '9876543217', 2, '2024-10-07'),
(39, 'Roberto', 'Gutiérrez', 'roberto.gutierrez@example.com', 0x6861736865645F70617373676F, '9876543218', 2, '2024-10-06'),
(40, 'Lucía', 'González', 'lucia.gonzalez@example.com', 0x6861736865645F70617373676F, '9876543219', 2, '2024-10-05');

-- Inserta relacion entre usuario y direccion
INSERT INTO UsuarioDireccion (idUsuarioDireccion, idUsuario, idDireccion) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30);

-- Insertar fabricantes con descripciones genéricas por estilo de trabajo
INSERT INTO Fabricante (idFabricante, descripcion, idUsuario) VALUES
(1, 'Fabricante especializado en muebles de madera de pino y cedro, con un enfoque en la producción sostenible.', 21),
(2, 'Fabricante que trabaja con materiales metálicos y plásticos para ofrecer productos modernos y duraderos.', 22),
(3, 'Fabricante que combina materiales como fibra de carbono y madera de nogal para crear piezas únicas y ligeras.', 23),
(4, 'Fabricante que se especializa en el uso de acero, aluminio y hormigón, proporcionando muebles resistentes y minimalistas.', 24),
(5, 'Fabricante que destaca por el uso de cerámica, cuero y tela para crear muebles decorativos y funcionales.', 25),
(6, 'Fabricante conocido por el uso de mármol y granito, diseñando muebles sofisticados con acabados de alta gama.', 26),
(7, 'Fabricante con enfoque en materiales como plomo, hueso y zinc, brindando diseños exclusivos y con un toque industrial.', 27),
(8, 'Fabricante que utiliza madera de abeto y haya, combinando técnicas artesanales con procesos de producción eficientes.', 28),
(9, 'Fabricante que trabaja con maderas duras como eucalipto, ciprés y abedul para crear muebles robustos y de gran durabilidad.', 29),
(10, 'Fabricante especializado en muebles de madera de álamo, olmo y teca, con un enfoque en la creación de piezas naturales y sostenibles.', 30);

-- Insertar tipos de muebles para cada fabricante con detalle de la forma de trabajo
INSERT INTO FabricanteTipoMueble (idFabricanteTipoMueble, idFabricante, idTipoMueboe, descripcion) VALUES
(1, 1, 1, 'Silla ergonómica diseñada para ambientes de trabajo, combinando resistencia y confort.'),
(2, 1, 2, 'Mesa de trabajo hecha de madera de pino, ideal para oficinas de estilo rústico.'),
(3, 1, 3, 'Escritorio funcional con acabados en madera de roble para ambientes de oficina modernos.'),

(4, 2, 4, 'Estante minimalista hecho con materiales reciclados y plástico duradero.'),
(5, 2, 5, 'Cama metálica con estructura robusta y diseño innovador para habitaciones modernas.'),
(6, 2, 6, 'Sofá modular hecho de materiales plásticos reciclados, con enfoque en ligereza y diseño moderno.'),

(7, 3, 7, 'Armario de fibra de carbono, ligero pero resistente, ideal para espacios de almacenamiento innovadores.'),
(8, 3, 8, 'Comoda de madera de nogal, diseñada para espacios elegantes y funcionales.'),
(9, 3, 9, 'Biblioteca de madera de caoba, con diseño exclusivo y acabados finos.'),

(10, 4, 10, 'Reclinable hecho con acero y tapizado de tela resistente, ideal para oficinas.'),
(11, 4, 11, 'Mesa de noche de aluminio, diseñada para espacios modernos y minimalistas.'),
(12, 4, 12, 'Consola de hormigón para espacios exteriores con un estilo industrial.'),

(13, 5, 13, 'Vitrina de cerámica decorativa, con detalles artesanales y elegancia.'),
(14, 5, 14, 'Butaca de cuero de alta calidad, diseñada para salas de estar de lujo.'),
(15, 5, 15, 'Silla de oficina con tela resistente, ideal para largas jornadas laborales.'),

(16, 6, 16, 'Mesa de comedor de mármol con base de granito, estilo clásico y elegante.'),
(17, 6, 17, 'Mesa de café hecha con una estructura de cobre, combinando diseño moderno con funcionalidad.'),
(18, 6, 18, 'Cabecera de granito, ideal para dormitorios con estilo contemporáneo.'),

(19, 7, 19, 'Mesa de centro con base de plomo, con un diseño industrial único.'),
(20, 7, 20, 'Cajonera de hueso trabajada a mano, ideal para decoración vintage.'),
(21, 7, 1, 'Silla de estilo industrial, hecha con metal y madera reciclada.'),

(22, 8, 2, 'Mesa rústica hecha con madera de abeto, adecuada para el hogar.'),
(23, 8, 3, 'Silla cómoda fabricada en madera de haya, resistente y fácil de mantener.'),
(24, 8, 4, 'Vitrina con detalles rústicos de madera de sauce.'),

(25, 9, 5, 'Banco para jardín con estructura en madera de eucalipto, ideal para exteriores.'),
(26, 9, 6, 'Mesa extensible para comedor hecha de madera de ciprés.'),
(27, 9, 7, 'Silla reclinable con estructura en abedul, perfecta para espacios minimalistas.'),

(28, 10, 8, 'Cama de álamo con diseño moderno y atractivo.'),
(29, 10, 9, 'Mueble de almacenamiento en olmo, ideal para decoración vintage.'),
(30, 10, 10, 'Mesa de comedor hecha de madera de teca, ideal para exteriores.');

-- Insertar materiales para cada fabricante con detalle de la forma de trabajo

INSERT INTO FabricanteMaterial (idFabricanteMaterial, idFabricante, idMaterial, detalle) VALUES
(1, 1, 1, 'Utiliza madera de pino proveniente de fuentes sostenibles, priorizando la durabilidad y el acabado natural.'), 
(2, 1, 2, 'Madera de cedro seleccionada por su resistencia y textura, utilizada en muebles de alto rendimiento.'),
(3, 1, 3, 'Madera de roble de alta calidad, empleada para garantizar la solidez y el atractivo estético de los muebles.'),

(4, 2, 4, 'Trabaja con metal reciclado y plástico de alta resistencia, creando diseños modernos y minimalistas.'),
(5, 2, 5, 'Vidrio templado y plástico de alta calidad para muebles resistentes a las condiciones climáticas externas.'),
(6, 2, 6, 'Plástico duradero y reciclable, enfocado en la fabricación de muebles ligeros y con diseños innovadores.'),

(7, 3, 7, 'Fibra de carbono para muebles ligeros y resistentes, con acabados de alta calidad.'),
(8, 3, 8, 'Madera de nogal, utilizada para crear piezas robustas y elegantes, con una óptima resistencia al desgaste.'),
(9, 3, 9, 'Madera de caoba, conocida por su durabilidad y belleza natural, ideal para muebles de lujo.'),

(10, 4, 10, 'Acero inoxidable de alta resistencia, garantizando muebles robustos con un estilo moderno.'),
(11, 4, 11, 'Aluminio de alta durabilidad, empleado para muebles ligeros pero resistentes.'),
(12, 4, 12, 'Hormigón para muebles de exterior, ideales para crear ambientes industriales y duraderos.'),

(13, 5, 13, 'Cerámica y cuero para muebles de estilo rústico, con detalles artesanales únicos.'),
(14, 5, 14, 'Cuero de alta calidad, utilizado para crear muebles de lujo con un acabado elegante y cómodo.'),
(15, 5, 15, 'Tela resistente y duradera, combinada con diseños innovadores para ofrecer muebles funcionales.'),

(16, 6, 16, 'Mármol de alta gama, utilizado en el diseño de muebles sofisticados y de lujo.'),
(17, 6, 17, 'Granito para muebles de alta durabilidad, con un acabado natural y elegante.'),
(18, 6, 18, 'Cobre para muebles con acabados industriales y una estética moderna.'),

(19, 7, 19, 'Plomo utilizado en diseños artísticos con un toque industrial y exclusivo.'),
(20, 7, 20, 'Hueso trabajado a mano para ofrecer detalles únicos en muebles de lujo.'),
(21, 7, 21, 'Techo de zinc para muebles resistentes y de estilo industrial, ideales para exteriores.'),

(22, 8, 22, 'Madera de abeto, usada para crear muebles resistentes y adaptables al entorno.'),
(23, 8, 23, 'Madera de haya, con un acabado suave y duradero, ideal para muebles clásicos.'),
(24, 8, 24, 'Madera de sauce, utilizada para muebles ligeros y con un acabado brillante.'),

(25, 9, 25, 'Madera de eucalipto, ideal para muebles exteriores debido a su resistencia natural.'),
(26, 9, 26, 'Madera de ciprés, seleccionada por su durabilidad en ambientes húmedos y su textura.'),
(27, 9, 27, 'Madera de abedul, utilizada para crear piezas con un diseño rústico y elegante.'),

(28, 10, 28, 'Madera de álamo, conocida por su ligereza y flexibilidad, ideal para muebles modernos.'),
(29, 10, 29, 'Madera de olmo, utilizada en muebles con un estilo rústico y vintage.'),
(30, 10, 30, 'Madera de teca, famosa por su resistencia a la humedad y su durabilidad en muebles de exterior.');

USE DB2_TPI_G21
GO
--Direcciones de los clientes

INSERT INTO Direccion (Calle, Altura, Piso, Departamento, CodigoPostal, Localidad, Observacion) VALUES 
('Av. Warnes', 1100, NULL, NULL, '1414', 'CABA', 'Depósito Norte'),
('Av. Juan B. Justo', 2500, NULL, NULL, '1416', 'CABA', 'Sucursal Oeste'),
('Ruta 9 Km 15', 1022, NULL, NULL, '5000', 'Córdoba', 'Predio Logístico Cb'),
('Av. Belgrano', 450, '1', 'A', '4400', 'Salta', 'Taller Central NOA'),
('Boulevard Pellegrini', 2800, NULL, NULL, '3000', 'Santa Fe', 'Distribuidora Litoral'),
('Av. Mitre', 890, NULL, NULL, '5500', 'Mendoza', 'Repuestera Cuyo'),
('Chiclana', 345, NULL, NULL, '8000', 'Bahía Blanca', 'Despacho Sur'),
('Av. Alem', 1200, '3', 'C', '4000', 'Tucumán', 'Oficina Comercial'),
('Ruta 22', 4500, NULL, NULL, '8300', 'Neuquén', 'Distribución Patagonia'),
('Mariano Moreno', 150, NULL, NULL, '9000', 'Comodoro Rivadavia', 'Depósito Austral'),
('San Martín', 120, '2', 'B', 'M5500', 'Mendoza', 'Express Cuyo'),
('Av. Uruguay', 2400, NULL, NULL, 'N3300', 'Posadas', 'Transferencia NEA'),
('Pellegrini', 1500, NULL, NULL, 'S2000', 'Rosario', 'Pick-up Santa Fe'),
('Av. Paraguay', 1800, NULL, NULL, 'A4400', 'Salta', 'Hub NOA'),
('9 de Julio', 742, '3', 'B', 'T4000', 'Tucumán', 'Regional'),
('Colon', 245, NULL, NULL, 'B7600', 'Mar del Plata', 'Costa Atlántica'),
('Ruta 3', 132, NULL, NULL, 'U9120', 'Puerto Madryn', 'Carga Pesada'),
('Belgrano', 890, NULL, NULL, 'F3600', 'Formosa', 'Control Frontera'),
('Av. Facundo Zuviría', 4200, NULL, NULL, 'S3000', 'Santa Fe', 'Sucursal Norte'),
('Ruta 11 Km 1005', 1922, NULL, NULL, 'H3500', 'Resistencia', 'Hub Chaco');
GO

--Categorias 

INSERT INTO Categorias (Descripcion) VALUES 
('Sistema de Frenos'), ('Filtros y Lubricantes'), ('Suspensión y Dirección'),
('Motor y Embragues'), ('Encendido y Eléctrico'), ('Transmisión y Rodamientos'),
('Distribución y Correas'), ('Climatización y Calefacción'), ('Carrocería y Ópticas'),
('Inyección y Combustible'), ('Accesorios y Herramientas'), ('Escape y Silenciadores');
GO

--Marcas

INSERT INTO Marca (Descripcion, Origen, UrlImagen) VALUES 
('Bosch', 'Alemania', 'http://img.com/bosch.png'), 
('Brembo', 'Italia', 'http://img.com/brembo.png'), 
('Monroe', 'EEUU', 'http://img.com/monroe.png'), 
('Fram', 'Francia', 'http://img.com/fram.png'), 
('SKF', 'Suecia', 'http://img.com/skf.png'), 
('NGK', 'Japón', 'http://img.com/ngk.png'), 
('Sachs', 'Alemania', 'http://img.com/sachs.png'), 
('Valeo', 'Francia', 'http://img.com/valeo.png'), 
('Cofap', 'Brasil', 'http://img.com/cofap.png'), 
('Taranto', 'Argentina', 'http://img.com/taranto.png'),
('Magneti Marelli', 'Italia', 'http://img.com/mm.png'), 
('Mahle', 'Alemania', 'http://img.com/mahle.png'),
('Dayco', 'EEUU', 'http://img.com/dayco.png'),
('Nuke', 'Japón', 'http://img.com/fracing.png'),
('Hella', 'Alemania', 'http://img.com/hella.png'),
('Mirage', 'Alemania', 'http://img.com/luk.png'),
('TotalEnergies', 'Francia', 'http://img.com/total.png'), 
('Castrol', 'Reino Unido', 'http://img.com/castrol.png'),
('Varga', 'Brasil', 'http://img.com/varga.png'),
('Corven', 'Argentina', 'http://img.com/corven.png');
GO

--Proveedores

INSERT INTO Proveedor (RazonSocial, Cuit, Telefono, IdDireccion) VALUES 
('Warnes Mayorista S.A.', '30-11111111-9', '1143001100', 1),
('Filtros del Litoral S.R.L.', '30-22222222-9', '3424667788', 5),
('Importadora de Rodamientos S.A.', '30-33333333-9', '1149998888', 2),
('Frenos del Norte S.A.', '30-44444444-9', '3874223344', 4),
('Distribuidora Cuyana', '30-55555555-9', '2614556677', 6),
('Repuestos Atlántica S.A.', '30-66666666-9', '2234551122', 16),
('Inyección NOA S.R.L.', '30-77777777-9', '3814229900', 8),
('Patagonia Rodamientos', '30-88888888-9', '2994883311', 9),
('NEA Autopartes S.A.', '30-99999999-9', '3704221144', 18),
('Todo Suspensión S.R.L.', '30-12345678-9', '1154889900', 2),
('Fábrica de Embragues AR', '30-87654321-9', '3414992211', 13),
('Luz y Ópticas Mayorista', '30-11223344-9', '1148881122', 1),
('Lubricantes y Filtros Express', '30-55667788-9', '3514776600', 3),
('Correas Globales S.A.', '30-99887766-9', '1134221100', 12),
('Metales Taranto Central', '30-44332211-9', '1145456677', 1);
GO

--Clientes

INSERT INTO Cliente (NroCliente, Dni, Nombre, Apellido, Telefono, IdDireccion, Baja) VALUES 
(1, '30111222', 'Juan', 'Pérez', '1140001111', 1, 0), (2, '31222333', 'Pedro', 'Gómez', '3514002222', 3, 0),
(3, '32333444', 'Luis', 'Rodríguez', '3414003333', 13, 0), (4, '33444555', 'Carlos', 'Sánchez', '2614004444', 6, 0),
(5, '34555666', 'Andrés', 'Fernández', '3874005555', 4, 0), (6, '35666777', 'Jorge', 'López', '3814006666', 8, 0),
(7, '36777888', 'Martin', 'Martínez', '2914007777', 7, 0), (8, '37888999', 'Gabriel', 'González', '2994008888', 9, 0),
(9, '38999000', 'Lucas', 'Álvarez', '3704009999', 18, 0), (10, '39111222', 'Diego', 'Romero', '2234001112', 16, 0),
(11, '40222333', 'Mariano', 'Alonso', '1150001122', 2, 0), (12, '41333444', 'Sergio', 'Torres', '3424003344', 5, 0),
(13, '28444555', 'Roberto', 'Díaz', '1160002233', 1, 0), (14, '29555666', 'Claudio', 'Silva', '3516004455', 3, 0),
(15, '27666777', 'Fernando', 'Suárez', '3416007788', 13, 0), (16, '26777888', 'Marcelo', 'Benítez', '2616009900', 11, 0),
(17, '25888999', 'Walter', 'Franco', '3876001122', 14, 0), (18, '24999000', 'Hugo', 'Acosta', '3816003344', 15, 0),
(19, '23111222', 'Raúl', 'Ramírez', '2916005566', 7, 0), (20, '22222333', 'Oscar', 'Medina', '2996007788', 9, 0);
GO

--Usuario

INSERT INTO Usuario (Descripcion, Usuario, Contraseña, IdCliente) VALUES 
('User Pérez', 'j.perez@empresa.com', 'Perez2024*', 1), 
('User Gómez', 'pgomez@gmail.com', '12345678a', 2), 
('User Rodríguez', 'lrodriguez@outlook.com', 'Teclas987', 3), 
('User Sánchez', 'carlos.sanchez@empresa.org', 'Admin.2025', 4),
('User Fernández', 'afernandez@hotmail.com', 'Fernandez20', 5), 
('User López', 'jlopez@empresa.com', 'Mariposa2', 6), 
('User Martínez', 'm.martinez@gmail.com', 'Martinez!#', 7), 
('User González', 'ggonzalez@outlook.es', 'Ggonzalez99', 8),
('User Álvarez', 'luis.alvarez@empresa.com', 'Alvarez.2023', 9), 
('User Romero', 'dromero@yahoo.com', 'Diego1234', 10), 
('User Alonso', 'malonso@empresa.com', 'AlonsoM_2026', 11), 
('User Torres', 'storres@gmail.com', 'Password123!', 12),
('User Díaz', 'rdiaz@outlook.com', 'Diaz7766', 13), 
('User Silva', 'carlos.silva@empresa.net', 'Carlos.silva', 14), 
('User Suárez', 'fsuarez@gmail.com', 'Suarez12345', 15), 
('User Benítez', 'mbenitez@hotmail.com', 'MartaB2022', 16),
('User Franco', 'wfranco@empresa.com', 'Franco.w9', 17), 
('User Acosta', 'hacosta@gmail.com', 'Acosta2025!', 18), 
('User Ramírez', 'rramirez@outlook.com', 'Ramirez_abc', 19), 
('User Medina', 'omedina@empresa.org', 'Medina9876', 20);
GO

--Transporte

INSERT INTO Transporte (Descripcion, PesoMaximo) VALUES 
('Utilitario Kangoo furgón - Móvil 01', 600.0),
('Mercedes Sprinter chasis - Móvil 02', 1500.0),
('Camión Iveco Daily Pesado - Troncal 03', 4500.0);
GO

--Mercaderia

INSERT INTO Mercaderia (Descripcion, IdCategorias, IdProveedor, IdMarca, CodMercaderia, Stock, PrecioUnitario) VALUES 
('Pastillas de Freno Delanteras', 1, 4, 2, 'PAST-01', 80, 42000.00),
('Discos de Freno Ventilados x2', 1, 4, 2, 'DISC-02', 40, 95000.00),
('Líquido de Frenos DOT4 500ml', 1, 1, 1, 'LIQ-03', 150, 8500.00),
('Bomba de Freno Central', 1, 4, 19, 'BOM-04', 25, 64000.00),
('Cilindro de Freno Trasero', 1, 6, 19, 'CIL-05', 70, 18000.00),
('Filtro de Aceite Sintético', 2, 2, 4, 'FIL-06', 300, 11500.00),
('Filtro de Aire Motor', 2, 2, 4, 'FIL-07', 220, 13400.00),
('Filtro de Habitáculo AC', 2, 13, 12, 'FIL-08', 110, 15000.00),
('Aceite Sintético 5W30 4L', 2, 13, 17, 'LUB-09', 90, 68000.00),
('Aceite Semisintético 10W40 4L', 2, 13, 18, 'LUB-10', 130, 49000.00),
('Amortiguador Delantero Izq', 3, 10, 3, 'AMOR-11', 50, 87000.00),
('Amortiguador Delantero Der', 3, 10, 3, 'AMOR-12', 50, 87000.00),
('Bieleta de Barra Estabilizadora', 3, 5, 20, 'BIE-13', 160, 12500.00),
('Extremo de Dirección Corto', 3, 5, 9, 'EXT-14', 140, 16000.00),
('Parrilla de Suspensión Der', 3, 10, 20, 'PAR-15', 35, 54000.00),
('Kit de Embrague Placa y Disco', 4, 11, 7, 'EMB-16', 20, 230000.00),
('Crapodina Hidráulica', 4, 11, 16, 'CRAP-17', 45, 85000.00),
('Volante Motor Bimasa', 4, 11, 7, 'VOL-18', 12, 510000.00),
('Pistones de Motor STD Juego', 4, 15, 10, 'PIS-19', 15, 175000.00),
('Bomba de Agua Motor', 4, 1, 8, 'BOM-20', 40, 69000.00),
('Bujía de Inyección Pack x4', 5, 1, 6, 'BUJ-21', 200, 38000.00),
('Bobina de Encendido Directa', 5, 7, 1, 'BOB-22', 65, 59000.00),
('Cables de Bujía Juego', 5, 1, 6, 'CAB-23', 85, 24000.00),
('Motor de Arranque Burro', 5, 7, 11, 'ARR-24', 18, 145000.00),
('Alternador 12V 90A', 5, 7, 11, 'ALT-25', 14, 210000.00),
('Rodamiento de Rueda Delantera', 6, 3, 5, 'ROD-26', 120, 34000.00),
('Homocinética Lado Rueda', 6, 8, 5, 'HOM-27', 95, 41000.00),
('Semieje Derecho Completo', 6, 3, 5, 'SEMI-28', 15, 165000.00),
('Triceta de Junta Interna', 6, 8, 9, 'TRI-29', 110, 19000.00),
('Maza Trasera con Rulemán', 6, 3, 5, 'MAZ-30', 55, 73000.00),
('Kit de Distribución Dentada', 7, 2, 5, 'DIST-31', 45, 115000.00),
('Correa Poly-V Accesorios', 7, 14, 13, 'COR-32', 140, 17000.00),
('Tensor Móvil de Correa', 7, 14, 5, 'TEN-33', 75, 39000.00),
('Radiador de Agua Motor', 8, 1, 8, 'RAD-34', 22, 125000.00),
('Condensador de Aire Acond.', 8, 12, 15, 'CON-35', 18, 140000.00),
('Óptica Delantera Izquierda', 9, 12, 15, 'OPT-36', 15, 98000.00),
('Inyector de Nafta Multipunto', 10, 7, 1, 'INY-37', 80, 47000.00),
('Bomba de Combustible Eléctrica', 10, 7, 11, 'BOM-38', 35, 72000.00),
('Juego de Llaves Tubo Profesional', 11, 1, 1, 'HERR-39', 25, 110000.00),
('Silenciador de Escape Trasero', 12, 1, 20, 'ESC-40', 20, 68000.00);
GO

-- Inventario
INSERT INTO Inventario (IdMercaderia, Fecha, Stock) VALUES 
(1, '2026-06-01 08:30:00', 80), 
(2, '2026-06-01 14:15:00', 40), 
(3, '2026-06-02 09:00:00', 150), 
(4, '2026-06-03 11:45:00', 25), 
(5, '2026-06-03 16:20:00', 70),
(6, '2026-06-05 07:10:00', 300), 
(7, '2026-06-05 13:00:00', 220), 
(8, '2026-06-06 10:30:00', 110), 
(9, '2026-06-08 15:25:00', 90), 
(10, '2026-06-09 08:00:00', 130),
(11, '2026-06-10 12:40:00', 50), 
(12, '2026-06-10 12:45:00', 50), 
(13, '2026-06-11 17:15:00', 160), 
(14, '2026-06-12 09:50:00', 140), 
(15, '2026-06-12 11:10:00', 35),
(16, '2026-06-15 08:20:00', 20), 
(17, '2026-06-15 14:35:00', 45), 
(18, '2026-06-16 10:00:00', 12), 
(19, '2026-06-16 16:15:00', 15), 
(20, '2026-06-17 11:30:00', 40),
(21, '2026-06-18 07:45:00', 200), 
(22, '2026-06-19 13:20:00', 65), 
(23, '2026-06-19 15:55:00', 85), 
(24, '2026-06-20 09:10:00', 18), 
(25, '2026-06-20 11:00:00', 14),
(26, '2026-06-22 08:00:00', 120), 
(27, '2026-06-22 14:25:00', 95), 
(28, '2026-06-23 10:40:00', 15), 
(29, '2026-06-24 16:50:00', 110), 
(30, '2026-06-24 17:10:00', 55),
(31, '2026-06-25 08:15:00', 45), 
(32, '2026-06-25 12:30:00', 140), 
(33, '2026-06-26 09:05:00', 75), 
(34, '2026-06-26 15:20:00', 22), 
(35, '2026-06-27 11:00:00', 18),
(36, '2026-06-28 10:30:00', 15), 
(37, '2026-06-29 08:00:00', 80), 
(38, '2026-06-29 11:45:00', 35), 
(39, '2026-06-29 14:20:00', 25), 
(40, '2026-06-29 16:40:00', 20);

-- MedioPago
INSERT INTO MedioPago (Descripcion) VALUES 
('Cuenta Corriente 30 Días'),
('Cuenta Corriente 60 Días'),
('Transferencia Bancaria (CBU/CVU)'),
('ECheq (Cheque Electrónico)'),
('Tarjeta de Crédito Corporativa'),
('Efectivo / Contra Reembolso'),
('Mercado Pago (Débito/Crédito)');

--Seguimiento

INSERT INTO Seguimiento (Descripcion) VALUES 
('En Preparación / Picking'),
('Listo para Despacho / Playón'),
('En Viaje / Troncal en Ruta'),
('En Distribución Local / Última Milla'),
('Entregado en Destino'),
('Rechazado por el Cliente'),
('Devuelto a Depósito Central');
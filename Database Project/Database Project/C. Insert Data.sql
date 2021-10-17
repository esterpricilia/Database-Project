USE TStore

--MASTER (STAFF)
INSERT INTO Staff
VALUES	('ST001', 'Madina Patton', 'Jl Gedung Hijau I 66, Dki Jakarta', '08120901660', 'Female', 'madinap@gmail.com', 3500000),
		('ST002', 'Louisa Bassett', 'Jl Kemang Raya 55,Bangka', '08974527940', 'Female', 'louisa_bassett@gmail.com', 4750000),
		('ST003', 'Marco Keeling', 'Jl Mega Kuningan Bl E/33,Kuningan Timur','08872285009', 'Male', 'keeling2501@hotmail.com', 4755000),
		('ST004', 'Reza Prayoga', 'Jl Jend Basuki Rachmad 53, Palu','082264288511', 'Male', 'rezayoga@gmail.com', 5500000),
		('ST005', 'Tari Suryatmi M.Ak', 'Jl P Senopati 25, Jawa Tengah','08886887955', 'Female', 'tari_yatmi@yahoo.com', 4500000),
		('ST006', 'Rocky Morales', 'Jl Guru Patimpus 15 D, Sumatera Utara','08249846948', 'Male', 'rocky.morales@yahoo.com', 5000000),
		('ST007', 'Ibrahim Pradipta', 'Jl Ir H Juanda 75 BB, Dki Jakarta','085129005293', 'Male', 'dipta2001@ymail.com', 4800000),
		('ST008', 'Jacqueline Houghton', 'Jl Syahdan 30, Dki Jakarta','083168834271', 'Female', 'jacton_cute@rocketmail.com', 4850000),		
		('ST009', 'Leo Setiawan M.Kom.', 'Gg. Basmol Raya No. 981, Tidore', '08977974707', 'Male', 'leo_wawan@hotmail.com', 5750000),
		('ST010', 'Tira Namaga', 'Jl Prof HM Yamin 532, Sumatera Utara', '089876347462', 'Female', 'namaga_tira98@gmail.com', 4850000)

SELECT * FROM Staff


--MASTER (VENDOR)
INSERT INTO Vendor
VALUES	('VE001', 'Cloth Partners', 'Jl Astana Anyar 223 A, Jawa Barat', '082802926323', 'cloth_partners@gmail.com'),
		('VE002', 'Clothology ID', 'Jl P Diponegoro D/24, Denpasar', '08679014732', 'clothologyid@gmail.com'),
		('VE003', 'Fabric Society', 'Jl Kramat Raya 45, Dki Jakarta', '089011074484', 'fabricsociety20@gmail.com'),
		('VE004', 'Cottonistic', 'Jl HOS Cokroaminoto 19, Tasikmalaya', '08371435566', 'cottonistic@gmail.com'),
		('VE005', 'Cottonella', 'Jl Kp Seratus II 14, Jawa Timur', '089816629074', 'cottonella@yahoo.com'),
		('VE006', 'Sablonzilla', 'Jl Jend Sudirman 16,Kayuringin Jaya', '082170174652', 'sablonzilla@yahoo.com'),
		('VE007', 'Saadia Convectjet', 'Jl Jembatan Tiga 36 E,Penjaringan, Jakarta', '08316253988', 'convectjet@yahoo.com'),
		('VE008', 'Shirtaholic', 'JL. A. Yani II No. 40B, Pemuda, Samarinda', '08834841946', 'shirtaholic@gmail.com'),
		('VE009', 'Network Shirt', 'JL. Cihampelas No. 56 B, Bandung', '08956694127', 'network_shirt@yahoo.com'),
		('VE010', 'Poloworks', 'Jl Mangga Besar Raya 58, Dki Jakarta', '08277847721', 'poloworkss@gmail.com')

SELECT * FROM Vendor

--MASTER (CUSTOMER)
INSERT INTO Customer
VALUES	('CU001', 'Monika Clifford', 'Jl Kebalen Tmr 84, Jawa Timur', '08277847721', 'Female', 'monikaclifford98@gmail.com'),
		('CU002', 'Thalia Cote', 'Jl Terusan Arjuna Slt 150, Dki Jakarta', '08790135553', 'Female', 'thalia_cote_star@gmail.com'),
		('CU003', 'Theo Rollins', 'Jl Panjang Kompl Lemigas B/16, Dki Jakarta', '086738688411', 'Male', 'theorollins37@yahoo.com'),
		('CU004', 'Arvin Richardson', 'Jl Asia 172, Sumatera Utara', '082411736671', 'Male', 'arvinson_richard@ymail.com'),
		('CU005', 'Charly Munoz', 'Jl Cihampelas No. 56 B, Bandung', '08224207090', 'Male', 'munozcharly_@hotmail.com'),
		('CU006', 'Nabila Widiastuti', 'Jl Salemba Raya 2 Ged Kenari Baru, Dki Jakarta', '08523239184', 'Female', 'nabilatutituti@gmail.com'),
		('CU007', 'Puti Elvina Halimah', 'Jl Brigjen Sudiarto 131 G, Jawa Tengah', '08582741390', 'Female', 'putihalimah@yahoo.com'),
		('CU008', 'Mahmud Saragih', 'Kp Kerendang 5 RT 002/07, Dki Jakarta', '08282081673', 'Male', 'saragih123@rocketmail.com'),
		('CU009', 'Ajeng Purnawati', 'Jl RP Soenario Gondokoesoemo 15,Peneleh', '08315632676', 'Female', 'ajeng_purnawati@gmail.com'),
		('CU010', 'Pia Septi Oktaviani', 'Jl Lautze 105, Dki Jakarta', '087252628289', 'Female', 'piaoktaviani@yahoo.com'),
		('CU011', 'Belinda Purwanti', 'Jl Terubus II RT 01/04, Dki Jakarta', '083857249128', 'Female', 'belinda_wati@gmail.com'),
		('CU012', 'Farhaan Fowler', 'Jl Anggrek 1, Dki Jakarta', '084491224007', 'Male', 'fowler_farhaan133@yahoo.com'),
		('CU013', 'Maria Pudjiastuti', 'Jl Suka Miskin 100, Jawa Barat', '08418075450', 'Female', 'mariastuti@rocketmail.com'),
		('CU014', 'Conan Rivas', 'Jl Semarang 3/104, Sumatera Utara', '081332947500', 'Male', 'conanrivas@gmail.com'),
		('CU015', 'Zackary Cameron', 'Jl Condongsari Bl A/60 RT 6/25, Jawa Tengah', '08251599970', 'Male', 'zackary_cameron@hotmail.com')

SELECT * FROM Customer

--MASTER (CATEGORY)
INSERT INTO Category
VALUES	('CA001', 'T-Shirt'),
		('CA002', 'Swimsuit'),
		('CA003', 'Tuxedo'),
		('CA004', 'Jacket'),
		('CA005', 'Leggings'),
		('CA006', 'Jeans'),
		('CA007', 'Pants'),
		('CA008', 'Pajama'),
		('CA009', 'Rainwear'),
		('CA010', 'Dress'),
		('CA011', 'V Neck'),
		('CA012', 'Polo Shirt'),
		('CA013', 'Jersey'),
		('CA014', 'Blazer'),
		('CA015', 'Blouse')

SELECT * FROM Category

--MASTER (CLOTH)
INSERT INTO Cloth
VALUES	('CL001', 'CA001', 'Teen Tops', 75000, 25),
		('CL002', 'CA001', 'Modetastic', 175000, 15),
		('CL003', 'CA002', 'Swimworks', 65000, 50),
		('CL004', 'CA003', 'Fashomatic', 80000, 33),
		('CL005', 'CA004', 'Modern Mode', 99000, 10),
		('CL006', 'CA004', 'Jimmy Jammy', 45000, 28),
		('CL007', 'CA005', 'Happy Cloth', 74000, 23),
		('CL008', 'CA006', 'Jimmy Jammy', 135000, 45),
		('CL009', 'CA007', 'Teen Tops', 125000, 15),
		('CL010', 'CA008', 'Jimmy Jammy', 220000, 8),
		('CL011', 'CA008', 'Teen Tops', 275000, 4),
		('CL012', 'CA009', 'Ariola', 300000, 7),
		('CL013', 'CA010', 'Fashomatic', 150000, 15),
		('CL014', 'CA011', 'Button On', 180000, 19),
		('CL015', 'CA012', 'Poloworks', 199000, 22),
		('CL016', 'CA013', 'Clothina', 249000, 31),
		('CL017', 'CA013', 'Clothina', 129000, 20),
		('CL018', 'CA014', 'Button On', 89000, 37),
		('CL019', 'CA015', 'Modern Mode', 59000, 12),
		('CL020', 'CA015', 'Fashomatic', 199000, 9)

SELECT * FROM Cloth

--TRANSACTION (PURCHASE TRANSACTION)
INSERT INTO PurchaseTransaction
VALUES	('PU001', 'VE006', 'ST003', 'CL001', CONVERT(datetime, '2020-02-22 10:34:09'), 35),
		('PU002', 'VE005', 'ST004', 'CL002', CONVERT(datetime, '2020-02-22 11:34:19'), 55),
		('PU003', 'VE001', 'ST004', 'CL007', CONVERT(datetime, '2020-02-22 12:05:23'), 25),
		('PU004', 'VE003', 'ST007', 'CL017', CONVERT(datetime, '2020-02-22 13:10:25'), 40),
		('PU005', 'VE004', 'ST008', 'CL004', CONVERT(datetime, '2020-02-22 15:45:33'), 20),
		('PU006', 'VE002', 'ST009', 'CL003', CONVERT(datetime, '2020-02-22 15:58:44'), 30),
		('PU007', 'VE008', 'ST005', 'CL020', CONVERT(datetime, '2020-03-23 09:48:37'), 10),
		('PU008', 'VE001', 'ST002', 'CL015', CONVERT(datetime, '2020-03-23 11:16:20'), 13),
		('PU009', 'VE009', 'ST001', 'CL009', CONVERT(datetime, '2020-03-23 12:28:25'), 15),
		('PU010', 'VE010', 'ST006', 'CL011', CONVERT(datetime, '2020-03-23 16:37:12'), 12),
		('PU011', 'VE007', 'ST010', 'CL005', CONVERT(datetime, '2020-04-24 11:22:20'), 15),
		('PU012', 'VE005', 'ST010', 'CL012', CONVERT(datetime, '2020-04-24 12:47:15'), 17),
		('PU013', 'VE004', 'ST007', 'CL019', CONVERT(datetime, '2020-04-25 10:22:26'), 23),
		('PU014', 'VE003', 'ST008', 'CL013', CONVERT(datetime, '2020-05-25 14:53:17'), 28),
		('PU015', 'VE009', 'ST001', 'CL010', CONVERT(datetime, '2020-05-25 17:19:39'), 14),
		('PU016', 'VE010', 'ST005', 'CL019', CONVERT(datetime, '2020-06-01 11:39:39'), 35),
		('PU017', 'VE003', 'ST010', 'CL014', CONVERT(datetime, '2020-06-01 14:27:44'), 55),
		('PU018', 'VE007', 'ST009', 'CL014', CONVERT(datetime, '2020-06-01 14:27:44'), 47),
		('PU019', 'VE008', 'ST004', 'CL011', CONVERT(datetime, '2020-06-02 10:49:12'), 23),
		('PU020', 'VE006', 'ST007', 'CL005', CONVERT(datetime, '2020-06-04 13:23:11'), 29),
		('PU021', 'VE009', 'ST002', 'CL006', CONVERT(datetime, '2020-06-04 14:32:08'), 19),
		('PU022', 'VE005', 'ST008', 'CL016', CONVERT(datetime, '2020-06-04 17:17:13'), 46),
		('PU023', 'VE003', 'ST003', 'CL018', CONVERT(datetime, '2020-06-04 18:19:59'), 37),
		('PU024', 'VE001', 'ST010', 'CL008', CONVERT(datetime, '2020-06-07 16:27:34'), 86),
		('PU025', 'VE002', 'ST006', 'CL008', CONVERT(datetime, '2020-06-07 16:27:34'), 14)
		
SELECT * FROM PurchaseTransaction

--TRANSACTION  (SALES TRANSACTION)
INSERT INTO SalesTransaction
VALUES	('SA001', 'CU003', 'ST005', 'CL011', CONVERT(datetime, '2020-05-15 11:29:19'), 3),
		('SA002', 'CU011', 'ST004', 'CL012', CONVERT(datetime, '2020-05-15 14:18:33'), 2),
		('SA003', 'CU014', 'ST003', 'CL001', CONVERT(datetime, '2020-05-26 14:26:40'), 23),
		('SA004', 'CU008', 'ST001', 'CL003', CONVERT(datetime, '2020-05-26 16:35:56'), 6),
		('SA005', 'CU009', 'ST007', 'CL018', CONVERT(datetime, '2020-05-27 10:54:23'), 4),
		('SA006', 'CU002', 'ST006', 'CL010', CONVERT(datetime, '2020-05-27 12:22:49'), 1),
		('SA007', 'CU015', 'ST005', 'CL017', CONVERT(datetime, '2020-05-27 15:47:21'), 22),
		('SA008', 'CU001', 'ST001', 'CL014', CONVERT(datetime, '2020-05-27 16:30:12'), 9),
		('SA009', 'CU012', 'ST002', 'CL013', CONVERT(datetime, '2020-05-27 17:29:09'), 13),
		('SA010', 'CU005', 'ST008', 'CL006', CONVERT(datetime, '2020-05-28 12:23:36'), 10),
		('SA011', 'CU004', 'ST009', 'CL008', CONVERT(datetime, '2020-05-28 13:58:21'), 25),
		('SA012', 'CU007', 'ST010', 'CL005', CONVERT(datetime, '2020-05-28 16:33:49'), 4),
		('SA013', 'CU010', 'ST003', 'CL002', CONVERT(datetime, '2020-05-29 14:44:24'), 9),
		('SA014', 'CU013', 'ST008', 'CL004', CONVERT(datetime, '2020-05-29 15:54:12'), 2),
		('SA015', 'CU006', 'ST005', 'CL020', CONVERT(datetime, '2020-05-30 13:13:22'), 26),
		('SA016', 'CU011', 'ST006', 'CL014', CONVERT(datetime, '2020-06-03 11:23:54'), 11),
		('SA017', 'CU014', 'ST008', 'CL019', CONVERT(datetime, '2020-06-03 13:26:45'), 17),
		('SA018', 'CU007', 'ST009', 'CL016', CONVERT(datetime, '2020-06-03 14:37:55'), 8),
		('SA019', 'CU009', 'ST010', 'CL009', CONVERT(datetime, '2020-06-04 10:27:34'), 250),
		('SA020', 'CU012', 'ST004', 'CL004', CONVERT(datetime, '2020-06-04 13:48:54'), 17),
		('SA021', 'CU013', 'ST007', 'CL013', CONVERT(datetime, '2020-06-04 16:34:45'), 8),
		('SA022', 'CU010', 'ST010', 'CL007', CONVERT(datetime, '2020-06-07 11:39:45'), 23),
		('SA023', 'CU004', 'ST001', 'CL015', CONVERT(datetime, '2020-06-07 16:55:56'), 220),
		('SA024', 'CU008', 'ST002', 'CL012', CONVERT(datetime, '2020-11-07 17:33:28'), 7),
		('SA025', 'CU009', 'ST003', 'CL001', CONVERT(datetime, '2020-11-09 16:28:55'), 12)
		
SELECT * FROM SalesTransaction

--TRANSACTION DETAIL (SALES DETAIL)
INSERT INTO SalesDetail
VALUES	('SA001','CL011'),
		('SA002','CL012'),
		('SA003','CL001'),
		('SA004','CL003'),
		('SA005','CL018'),
		('SA006','CL010'),
		('SA007','CL017'),
		('SA008','CL014'),
		('SA009','CL013'),
		('SA010','CL006'),
		('SA011','CL008'),
		('SA012','CL005'),
		('SA013','CL002'),
		('SA014','CL004'),
		('SA015','CL020'),
		('SA016','CL014'),
		('SA017','CL019'),
		('SA018','CL016'),
		('SA019','CL009'),
		('SA020','CL004'),
		('SA021','CL013'),
		('SA022','CL007'),
		('SA023','CL015'),
		('SA024','CL012'),
		('SA025','CL001')

SELECT * FROM SalesDetail

--TRANSACTION DETAIL (PURCHASE DETAIL)
INSERT INTO PurchaseDetail
VALUES	('PU001', 'CL001'),
		('PU002', 'CL002'),
		('PU003', 'CL007'),
		('PU004', 'CL017'),
		('PU005', 'CL004'),
		('PU006', 'CL003'),
		('PU007', 'CL020'),
		('PU008', 'CL015'),
		('PU009', 'CL009'),
		('PU010', 'CL011'),
		('PU011', 'CL005'),
		('PU012', 'CL012'),
		('PU013', 'CL019'),
		('PU014', 'CL013'),
		('PU015', 'CL010'),
		('PU016', 'CL019'),
		('PU017', 'CL014'),
		('PU018', 'CL014'),
		('PU019', 'CL011'),
		('PU020', 'CL005'),
		('PU021', 'CL006'),
		('PU022', 'CL016'),
		('PU023', 'CL018'),
		('PU024', 'CL008'),
		('PU025', 'CL008')
		
SELECT * FROM PurchaseDetail


-- CUSTOMER MEMBELI BAJU --

-- 1. Customer wajib mengisi data pribadi bila belum pernah membeli
INSERT INTO Customer
VALUES	('CU016', 'Dwayne Johnson', 'Jl Panglima Ksatria 54, Jakarta Utara', '081234532278', 'Male', 'Djohnson33@gmail.com')

-- 2. Data barang di beli customer di input ke table SalesTransaction
INSERT INTO SalesTransaction
VALUES	('SA026', 'CU016', 'ST009', 'CL015', '2020-05-26 11:29:19', 2)

-- 3. Isi data pada table SalesDetail
INSERT INTO SalesDetail
VALUES	('SA026', 'CL015')

-- 4. Update jumlah stok ke table CLOTH
UPDATE Cloth
SET Stock-= 2
WHERE ClothesID = 'CL015'


-- RESTOCK BAJU --

-- 1. Vendor wajib mengisi data pribadi bila belum pernah terdaftar
INSERT INTO Vendor
VALUES	('VE011', 'Jimmy Clothes', 'Jl. Raya Agung, Jawa Timur', '0821555678897', 'Jimmycloth12@gmail.com')

-- 2. Data barang di beli dari Vendor di input ke table PurchaseTransactions
INSERT INTO PurchaseTransaction
VALUES	('PU026', 'VE011', 'ST007', 'CL010', '2020-02-22 15:24:09', 20)

-- 3. Isi data pada table SalesDetail
INSERT INTO PurchaseDetail
VALUES	('PU026', 'CL010')

--4. Update jumlah stok ke table CLOTH ( jika sudah pernah membeli brand yang sama )
UPDATE Cloth
SET Stock += 20
WHERE ClothesID = 'CL010'

--5. Jika pembelian ini merupakan brand baru yang belum dimiliki Tstore tambah data ke table cloth
INSERT INTO Cloth
VALUES	('CL010', 'CA004', 'Bellment', 125000, 20)
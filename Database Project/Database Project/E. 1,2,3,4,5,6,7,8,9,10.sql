USE TStore

-- nomor 1
SELECT 	[Transaction Count] = COUNT(PurchaseID),
		Staff.[Name] AS StaffName, 
		Vendor.[Name] AS VendorName
FROM	PurchaseTransaction, Staff, Vendor
WHERE	PurchaseTransaction.StaffID = Staff.StaffID AND 
		PurchaseTransaction.VendorID = Vendor.VendorID AND 
		Vendor.Name LIKE '%o%' AND 
		Staff.Salary BETWEEN 5000000 AND 10000000
GROUP BY  Staff.[Name], Vendor.[Name]

--nomor 2
SELECT	SalesId = st.SalesID, 
		SalesDate, 
		[Name] AS CustomerName, 
		[Address] AS CustomerAddress
FROM	SalesTransaction st, Customer c, SalesDetail sd, Cloth c1
WHERE	st.CustomerID = c.CustomerID AND 
		st.SalesID = sd.SalesID AND 
		sd.ClothesID = c1.ClothesID AND
		DATEPART(dd, SalesDate) = 15 AND c1.Price > 150000

-- nomor 3
SELECT	DATENAME(MONTH, SalesDate) AS [Month],
		COUNT(st.SalesID) AS [Transaction Count],
		SUM(Quantity) AS [Cloth Sold Count]
FROM	SalesTransaction st, Staff s, Cloth c, SalesDetail sd
WHERE	st.StaffID = s.StaffID AND 
		st.SalesID = sd.SalesID AND
		sd.ClothesID = c.ClothesID AND 
		Gender LIKE 'Female' AND Price > 70000 AND
		Datepart(MONTH, SalesDate) = datepart(MONTH, GETDATE())-1
GROUP BY st.SalesID, st.SalesDate

-- nomor 4
SELECT	SUBSTRING(Brand, CHARINDEX(' ', Brand) + 1, LEN(Brand))AS [Brand Last Name],
		MAX(Quantity) AS [Maximum Cloth(s) Sold]
FROM	Cloth c, SalesTransaction st, SalesDetail sd
WHERE	st.SalesID = sd.SalesID AND
		sd.ClothesID = c.ClothesID
GROUP BY c.Brand
HAVING SUM(Quantity) > 5 AND SUM(Quantity) < 10

--nomor 5
SELECT	[ClothBrand] = Brand,
		[ClothPrice] = Price,
		Stock
FROM	Cloth, (SELECT Average = AVG(Price)
				FROM Cloth, Vendor, PurchaseTransaction 
				WHERE Cloth.ClothesID = PurchaseTransaction.ClothesID AND 
				PurchaseTransaction.VendorID = Vendor.VendorID AND 
				[Name] LIKE 'Saad%') AS PriceAvg
WHERE	Price BETWEEN (PriceAvg.Average - 35000) AND PriceAvg.Average

--nomor 6
SELECT	SalesDate = CONVERT(CHAR, SalesDate,101),
		Brand AS ClothBrand,
		Quantity
FROM	Cloth c , SalesTransaction st, SalesDetail sd, (SELECT Total = COUNT(SalesID)
														FROM SalesTransaction
														WHERE MONTH(SalesDate) = 05) AS CountTrans
WHERE	st.SalesID = sd.SalesID AND
		sd.ClothesID = c.ClothesID AND 
		Quantity > CountTrans.Total
ORDER BY  Quantity ASC

--nomor 7
SELECT	PurchaseId = PurchaseID,
		[Staff Name] = LOWER([Name]),
		[Staff Salary] = CONCAT('IDR ', Salary),
		[Purchase Date] = CONVERT(VARCHAR, PurchaseDate, 107),
		[Total Quantity] = SUM(Quantity)
FROM PurchaseTransaction pt, Staff s, (	SELECT minumum = MIN(Quantity)
										FROM PurchaseTransaction
										WHERE DATEPART(MONTH, PurchaseDate) = 4) AS minQuantity
WHERE	s.StaffID = pt.StaffID AND
		Quantity > minQuantity.minumum
GROUP BY PurchaseID, [Name] ,Salary, PurchaseDate
	
--nomor 8
SELECT	[Vendor Id] = RIGHT(v.VendorID, 3),
		[Vendor Name] = [Name],
		[Clothes Bought] = CONCAT(SUM(Quantity), ' piece(s)') ,
		[Vendor Phone] = REPLACE(PhoneNumber, '08', '+62')
FROM	Vendor v, PurchaseTransaction pt, (	SELECT Average = AVG(Quantity)
											FROM PurchaseTransaction) AS AvgQuantity 
WHERE	v.VendorID = pt.VendorID AND
		Quantity < 100 AND Quantity > AvgQuantity.Average
GROUP BY v.VendorID, v.Name, v.PhoneNumber

--nomor 9
CREATE VIEW StoreSalesView AS
SELECT	SalesId = st.SalesID, 
		[CustomerName] = c.[Name], 
		[CustomerPhone] = c.PhoneNumber,
		[Cloth Average Price] = 'IDR' + CAST(CAST(AVG(cl.Price) AS numeric(10,2)) AS varchar),
		[Sales Quantity] = CAST(SUM(Quantity) AS varchar) + ' piece(s)'
FROM	Customer c JOIN SalesTransaction st ON c.CustomerID = st.CustomerID JOIN 
		SalesDetail sd ON sd.SalesID = st.salesID JOIN
		Cloth cl ON cl.CLothesID = sd.ClothesID
WHERE Price > 100000 AND Quantity > 4
GROUP BY st.SalesID, c.[Name], c.PhoneNumber

SELECT * FROM StoreSalesView

--nomor 10
CREATE VIEW StorePurchaseView AS
SELECT	[Purchase Month] =  DATENAME(MONTH, DATEADD(MONTH, 0, PurchaseDate)),
		[Minimum Purchase Quantity] = MIN(Quantity),
		[Purchased Cloth Count] = SUM(Quantity)
FROM	PurchaseTransaction pt 
GROUP BY PurchaseDate
HAVING	MIN(Quantity) > 10  AND SUM(Quantity) > 1

SELECT * FROM StorePurchaseView

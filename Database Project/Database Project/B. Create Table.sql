	CREATE DATABASE TStore
	USE TStore


CREATE TABLE Staff
(
	 StaffID CHAR(5) PRIMARY KEY
	 CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]'),
	 [Name] VARCHAR(55) ,
	 [Address] VARCHAR(255),
	 PhoneNumber VARCHAR(15) 
	 CHECK(PhoneNumber LIKE '08%'), 
	 Gender VARCHAR(10) ,
	 Email VARCHAR(55) ,
	 Salary INTEGER 
	 CHECK (Salary >= 3000000)

)

CREATE TABLE Vendor
(
	 VendorID CHAR(5) PRIMARY KEY
	 CHECK(VendorID LIKE 'VE[0-9][0-9][0-9]'),
	 [Name] VARCHAR(55) NOT NULL,
	 [Address] VARCHAR(255) NOT NULL,
	 PhoneNumber VARCHAR(15) 
	 CHECK(PhoneNumber LIKE '08%') NOT NULL, 
	 Email VARCHAR(55) NOT NULL

)

CREATE TABLE Customer
(
	 CustomerID CHAR(5) PRIMARY KEY
	 CHECK( CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	 [Name] VARCHAR(55) NOT NULL,
	 [Address] VARCHAR(255) NOT NULL,
	 PhoneNumber VARCHAR(15) 
	 CHECK(PhoneNumber LIKE '08%') NOT NULL,
	 Gender VARCHAR(10) NOT NULL,
	 Email VARCHAR(55) NOT NULL

)

CREATE TABLE Category
(
	CategoryID CHAR(5) PRIMARY KEY
	 CHECK(CategoryID LIKE 'CA[0-9][0-9][0-9]'),
	 [Name] VARCHAR(55) NOT NULL
)

CREATE TABLE Cloth
(
	 ClothesID CHAR(5) PRIMARY KEY
	 CHECK(ClothesID LIKE 'CL[0-9][0-9][0-9]'),
	 CategoryID CHAR(5)
	 CONSTRAINT Category_FK FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
	 Brand VARCHAR(20) NOT NULL
	 CHECK (LEN(Brand) > 5),
	 Price NUMERIC(10,2) NOT NULL
	 CHECK (Price >= 20000),
	 Stock INTEGER

)

CREATE TABLE SalesTransaction
(
	 SalesID CHAR(5) PRIMARY KEY
	 CHECK(SalesID LIKE 'SA[0-9][0-9][0-9]'),
	 CustomerID CHAR(5)
	 CONSTRAINT Customer_FK FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
	 StaffID CHAR(5)
	 CONSTRAINT Staff_FK FOREIGN KEY (StaffID) REFERENCES Staff(StaffID),
	 ClothesID CHAR(5)
	 CONSTRAINT Clothes_FK FOREIGN KEY (ClothesID) REFERENCES Cloth(ClothesID),
	 SalesDate DATETIME NOT NULL 
	 CHECK (SalesDate < DATEADD (HOUR, -1 ,GETDATE()) ),
	 Quantity INTEGER NOT NULL
)

CREATE TABLE PurchaseTransaction
(
	PurchaseID CHAR(5) PRIMARY KEY
	 CHECK(PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
	 VendorID CHAR(5)
	 CONSTRAINT Vendor_FK FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID),
	 StaffID CHAR(5)
	 CONSTRAINT StaffPurchase_FK FOREIGN KEY (StaffID) REFERENCES Staff(StaffID),
	 ClothesID CHAR(5)
	 CONSTRAINT ClothesPurchase_FK FOREIGN KEY (ClothesID) REFERENCES Cloth(ClothesID),
	 PurchaseDate DATETIME NOT NULL 
	 CHECK (PurchaseDate < DATEADD (HOUR, -1 ,GETDATE()) ),
	 Quantity INTEGER NOT NULL
)

CREATE TABLE SalesDetail
(
	SalesID CHAR(5)
	 CONSTRAINT SalesDetail_FK FOREIGN KEY (SalesID) REFERENCES SalesTransaction(SalesID),
	 ClothesID CHAR(5)
	 CONSTRAINT ClothesSalesDetail_FK FOREIGN KEY (ClothesID) REFERENCES Cloth(ClothesID),
	 PRIMARY KEY(SalesID, ClothesID)
)

CREATE TABLE PurchaseDetail
(
	PurchaseID CHAR(5)
	 CONSTRAINT PurchaseDetail_FK FOREIGN KEY (PurchaseID) REFERENCES PurchaseTransaction(PurchaseID),
	 ClothesID CHAR(5)
	 CONSTRAINT ClothesPurchaseDetail_FK FOREIGN KEY (ClothesID) REFERENCES Cloth(ClothesID),
	 PRIMARY KEY(PurchaseID, ClothesID)
)


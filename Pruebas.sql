
Select * from Region where RegionID = 4

Select * from dbo.Categories
Select * from dbo.CustomerCustomerDemo
Select * from dbo.CustomerDemographics
Select * from dbo.Customers
Select * from dbo.Employees
Select * from dbo.EmployeeTerritories
Select * from dbo.OrderDetails
Select * from dbo.Orders
Select * from dbo.Products
Select * from dbo.Region
Select * from dbo.TB_Bitacora
Select * from dbo.tb_infotablas
Select * from dbo.shippers
Select * from dbo.Suppliers
Select * from dbo.Territories

ALTER TABLE EmployeeTerritories NOCHECK CONSTRAINT ALL
ALTER TABLE Territories         NOCHECK CONSTRAINT ALL
Alter table EmployeeTerritories Alter column TerritoryID int
ALTER TABLE Territories Alter Column TerritoryID INT;
ALTER TABLE Territories CHECK CONSTRAINT ALL
ALTER TABLE EmployeeTerritories CHECK CONSTRAINT ALL

select * from history_store
------------------------------------------------------------------------------------
--------------------------------------------Pruebas para Regions-------------------
insert into Region (RegionID,RegionDescription) 
Values(583,'Insertado1')

insert into Region (RegionID,RegionDescription) 
Values(54,'Insertado2') 

insert into Region (RegionID,RegionDescription) 
Values(525,'Insertado3')  

Update Region set RegionDescription='mismo Actualizado 1' where RegionID= 525
Update Region set RegionDescription='Miguel' where RegionID= 524

Delete from Region where RegionID=583
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------


----------------------------------------------------------------------------------
------------------------Pruebas para Categorias-----------------------------------

SET IDENTITY_INSERT Categories ON
insert into Categories (CategoryID,CategoryName,Description) values(3000,'Confites','Categorias de Prueba 1')
SET IDENTITY_INSERT Categories OFF


SET IDENTITY_INSERT Categories ON
insert into Categories (CategoryID,CategoryName,Description) values(2501,'Agricultura','Categorias de Prueba 2')
SET IDENTITY_INSERT Categories OFF



insert into Categories (CategoryID,CategoryName,Description) values(2502,'Agricultura','Categorias de Prueba 3')

Update Categories set CategoryName='Ganaderia' where CategoryID= 2501

delete from Categories where CategoryID=3000
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------
--------------------------Pruebas para CustomerDemographic_History-------------------------

insert into CustomerDemographics(CustomerTypeID, CustomerDesc) values (123,'Miguel ya casi para Base')
Update CustomerDemographics set CustomerDesc='Miguel se quedo :(' where CustomerTypeID=123
delete from CustomerDemographics where CustomerTypeID=123
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------------
-------------------------------------Prubas para Customers---------------------------------

insert into Customers(CustomerID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax) values('ALFI','TIGO','Miguel','Tittle','Direccion','City','Rgion','Postal','Country','Phone','Fax')
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
-------------------------------------Prueba de OrderDetails-----------------------------------
ALTER TABLE OrderDetails NOCHECK CONSTRAINT ALL
Insert into OrderDetails(OrderID,ProductID,UnitPrice,Quantity,Discount) values(128,1234,12.21,123,123) 
ALTER TABLE OrderDetails CHECK CONSTRAINT ALL

ALTER TABLE OrderDetails NOCHECK CONSTRAINT ALL
Update OrderDetails set UnitPrice=11111 values(123,1234,12.21,123,123) 
ALTER TABLE OrderDetails CHECK CONSTRAINT ALL

ALTER TABLE OrderDetails NOCHECK CONSTRAINT ALL
delete from OrderDetails where OrderID=128 
ALTER TABLE OrderDetails CHECK CONSTRAINT ALL

------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------
--------------------------------Pruebas de Products---------------------------------------------

SET IDENTITY_INSERT Products ON
insert into Products(ProductID,ProductName,SupplierID,CategoryID,QuantityPerUnit,UnitPrice,UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued) 
	values(510,'Pan',1,3,'25',20.5,52,20,3,1);
SET IDENTITY_INSERT Products OFF


ALTER TABLE OrderDetails NOCHECK CONSTRAINT ALL
Update Products set ProductName='Computadores'where ProductID=500 
ALTER TABLE OrderDetails CHECK CONSTRAINT ALL


ALTER TABLE OrderDetails NOCHECK CONSTRAINT ALL
Delete from  Products where ProductID=500 
ALTER TABLE OrderDetails CHECK CONSTRAINT ALL
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
------------------------------Prueba de Shippers------------------------------------------------

SET IDENTITY_INSERT Shippers ON
insert into Shippers (ShipperID,CompanyName,Phone) values (123456,'Tesla','98477742')
SET IDENTITY_INSERT Shippers OFF


SET IDENTITY_INSERT Shippers ON
update Shippers set CompanyName='TeslaModificado'where ShipperID=123456
SET IDENTITY_INSERT Shippers OFF

ALTER TABLE Shippers NOCHECK CONSTRAINT ALL
Delete from  Shippers where ShipperID=123456
ALTER TABLE Shippers CHECK CONSTRAINT ALL
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
------------------------------Prueba de Supplier------------------------------------------------
SET IDENTITY_INSERT Suppliers ON
insert into Suppliers(SupplierID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
			values (123,'Company','Contact','Tittle','Address','City','Region','PostalCode','Country','Phone','Fax','Home')
SET IDENTITY_INSERT Suppliers OFF


SET IDENTITY_INSERT Suppliers ON
update Suppliers set CompanyName='tESLA' where SupplierID=123
SET IDENTITY_INSERT Suppliers OFF

ALTER TABLE Suppliers NOCHECK CONSTRAINT ALL
Delete from  Suppliers where SupplierID=123
ALTER TABLE Suppliers CHECK CONSTRAINT ALL
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
------------------------------Prueba de Territories---------------------------------------------


insert into Territories(TerritoryID,TerritoryDescription,RegionID) 
			values ('706','Hahahaa',2)

SET IDENTITY_INSERT Territories ON
update Territories set TerritoryDescription='Terreno de Juan Robando' where TerritoryID=68666
SET IDENTITY_INSERT Territories OFF

ALTER TABLE Territories NOCHECK CONSTRAINT ALL
Delete from  Territories where SupplierID=123
ALTER TABLE Territories CHECK CONSTRAINT ALL































insert into CustomerDemographics(CustomerTypeID,CustomerDesc) values (75,'Tipo')
insert into CustomerCustomerDemo (CustomerID,CustomerTypeID) values ('ALFKI',75)




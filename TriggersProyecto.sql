-----------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------- BITACORA DE EVENTOS PARA TABLA REGION-------------------------
Go
CREATE TRIGGER trg_Region_IUD ON dbo.Region
AFTER INSERT, UPDATE, DELETE
AS BEGIN


DECLARE  @regionID INT,
         @RegionDescription VARCHAR(50),
         @Department VARCHAR(50)
---- Get data from inserted/ updated
SELECT @regionID          = RegionID,
       @RegionDescription = RegionDescription
       FROM inserted

 ---- Get data from deleted
 SELECT @regionID= RegionID,
       @RegionDescription = RegionDescription
       FROM deleted

  -- Insert Case
   IF EXISTS( SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) 
    BEGIN
            INSERT INTO TB_Bitacora( Fecha,oldValue, newValue, TableID, ActionType)

			Values( GetDate(), -1, (SELECT RegionID FROM dbo.Region where RegionID = @regionID), (select tb_id from tb_infotablas where tb_nombre='Region'), 'insert' )
    END
    
    -- Update Case
   IF EXISTS( SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
     BEGIN
            INSERT INTO TB_Bitacora(Fecha,oldValue,newValue,TableID,ActionType)
			Values(GetDate(),(SELECT RegionID FROM deleted), (SELECT RegionID FROM inserted),(select tb_id from tb_infotablas where tb_nombre= 'Region' ),'Update')
    END

       -- Delete Case
   IF EXISTS( SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
       BEGIN
            INSERT INTO TB_Bitacora(Fecha,oldValue,newValue,TableID,ActionType)
			Values(GetDate(),(SELECT RegionID FROM deleted), -1 ,(select tb_id from tb_infotablas where tb_nombre= 'Region'),'Deleted')
    END
END

/*
insert into Region (RegionID,RegionDescription) 
Values(230,'Alexy') 



dbo.Region set RegionDescription = 'Honduras' 
where RegionDescription = 'Southern' 
*/
-----------------------------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------- BITACORA DE EVENTOS PARA TABLA CATEGORIES ---------------------
Go
CREATE TRIGGER trg_Categories_History ON dbo.Categories
AFTER INSERT, UPDATE, DELETE
AS BEGIN


DECLARE  @CategorieID INT

---- Get data from inserted/ updated
SELECT @CategorieID = CategoryID
     FROM inserted

 ---- Get data from deleted
 SELECT @CategorieID = CategoryID
       FROM deleted

  -- Insert Case
   IF EXISTS( SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) 
    BEGIN
            INSERT INTO TB_Bitacora( Fecha,oldValue, newValue, TableID, ActionType)
			Values( GetDate(), -1, (SELECT  CategoryID FROM dbo.Categories where CategoryID = @CategorieID), (select tb_id from tb_infotablas where tb_nombre='Categories'), 'insert' )
    END
    
    -- Update Case
   IF EXISTS( SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
     BEGIN
            INSERT INTO TB_Bitacora(Fecha,oldValue,newValue,TableID,ActionType)
			Values(GetDate(),(SELECT CategoryID FROM deleted), (SELECT CategoryID FROM inserted),(select tb_id from tb_infotablas where tb_nombre= 'Categories' ),'Update')
    END

       -- Delete Case
   IF EXISTS( SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
       BEGIN
            INSERT INTO TB_Bitacora(Fecha,oldValue,newValue,TableID,ActionType)
			Values(GetDate(),(SELECT CategoryID FROM deleted), -1 ,(select tb_id from tb_infotablas where tb_nombre= 'Categories'),'Deleted')
    END
END

/*
Insert into categories (CategoryName,Description)
values ('Agricultura','Es solo una prueba')
*/
-----------------------------------------------------------------------------------------------------------------------------------------                


-----------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------- BITACORA DE EVENTOS PARA TABLA CustomerDemographics ----------
Go
CREATE TRIGGER trg_CustomerDemographics_History ON dbo.CustomerDemographics
AFTER INSERT, UPDATE, DELETE
AS BEGIN


DECLARE  @CustomertypeID INT

---- Get data from inserted/ updated
SELECT @CustomertypeID = CustomerTypeID
     FROM inserted

 ---- Get data from deleted
 SELECT @CustomertypeID = CustomerTypeID
       FROM deleted

  -- Insert Case
   IF EXISTS( SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) 
    BEGIN
            INSERT INTO TB_Bitacora( Fecha,oldValue, newValue, TableID, ActionType)
			Values( GetDate(), -1, (SELECT CustomerTypeID FROM dbo.CustomerDemographics where CustomerTypeID = @CustomertypeID), (select tb_id from tb_infotablas where tb_nombre='CustomerDemographics'), 'insert' )
    END
    
    -- Update Case
   IF EXISTS( SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
     BEGIN
            INSERT INTO TB_Bitacora(Fecha,oldValue,newValue,TableID,ActionType)
			Values(GetDate(),(SELECT CustomerTypeID FROM deleted), (SELECT CustomerTypeID FROM inserted),(select tb_id from tb_infotablas where tb_nombre= 'CustomerDemographics' ),'Update')
    END

       -- Delete Case
   IF EXISTS( SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
       BEGIN
            INSERT INTO TB_Bitacora(Fecha,oldValue,newValue,TableID,ActionType)
			Values(GetDate(),(SELECT CustomerTypeID FROM deleted), -1 ,(select tb_id from tb_infotablas where tb_nombre= 'CustomerDemographics'),'Deleted')
    END
END

/*
Insert into CustomerDemographics (CustomerTypeID,CustomerDesc)
values (660,'Alexy es gay')
*/
-----------------------------------------------------------------------------------------------------------------------------------------                     

-----------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------- BITACORA DE EVENTOS PARA TABLA Customers ----------
Go
CREATE TRIGGER trg_Customers_History ON dbo.Customers
AFTER INSERT, UPDATE, DELETE
AS BEGIN


DECLARE  @CustomerID INT

---- Get data from inserted/ updated
SELECT @CustomerID = CustomerID
     FROM inserted

 ---- Get data from deleted
 SELECT @CustomerID = CustomerID
       FROM deleted

  -- Insert Case
   IF EXISTS( SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) 
    BEGIN
            INSERT INTO TB_Bitacora( Fecha,oldValue, newValue, TableID, ActionType)
			Values( GetDate(), -1, (SELECT CustomerID FROM dbo.Customers where CustomerID = @CustomerID), (select tb_id from tb_infotablas where tb_nombre='Customers'), 'insert' )
    END
    
    -- Update Case
   IF EXISTS( SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
     BEGIN
            INSERT INTO TB_Bitacora(Fecha,oldValue,newValue,TableID,ActionType)
			Values(GetDate(),(SELECT CustomerID FROM deleted), (SELECT CustomerID FROM inserted),(select tb_id from tb_infotablas where tb_nombre= 'Customers' ),'Update')
    END

       -- Delete Case
   IF EXISTS( SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
       BEGIN
            INSERT INTO TB_Bitacora(Fecha,oldValue,newValue,TableID,ActionType)
			Values(GetDate(),(SELECT CustomerID FROM deleted), -1 ,(select tb_id from tb_infotablas where tb_nombre= 'Customers'),'Deleted')
    END
END

/*
INSERT into Customers(CustomerID, CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax)
VALUES('hhh','Wartian Herkku','Pirkko Koskitalo','Accounting Manager','Torikatu 38','Oulu',NULL,'90110','Finland','981-443655','981-443655')
*/

DROP TABLE Customer;
GO
CREATE TABLE Customer
(First_Name char(50),
 Last_Name char(50),
 Address char(50) default 'Unknown',
 City char(50) default 'Barcelona',
 Country char(25)
);
GO
BEGIN TRAN
   Insert into Customer
    VALUES
    ('Prueba','Azure','BD','BD','BD');
    
    Insert into Customer
    VALUES
    ('Prueba1','Azure1','BD1','BD1','BD1'); 

    Insert into Customer
    VALUES
    ('Prueba2','Azure2','BD2','BD2','BD2');
    
    Insert into Customer
    VALUES
    ('Prueba3','Azure3','BD3','BD3','BD3'); 

GO
commit TRAN;

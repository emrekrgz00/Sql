Select *
from DimStore

--- Canl�  Sistem  -- Ger�ek zamanl�  
--- Stage katman�  -- Tampon b�lge 
--- Data Warehouse  -- Canl� Sistemi yormamak i�in Stage katman� konulyor, ordan veri ak�yor.

--- DDL( Data definition Language) Create, Alter Drop,
-- DML (Data Manipulating Language) Select, �nsert, Update, Delete

Create table Departments (
	DepartmentID INT PRIMARY KEY,
	DepartmentName varchar(50))

Create table Employees (
	EmployeeID INT PRIMARY KEY,
	Name varchar(50),
	SurName Varchar(50),
	DepartmentID INT,
--	FOREIGN KEY(DepartmentID) REFERENCES Departments (DepartmentID)
	)

Select * from Departments
Select * from Employees

Drop table Departments
Drop table Employees


INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'IT'), (2, 'F�NANCE'), (3,'HR')

INSERT INTO Departments 
VALUES (1, 'IT'), (2, 'F�NANCE'), (3,'HR')

INSERT INTO Departments (DepartmentID)
VALUES (1), (2), (3)

Select * from Departments
Select * from Employees

INSERT INTO Employees 
VALUES	(1, 'Emre', 'KARAGOZ', 1), 
		(2, 'Hulya', 'KARAGOZ', 2),
		(3, 'Remzi Bayram', 'KARAGOZ', 35)  -- FOREIGN KEY olmad��� i�in problem olmad�

INSERT INTO Departments 
VALUES (1, 'IT'), (2, 'F�NANCE'), (3,'HR')

Select * from Departments
Select * from Employees

alter table Departments drop column DepartmentName

Update Employees 
Set Name = '??', Surname='KARAG�Z'
where EmployeeID = 3

Delete Employees
where DepartmentID =2

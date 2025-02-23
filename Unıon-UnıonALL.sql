drop table if exists #customers
drop table if exists #students

create table #customers
(
	CustomerID INT,
	ChannelName varchar(50),
	Age INT
)

INSERT INTO #customers
VALUES 
	(1,'Emre',40),
	(2,'H�lya', 35),
	(3,'Kramer', 55)

create table #students
(
	StudentID INT,
	StudentName varchar(50)
)

INSERT INTO #students
VALUES 
	(3,'Kramer'),
	(4,'Icardi')


Select * from #students
Select * from #customers

Select *
from #customers c
left join #students s on s.StudentID = c.CustomerID

--- Alt alta ba�lamak

Select * from #students
Select * from #customers

Select c.CustomerID, c.Age
from #customers as c

Select s.StudentID, s.StudentName
from #students as s

----------------------  UNION -- Uniq al�r  e�it s�tun say�s� ve ayn� tip veriler olursa birle�tirir.
Select c.CustomerID, c.ChannelName from #customers as c
UNION
Select  s.StudentID, s.StudentName  from #students as s

----------------------  UNIONALL - hepsini al�r.   e�it s�tun say�s� ve ayn� tip veriler olursa birle�tirir.
Select c.CustomerID as Emre , c.ChannelName as EMRE2 from #customers as c
UNION ALL
Select  s.StudentID, s.StudentName  from #students as s
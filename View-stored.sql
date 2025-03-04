-- use ContosoRetailDW


create view vw_sales_summary as 

Select p.ProductName
,s.StoreName
,Sum(a.SalesAmount) as SalesAmount
from FactSales a
left join DimProduct p on p.ProductKey = a.ProductKey
left join DimStore s  on s.StoreKey = a.StoreKey
where  1=1
and a.SalesAmount >= 10000
group by p.ProductName
,s.StoreName


Select *
from vw_sales_summary

drop view vw_sales_summary

-- Query --> Parse --> Optimize --> Compile --> Execute --> REsults
-- Store
--Execute --> REsults

create procedure Pro1 as

Select *
from FactSales a
where 1 =1
and a.DateKey >= '20080701'
and a.SalesAmount >= 50000

exec Pro1 -- Çalýþtýrmak için
drop Procedure Pro1

----------------------------------------------------------------------
Create Procedure Pro2
@ChannelKey INT

as

select *
from DimChannel c
where c.ChannelKey = @ChannelKey
go

exec Pro2 2
exec Pro2 @ChannelKey = 1

drop procedure  Pro2

select *
from DimChannel c
where c.ChannelKey =1




use ContosoRetailDW

drop table #sales if exist #sales

create table #sales
(
	ProductName Varchar(50),
	SalesDate datetime,
	SalesAmount Float
)

Insert Into #sales
Values
	('Phone', '20230610 09:45:13', 500),
	('Phone', '20230612 14:53:25', 500),
	('Phone', '20230612 14:53:25', 500),
	('Phone', '20230614 11:20:25', 500),
	('TV', '20230615 10:12:24', 2500),
	('TV', '20230615 15:55:44', 2500),
	('TV', '20230615 15:55:44', 2500),
	('PC', '20230615 15:55:24', 1000),
	('PC', '20230612 11:20:17', 1000),
	('PC', '20230618 13:35:52', 1000)


-- ROWNUMBER
--select *
--	from (
--	select *
--	, ROW_NUMBER() over(order by s.SalesDate asc ) as RowNumber_Classic           --Ýndeks oluþurmak için kullanýlýr her zaman over 
--	from #sales s

--	) as mytable
--where mytable.RowNumber_Classic = 1

----------------------------------------------

-- RANK
select *
, ROW_NUMBER() over(order by s.SalesDate asc ) as RowNumber_Classic
,RANK() over (order by s.SalesDate asc) as Rank_Classic
from #sales s
order by 2

--------------------------------


-- Dense_Rank
select *
,ROW_NUMBER() over(order by s.SalesDate asc ) as RowNumber_Classic
,RANK() over (order by s.SalesDate asc) as Rank_Classic
,DENSE_RANK() over (order by s.SalesDate asc) as Dense_Rank_Classic


,ROW_NUMBER() over(partition by s.ProductName order by s.SalesDate asc ) as RowNumber_Partitionly
,RANK() over(partition by s.ProductName order by s.SalesDate asc ) as Rank_Classic_Partitionly
,DENSE_RANK() over(partition by s.ProductName order by s.SalesDate asc ) as Dense_Rank_Classic_Partitionly
from #sales s
order by 1,2

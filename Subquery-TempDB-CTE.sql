-- Select a.ProductKey
--,a.ProductName
--,a.UnitCost
--from DimProduct as a
--order by a.UnitCost desc

--select MAX(p.UnitCost) as Max_UnitCost
--from DimProduct as p

---- Subquery

-- Select p.ProductKey
--,p.ProductName
--,p.UnitCost
--from DimProduct as p
--where p.UnitCost =	(
--					Select Max(p.UnitCost)
--					from DimProduct as p
--					)

-- Subquery
select t.NewColumn
,count(*) as adet
from (
		Select p.ProductKey
		,p.ProductName
		,p.UnitCost
		,case	when p.Unitcost <= 100 then 'iyi'
				when   p.UnitCost <=200  then 'orta'
				else 'kötü'
				end as NewColumn
		from DimProduct p
	) t
group by t.NewColumn
order by adet desc

-- TempDB
-- Tek diyez(#) iþareti olan tablolar kalýcý deðildir. SSMS' kapatýldýðýnda #vazo tanlosu olmayacaktýr.
IF OBJECT_ID('tempdb.dbo.#vazo') IS NOT NULL DROP TABLE #vazo -- Tabloyu siliyorum, silmezsem hata verir
Select p.ProductKey
,p.ProductName
,p.UnitCost
,case	when p.Unitcost <= 100 then 'iyi'
		when   p.UnitCost <=200  then 'orta'
		else 'kötü'
		end as NewColumn
into #vazo
from DimProduct p

IF OBJECT_ID('tempdb.dbo.#vazo2') IS NOT NULL DROP TABLE #vazo2 -- ikinci bir tabloyu aktarýyorum
Select v.NewColumn
,count(*) as adet
into #vazo2
from #vazo  v -- Tablo adý
group by v.NewColumn

Select *
from #vazo2

--- CTE -- Common TAble expression
-- Birlikte çalýþtýrmak gerekir, deðiþkenler gibi

with kalem as(
Select p.ProductKey
		,p.ProductName
		,p.UnitCost
		,case	when p.Unitcost <= 100 then 'iyi'
				when   p.UnitCost <=200  then 'orta'
				else 'kötü'
				end as NewColumn
from DimProduct p
), kalem2 as (

select k.NewColumn
,count(*) as adet
from kalem k
group by k.NewColumn

)

select * 
from kalem k 
left join kalem2 k2 on k.NewColumn = k2.NewColumn














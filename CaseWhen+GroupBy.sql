--Select a.ProductKey
--,a.ProductName
--,a.BrandName
--,a.ClassName
--,a.ColorID
--,a.ColorName
--,a.UnitCost
--,a.UnitPrice
--,case When a.UnitPrice < 100 then	1
--	else a.UnitPrice
--	end as "YeniSütun"
--from DimProduct as a
--order by a.UnitPrice

-- Filtre kullanarak 
--Select SUM(a.UnitPrice) as UnitPrice
--from DimProduct as a
--where a.ColorID = 2

---- Filtre koymadan case when ile toplama iþlemi
--Select SUM(case when a.ColorID = 2 then a.UnitPrice end) as UnitPrice
--from DimProduct as a

---- Birden fazla þart için 

--Select SUM(case when a.ColorID = 2 then a.UnitPrice end) as UnitPrice2
--,SUM(case when a.ColorID = 3 then a.UnitPrice end) as UnitPrice3
--from DimProduct as a

--Select SUM(case when a.ColorID = 2 then a.UnitPrice end) as UnitPrice2
--from DimProduct as a

select a.ColorName
,SUM(a.UnitPrice) as UnitPrice
,SUM(Case when a.ColorID IN(2,3) then a.UnitPrice end) as Filter_UnitPrice
,SUM(Case when a.StyleID = 1 then a.UnitPrice end) as Filter2_UnitPrice
from DimProduct as a
group by a.ColorName

select a.ColorName
,SUM(a.UnitPrice) as UnitPrice
from DimProduct as a
where a.ColorID IN(2,3)
group by a.ColorName

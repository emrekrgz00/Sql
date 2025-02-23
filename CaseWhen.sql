Select a.ProductKey
, a.ProductName
, a.ColorName
, a.UnitPrice
, case	when a.UnitPrice < 100 then 1
		when a.UnitPrice < 200 then 2 
		else 3 
		end as YeniSutun
from DimProduct as a
order by a.UnitPrice


use ContosoRetailDW

 select *

from DimProduct

select mpt.ColorName
,SUM(mpt.UnitPrice) as UnitPrice 
from DimProduct as mpt
group by mpt.ColorName

select p.ColorName
,MAX(p.UnitCost) as UnitCost
from DimProduct as p
group by p.ColorName
order by UnitCost desc

select p.ColorName, p.UnitCost
from DimProduct as p
where p.ColorName='Silver'
order by UnitCost desc

select p.ColorName
,p.BrandName
,COUNT(*) as adet
from DimProduct as p
group by p.ColorName
, p.BrandName
order by adet desc

select distinct p.ColorName, p.BrandName
from DimProduct as p

select *

from DimProduct as p	
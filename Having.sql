-- From  - Join - Where - Group By Having - Select

select p.ColorName
,SUM(p.UnitPrice) as UnitPrice 
from DimProduct as p
group by p.ColorName
having  SUM(p.UnitPrice) > 100000
order by UnitPrice desc

select p.ColorName
,SUM(p.UnitPrice) as UnitPrice 
from DimProduct as p
group by p.ColorName
having  SUM(p.UnitPrice) > 100000
order by UnitPrice desc

-- Having where farký
select p.ColorName
,SUM(p.UnitPrice) as UnitPrice 
from DimProduct as p
where p.UnitPrice >3000
group by p.ColorName
order by UnitPrice desc

select p.ColorName,p.UnitPrice
from DimProduct as p
where p.UnitPrice > 3000
order by p.UnitPrice desc

select p.ColorName
, count(distinct p.BrandName)
from DimProduct as p
group by p.ColorName
having count(distinct p.BrandName) >10

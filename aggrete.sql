select SUM(a.EmployeeCount)  
from  DimStore as a

select MIN(a.EmployeeCount)  
from  DimStore as a

select MAX(a.EmployeeCount)  
from  DimStore as a

Select a.StoreKey, a.EmployeeCount, a.StoreName
from DimStore as a
where a.EmployeeCount is not null -- Boþ var onu çýkardým
order by a.EmployeeCount asc

select AVG(a.EmployeeCount)  
from  DimStore as a

Select 4+2  --5*3 
Select CAST(16 as float) / 5 

-- select count(a.CloseDate)  
-- from  DimStore as a
-- 
-- select count(*)  
-- from  DimStore as a
-- where 1 =1 
-- and a.CloseDate is not null

-- select count(a.StoreType)
-- from DimStore as a
-- 
-- select count(distinct a.StoreType)
-- from DimStore as a
-- 
-- select distinct a.StoreType
-- from DimStore as a



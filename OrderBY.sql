select s.StoreKey
,s.StoreName
,s.GeographyKey
,s.StoreType
,s.Status
,s.OpenDate
,s.LastRemodelDate 
,s.CloseDate
,s.EmployeeCount
,s.LastRemodelDate
,CAST(s.LastRemodelDate as date) as LastRemodeDate_ShortDate 
from  DimStore as s






--where  1 =1
--and s.OpenDate between	'20040101' and '20040131'
--order by s.OpenDate desc

--and s.StoreKey between 1 and 5

--where 1 = 1
--and s.StoreKey = 303 
--and CAST(s.LastRemodelDate as date) = '20090618'
--and s.GeographyKey =757

--where s.OpenDate= '20040412'  -- Yýl Ay  Gün formatý iyidir
--where s.StoreName like '%No.1 Store'
--order by s.GeographyKey, s.StoreKey
 --order by s.GeographyKey desc
--order by s.GeographyKey  asc (default)
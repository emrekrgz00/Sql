select s.StoreKey
,s.StoreName
,s.GeographyKey
,s.StoreType
,s.Status
,s.OpenDate
,s.LastRemodelDate 
,s.CloseDate
, NULL as 'NULL KONTROL'
, '' as 'Boþluk KOntrol'
from  DimStore as s
where s.CloseDate is not null


--where s.StoreKey NOT IN(1,2,3)
--where s.StoreKey IN(1,2,3)
--where s.StoreType = 'Reseller'
-- or s.StoreKey=1
-- or s.StoreKey=2

--where  s.StoreKey<10 and s.Status ='On'
-- Eþit deðildir <> !=
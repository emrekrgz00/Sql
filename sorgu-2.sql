-- 1 Haziran 2004 tarihinden sonra a��l�p �u anda kapal� olan ma�azalar�n ChannelName baz�nda 2007 y�l�ndaki sat��lar�n� milyon cinsinden bulunuz.

Select  *
from DimStore ds
where 1 = 1 
and ds.OpenDate >= '20040601'
and ds.CloseDate is not null


Select cn.ChannelName
,Sum(fs.SalesAmount) / 1000000 as SalesAmount
from FactSales fs
left Join DimChannel cn on cn.ChannelKey = fs.channelKey
inner join DimStore ds on ds.StoreKey  = fs.StoreKey and ds.OpenDate >= '20040601' and ds.CloseDate is not null

-- Yukarda normal ba�lad�k inner joinle subquery yapmad�m
--inner join ( 
--Select  *
--from DimStore ds
--where 1 = 1 
--and ds.OpenDate >= '20040601'
--and ds.CloseDate is not null
--) ds on ds.StoreKey  = fs.StoreKey

where 1 = 1
and fs.DateKey between	'20070101' and '20071231'
group by cn.ChannelName

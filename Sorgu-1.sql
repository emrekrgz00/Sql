-- Hangi mağazalar 2007 yılında aynı ürünü 250'den fazla satmıştır.

Select *
from FactSales

Select *
from DimProduct



Select st.StoreName
, pd.ProductName
,count(*) as adet
from FactSales fs
left join DimStore st on  st.StoreKey = fs.StoreKey
left join DimProduct pd on pd.ProductKey = fs.ProductKey
where 1 = 1
and year(fs.DateKey)  = 2007
group by st.StoreName
, pd.ProductName
having count(*) > 250
order by adet desc
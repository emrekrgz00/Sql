-- Hangi ma�azalar 2007 y�l�nda ayn� �r�n� 250'den fazla satm��t�r.

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
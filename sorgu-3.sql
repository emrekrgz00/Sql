-- Birim fiyat�, ortalama birim fiyattan fazla olan �r�nlerin 2008 ocak ay�ndaki toplam sat�� tutar�n� milyon cinsinden g�steriniz.

select Sum(fs.SalesAmount)/1000000
from FactSales fs
inner join (

			Select dp.ProductKey
			, dp.ProductName 
			, dp.UnitPrice
			from DimProduct dp
			where 1 = 1
			and dp.UnitPrice >
							(
							Select AVG(dp.UnitPrice) as Everafe_Unit_Price
							from DimProduct dp
							)

			)  t on t.ProductKey = fs.ProductKey
where 1 = 1
--and YEAR(fs.DateKey) = 2008 
--and MONTH(fs.DateKey) = 1
and fs.DateKey between	'20080101' and '20080131'
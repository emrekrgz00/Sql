--Select GETDATE() --Saatli Tarih 
--Select Cast(getdate() as date) as '�u an ki Tarih'  --Tarih

--Select s.StoreKey
--,s.StoreName
--,s.OpenDate
--,Cast(getdate() as date) as '�u an ki Tarih'  --Tarih
--,YEAR(s.OpenDate) as yil
--,MONTH(s.OpenDate) as Ay
--,EOMONTH(s.OpenDate) as EndOfMonth -- Bulunudu�u ay�n son g�n�
--,DATEDIFF(Year, s.OpenDate, GETDATE()) as YilFarki
--,DATEDIFF(MONTH, s.OpenDate, GETDATE()) as AyFarki
--,DATEDIFF(DAY, s.OpenDate, GETDATE()) as G�nFarki
--,DATEADD(month, 2,s.OpenDate) as BelirtilenKadarEksikTarih

--from DimStore as s


--Select *
--from FactSales as a
--where a.DateKey >= DATEADD(MONTH, -12, GETDATE())   

--Select count(*)
--from FactSales as a
--where a.DateKey >= DATEADD(MONTH, -12, '20090601')

Select EOMONTH(a.DateKey) as 'AySonu'
,COUNT(*) as adet
from FactSales as a
group by EOMONTH(a.DateKey)
order by EOMONTH(a.DateKey) desc



--- Y�l ve Ay baz�nda
Select Year(a.DateKey) as yil
, MONTH(a.DateKey) as ay
,COUNT(*) as adet
from FactSales as a
Group by YEAR(a.DateKey), MONTH(a.DateKey)
order by YEAR(a.DateKey), MONTH(a.DateKey)
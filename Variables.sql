--declare @number int
--set @number  = 3

--select *
--from DimStore as st
--where st.StoreKey = @number

--declare @today date
--set @today = '20080512'

declare @today date = '20080512' -- Pazartesi
--select @today

declare @FirstDayOfPreviousMonth date = Dateadd(day, 1,EOMONTH(DATEADD(month, -2, @today)))
declare @LastDayOfPreviousMonth  date = eomonth(DATEADD(month, -1, @today))

--Select Dateadd(day, 1,EOMONTH(DATEADD(month, -2, @today)))  -- 2 ay �nceye gitti, o ay�n son g�n�n� buldum ve 1g�n sonras�na giderek yeni ay�n ilk g�n�ne gittim.
--															-- En ba�tan bakarsak bir �nceki ay�n ilk g�n�
--Select eomonth(DATEADD(month, -1, @today))

Select @today
Select @FirstDayOfPreviousMonth
Select @LastDayOfPreviousMonth
declare @LastBusinessDay_BeforeToday date
declare @today date = '20080512' -- Pazartesi

Select count(*)
from FactSales as s
where 1 = 1
and s.DateKey between '20080401' and '20080430'


declare @today date = '20080512' -- Pazartesi
declare @FirstDayOfPreviousMonth date = Dateadd(day, 1,EOMONTH(DATEADD(month, -2, @today)))
declare @LastDayOfPreviousMonth  date = eomonth(DATEADD(month, -1, @today))

Select @today
Select @FirstDayOfPreviousMonth
Select @LastDayOfPreviousMonth

Select count(*)
from FactSales as s
where 1 =1
and s.DateKey between @FirstDayOfPreviousMonth  and @LastDayOfPreviousMonth

---- Bir i� g�n� �ncesi

declare @LastBusinessDay_BeforeToday date
declare @today date = '20080512' -- Pazartesi

Select top 1  @LastBusinessDay_BeforeToday = d.DateKey
from DimDate as d
where 1 = 1
and d.IsWorkDay = 'WorkDay'
and d.Datekey <  @today
order by d.DateKey desc

Select @LastBusinessDay_BeforeToday

----------------------------------------------------------
declare @today date = '20080512' -- Pazartesi
declare @LastBusinessDay_BeforeToday date
Select top 1  @LastBusinessDay_BeforeToday = d.DateKey
from DimDate as d
where 1 = 1
and d.IsWorkDay = 'WorkDay'
and d.Datekey <  @today
order by d.DateKey desc

declare @FirstDayOfPreviousMonth date = Dateadd(day, 1,EOMONTH(DATEADD(month, -2, @LastBusinessDay_BeforeToday)))
declare @LastDayOfPreviousMonth  date = eomonth(DATEADD(month, -1, @LastBusinessDay_BeforeToday))


select @today
Select @LastBusinessDay_BeforeToday
Select @FirstDayOfPreviousMonth
Select @LastDayOfPreviousMonth
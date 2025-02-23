 drop table if exists #sales
 drop table if exists #channel

 create table #sales
 (
	SalesKey INT,
	ChannelKEy INT,
	SalesAmount INT
 )

INSERT INTO #sales
VALUES
	(1000,1,100),
	(1001,1,50),
	(1002,2,50),
	(1003,3,200),
	(1004,4,300)

create table #channel
(
	ChannelKey INT,
	ChannelName nvarchar(20)
)

INSERT INTO #channel
VALUES 
	(1,'Store'),
	(2,'Online'),
	(5,'Catalog')



select *
from #sales

select *
from #channel

select *
from #sales as s
left join #channel c on s.ChannelKEy = c.ChannelKey

select s.SalesKey, s.ChannelKEy, s.SalesAmount, c.ChannelName
from #sales as s
left join #channel c on s.ChannelKEy = c.ChannelKey

select *
from #sales as s
inner join #channel c on s.ChannelKEy = c.ChannelKey

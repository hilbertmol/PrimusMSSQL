USE primus
GO
-- hier ein Beispiel für While zum Befüllen einer Tabelle mit Datumswerten für ein gegebenes Jahr
-- erst die Auffangtabelle erzeugen
create table Starttermine
(
laufnr int identity constraint pk_starttermine primary key,
datum date,
wochentag varchar(15),
jahr int,
monat varchar(15)
);
go

create procedure Fuelle_Starttermine @start datetime
as
declare @i integer
declare @maxdat datetime
declare @jahrSchonda int

begin
	set @jahrschonda = (select count(*) from Starttermine where year(datum) = year(@start))

if @jahrSchonda >0
	begin
		select 'Für das angegebene Jahr gibt es bereits Termine';
		return
	end;
if @jahrSchonda<=0
begin
	set @i = 0
	while @i <=358 -- 7 Tage zum Jahreswechsel geschlossen
		begin
		begin transaction 
		insert into Starttermine (datum, wochentag,jahr,monat) 
		values(@start+@i, datename(weekday,@start+@i), year(@start+@i), datename(month,@start+@i));
		commit;
		set @i =@i+14
	end
	set @maxdat = (select max(datum) from Starttermine)
	
	if year(@start) < year(@maxdat)
	begin
	begin transaction
		delete from Starttermine where year(datum) >year(@start);
	commit;
	end
end	
end;
GO
exec Fuelle_Starttermine '06.01.2020'
go
select * from starttermine
go
truncate table starttermine

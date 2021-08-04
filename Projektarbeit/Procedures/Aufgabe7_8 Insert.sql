-- Aufgabe 7 und 8 f�r Insert
create procedure Ins_Buch_SDatum
@produktid int,
@teilnehmernr int, 
@dozentennr int, 
@startdatum datetime, 
@standortid int
as
declare @enddatum as datetime
declare @anzteil as int --Anzahl Teilnehmer zum bestimmten Datum
declare @anzdoz as int --Anzahl Dozenten zum bestimmten Datum
declare @dauer as int 
begin
	set @dauer= (select dauer from produkte where produktid=@produktid)
	set @enddatum= dateadd(day,@dauer+ceiling(@dauer/5.0)*2-3, @startdatum)

	set @anzteil=(select count(*) from buchungen where teilnehmernr=@teilnehmernr and @startdatum between startdatum and enddatum)
	set @anzdoz=(select count(*) from buchungen where dozentennr=@dozentennr and @startdatum between startdatum and enddatum)

	if @anzteil<>0 or @anzdoz<>0
		begin
			if @anzteil<>0
				begin
					print 'F�r den Teilnehmer '+cast(@teilnehmernr as varchar)+' Buchung im Zeitraum: '
					+cast(format(@startdatum, 'dd.MM.yyyy') as varchar)+'-'+cast(format(@enddatum, 'dd.MM.yyyy') as varchar)
					+' nicht m�glich'
				end
			if @anzdoz<>0
				begin
					print 'Der Dozenten '+cast(@dozentennr as varchar)+' unterrichtet schon im Zeitraum: '
					+cast(format(@startdatum, 'dd.MM.yyyy') as varchar)+'-'+cast(format(@enddatum, 'dd.MM.yyyy') as varchar)
				end
		end
	else
		begin
			begin transaction 
				insert into buchungen values (@produktid, @teilnehmernr, @dozentennr, @startdatum, @enddatum, @standortid) 
			commit;
		end
end;

use primus
go
exec Ins_Buch_SDatum 4, 25, 2, '21.06.2021', 5  
-- Aufgabe 7 und 8 für Update
create procedure Upd_Buch_SDatum
@buchungsid int, 
@produktid int=null, 
@teilnehmernr int=null, 
@dozentennr int=null, 
@startdatum datetime=null, 
@standortid int=null
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
					print 'Für den Teilnehmer '+cast(@teilnehmernr as varchar)+' Buchung im Zeitraum: '
					+cast(format(@startdatum, 'dd.MM.yyyy') as varchar)+'-'+cast(format(@enddatum, 'dd.MM.yyyy') as varchar)
					+' nicht möglich'
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
				update buchungen
				set produktid=ISNULL(@produktid, produktid),
				teilnehmernr=ISNULL(@teilnehmernr, teilnehmernr),
				dozentennr=ISNULL(@dozentennr, dozentennr),
				startdatum=ISNULL(@startdatum, startdatum),
				standortid=ISNULL(@standortid, standortid)
				where buchungsid=@buchungsid
			commit;
		end
end;

use primus
go
exec Upd_Buch_SDatum 93, 4, 23, 4, '21.06.2021', 5  
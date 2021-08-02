create trigger trig_buchungen_teiln
on buchungen
instead of insert
as
begin
	set nocount on;
	if not exists (select 1 from inserted i 
					inner join buchungen b 
					on i.teilnehmernr=b.teilnehmernr
					and i.startdatum between b.startdatum and b.enddatum
					)
	begin
	insert into buchungen (produktid, teilnehmernr, dozentennr, startdatum, enddatum, standortid) select 
	produktid, teilnehmernr, dozentennr, startdatum, enddatum, standortid from inserted;
	end
	else
	begin
		print 'In dem eigegebenen Zeitraum der Teilnehmer nimmt schon an einer Schulung teil.'
	end
end;
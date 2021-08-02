create trigger trig_buchungen_doz
on buchungen
instead of insert, update
as
begin
	set nocount on;
	begin
		if not exists (select * from inserted i 
						inner join buchungen b 
						on i.dozentennr=b.dozentennr
						and i.startdatum between b.startdatum and b.enddatum
						)
		begin
			--Insert
			if (select count(*) from inserted)>0 and (select count(*) from deleted)=0
			begin 
				begin transaction
					insert into buchungen (produktid, teilnehmernr, dozentennr, startdatum, enddatum, standortid) select 
					produktid, teilnehmernr, dozentennr, startdatum, enddatum, standortid from inserted;
				commit
			end
			--Update
			if (select count(*) from inserted)>0 and (select count(*) from deleted)>0
			begin 
				begin transaction
					insert into buchungen (dozentennr, startdatum) select 
					dozentennr, startdatum from inserted;
				commit
			end
		end
		else
		begin
			print 'In dem eigegebenen Zeitraum der Dozent unterrichtet schon.'
		end
	end
end;

drop trigger trig_buchungen_doz
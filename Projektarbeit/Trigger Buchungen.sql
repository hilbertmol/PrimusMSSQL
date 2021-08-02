alter trigger trig_buchungen
on buchungen
instead of insert, update
as
begin
	set nocount on;
		
		if not exists (select 1 from inserted i 
						inner join buchungen b 
						on i.teilnehmernr=b.teilnehmernr
						and i.startdatum between b.startdatum and b.enddatum
						)
		begin
			--Insert
			if (select count(*) from inserted)>0 and (select count(*) from deleted)=0
			begin 
				begin transaction
					insert into buchungen (produktid, teilnehmernr, dozentennr, startdatum, enddatum, standortid) 
					select produktid, teilnehmernr, dozentennr, startdatum, enddatum, standortid from inserted;
				commit
			end
			--Update
			if (select count(*) from inserted)>0 and (select count(*) from deleted)>0
			begin 
					if update(teilnehmernr)
					begin 
						begin transaction
						update buchungen set teilnehmernr=(select teilnehmernr from inserted)
						where (select buchungsid from buchungen)=(select buchungsid from inserted)
						commit
					end
					else
					begin
						begin transaction
						update buchungen set startdatum=(select startdatum from inserted)
						where (select buchungsid from buchungen)=(select buchungsid from inserted)
						commit
					end
			end
		end
		else
		begin
			print 'In dem eigegebenen Zeitraum nimmt der Teilnehmer an einer Schulung schon teil.'
		end
		
		
		if not exists (select 1 from inserted i 
					inner join buchungen b 
					on i.dozentennr=b.dozentennr
					and i.startdatum between b.startdatum and b.enddatum
					)
		begin
			--Insert
			if (select count(*) from inserted)>0 and (select count(*) from deleted)=0
			begin 
				begin transaction
					insert into buchungen (produktid, teilnehmernr, dozentennr, startdatum, enddatum, standortid) 
					select produktid, teilnehmernr, dozentennr, startdatum, enddatum, standortid from inserted;
				commit
			end
			--Update
			if (select count(*) from inserted)>0 and (select count(*) from deleted)>0
			begin 
					if update(dozentennr)
					begin 
						begin transaction
						update buchungen set dozentennr=(select dozentennr from inserted) 
						where (select buchungsid from buchungen)=(select buchungsid from inserted)
						commit
					end
					else
					begin
						begin transaction
						update buchungen set startdatum=(select startdatum from inserted)
						where (select buchungsid from buchungen)=(select buchungsid from inserted)
						commit
					end
			end
		end
		else
		begin
			print 'In dem eigegebenen Zeitraum unterrichtet der Dozent schon'
		end
end;


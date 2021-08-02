--Aufgabe 17--
--17.	Prüfen Sie wie hoch der Umsatz für ein bestimmtes Seminar ist

create procedure Umsatz_Seminar
@se varchar (30), @Umsatz numeric (9,2) output
as
declare @anz int
begin
	set @anz = (select count(*) from buchungen b inner join produkte p 
						on b.produktid=p.produktid where p.prname=@se);
	if @anz=0
		select 'Es gibt keine Buchung für '+@se+'. Umsatz ist 0.'
			else
		begin
			set @Umsatz=(select sum(p.preis*p.dauer) from buchungen b inner join 
			                         produkte p on b.produktid=p.produktid
									 where p.prname=@se);
			end
end;
go
declare @se_input varchar (30), @Umsatz_SE numeric (9,2);
set @se_input = 'CAD';
exec Umsatz_Seminar @se=@se_input, @Umsatz =@Umsatz_SE output
print 'Umsatz für ' +@se_input+' ist '+cast(@Umsatz_SE as varchar)+ ' €.';
go

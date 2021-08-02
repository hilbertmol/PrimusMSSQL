--Aufgabe 18--
--18.	Prüfen Sie wie hoch der Umsatz für ein Seminar in einem bestimmten Jahr ist
create procedure Umsatz_Seminar_Jahr
@se varchar (30), @j numeric, @Umsatz numeric (9,2) output
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
									 where p.prname=@se and @j=cast(year(b.startdatum) as numeric)
									 group by  year(b.startdatum));
			end
end;
go
declare @se_input varchar (30), @j_input numeric, @Umsatz_SE numeric (9,2);
set @se_input = 'CAD'; set @j_input='2020';
exec Umsatz_Seminar_Jahr @se=@se_input, @j=@j_input, @Umsatz =@Umsatz_SE output
print 'Umsatz für ' +@se_input+' im Jahr '+cast(@j_input as varchar)+' ist '+cast(@Umsatz_SE as varchar) + ' €.';
go

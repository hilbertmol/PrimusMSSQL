--Aufgabe 16--
--16.	Prüfen Sie wie hoch ihr Umsatz an einem bestimmten Starttermin ist
create procedure Umsatz_Starttermin
@ST datetime, @Umsatz numeric (9,2) output
as
declare @anz int
begin
	set @anz = (select count(*) from buchungen where startdatum = @ST);
	if @anz=0
		select 'Am '+convert(varchar, @ST)+'gibt es keine Buchung. Umsatz ist 0.'
			else
		begin
			set @Umsatz=(select sum(count(b.produktid)*p.preis) from buchungen b inner join 
			                         produkte p on b.produktid=p.produktid
									 where b.startdatum=@ST
									 group by b.produktid);
			end
end;
go
declare @Umsatz_ST numeric (9,2)
exec Umsatz_Starttermin @ST='xxx', @Umsatz =@Umsatz_ST output
print 'Umsatz am '+cast(@ST as varchar)+' ist '+cast(@Umsatz_ST as varchar);
go

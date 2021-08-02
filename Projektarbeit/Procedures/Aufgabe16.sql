--Aufgabe 16--
--16.	Prüfen Sie wie hoch ihr Umsatz an einem bestimmten Starttermin ist


create procedure Umsatz_Starttermin
@ST datetime, @Umsatz numeric (9,2) output
as
declare @anz int
begin
	set @anz = (select count(*) from buchungen where startdatum = @ST);
	if @anz=0
		select 'Am '+cast(format(@ST, 'dd.MM.yyyy')as varchar)+'gibt es keine Buchung. Umsatz ist 0.'
			else
		begin
			set @Umsatz=(select sum(p.preis*p.dauer) from buchungen b inner join 
			                         produkte p on b.produktid=p.produktid
									 where b.startdatum=@ST);
			end
end;
go
declare @ST_input datetime, @Umsatz_ST numeric (9,2);
set @ST_input='01.02.2021';
exec Umsatz_Starttermin @ST=@ST_input, @Umsatz =@Umsatz_ST output
print 'Umsatz am '+cast(format(@ST_input, 'dd.MM.yyyy')as varchar) +' ist '+cast(@Umsatz_ST as varchar)+ ' €.';
go

-----Aufgabe 15-----
--Wie viele PCs werden zum Starttermin für ein bestimmtes Seminar benötigt?

create procedure AnzPCSE
( @st datetime, @se varchar (30))
as
begin
select  count(b.teilnehmernr) AnzahlTeilnehmer from buchungen b inner join 
			                         produkte p on b.produktid=p.produktid where b.startdatum=@st and p.prname=@se;
end;
select b.teilnehmernr, p.prname from buchungen b inner join 
			                         produkte p on b.produktid=p.produktid where b.startdatum='06.01.2020' and p.prname='Office';
exec AnzPCSE @st='06.01.2020', @se='Office'
----Anzahl ist 2---
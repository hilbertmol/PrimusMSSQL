use primus
go
-- Aufgabe 9
select * from buchungen;
select * from buchungen where startdatum='03.02.2020';

create procedure Anzbu
(@st datetime)
as
begin
select startdatum, count(buchungsid) Anzahlbuchungen
from buchungen
where startdatum= @st
group by startdatum;
end;

execute Anzbu '03.02.2020'
--Aufgabe 10
create procedure bestsem
(@st datetime, @produktid int)
as
begin
select startdatum, count(produktid) Anzahl_seminar
from buchungen
where startdatum= @st and produktid=@produktid
group by startdatum;
end;
select startdatum from buchungen where produktid= 1;
exec bestsem '06.01.2020',1
--Aufgabe 11
create procedure AnzbuStandort
(@st datetime,  @standortid int)
as
begin
select startdatum ,  count(buchungsid) Seminare from buchungen
where startdatum=@st and  standortid=@standortid
group by startdatum;
end;

select produktid, buchungsid, standortid from buchungen where startdatum= '13.04.2020 ';
select startdatum from buchungen where standortid=1
group by startdatum;

exec Anzbustandort '13.04.2020',2 -- soll 2 Buchungen fuer Standort 2 rauskommen ( gesamt 5 Buchungen)

-- Aufgabe 12
create procedure SSS
(@st datetime, @produktid int, @standortid int)
as
begin
	select count(buchungsid) Anzbuchungen from buchungen where startdatum=@st and standortid=@standortid and produktid=@produktid
end;

exec SSS '13.04.2020',8,2-- soll ein Seminar sein
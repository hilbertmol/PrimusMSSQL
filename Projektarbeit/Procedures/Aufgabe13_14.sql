--Aufgabe 13
create procedure AnzPC
( @st datetime)
as
begin
select  count(teilnehmernr) AnzahlTeilnehmer from  buchungen where startdatum=@st;
end;

select teilnehmernr from buchungen where startdatum='03.02.2020';

exec AnzPc '03.02.2020'

-- Aufgabe 14
create procedure AnzPCSS
( @st datetime, @standortid int)
as
begin
select  count(teilnehmernr) AnzahlTeilnehmer from  buchungen where startdatum=@st and standortid=@standortid;
end;
select teilnehmernr, standortid from buchungen where startdatum='03.02.2020';
exec AnzPCSS '03.02.2020',2
use primus
go
select * from Dozentenfertigkeiten;
select * from maprimus;

create procedure NeuerMa
(@name varchar(30),@vorname varchar(30) )
as
declare @mitarbeiterid int
begin
	begin transaction
		insert into maprimus (name,vorname)
		values (@name,@vorname);
		set @mitarbeiterid=@@identity
		commit;
end;
go
execute neuerMA 'Marx', 'Karl'
select * from maprimus;

--Nachnameaenderung ( in case: Heiraten)
create procedure changeMitarbeiter
(@name varchar(30),@vorname varchar(30))
as
begin
	begin transaction
		update maprimus set name = @name where vorname=@vorname;
	commit;
end;
execute changeMitarbeiter 'Marx','anders';

--Loeschen eines Mitarbeiters

create procedure loeschenMitarbeiter
(@name varchar(30),@vorname varchar(30))
as
begin
	begin transaction
		delete from maprimus  where name=@name;
	commit;
end;
execute loeschenMitarbeiter 'Marx', 'Karl'

select * from apartner;
--neuen Ansprechpartner anlegen
create procedure NeuerAnsprechpartner
(@firmanr int, @avorname varchar(30), @aname varchar(30), @durchwahl varchar(20)=null )
as
declare @id int
begin
	begin transaction
		insert into apartner (firmanr,avorname,aname,durchwahl)
		values (@firmanr,@avorname,@aname,@durchwahl);
		set @id=@@identity
		commit;
end;
go

select * from apartner;

execute NeuerAnsprechpartner 1, 'Karl', 'Marx'

--Ansprechpartner bei Kunden aendern
create procedure changeAnsprechpartner
(@id int, @avorname varchar(30),@aname varchar(30),@durchwahl varchar(20))
as
begin
	begin transaction
		update apartner set aname = @aname,avorname=@avorname, durchwahl=@durchwahl  where id=@id;
		commit;
end;
select * from apartner;
execute changeAnsprechpartner 31,'Lord2','Himmel2','05437898989';

--Loeschen von Ansprechpartner
create procedure deleteApartner
(@id int)
as
begin
	begin transaction
		delete from apartner  where id=@id;
	commit;
end;
execute deleteApartner 32
select * from apartner;

-- Aufgabe 2
select * from Kunden;
create procedure NeueFirma
(@fname varchar(30),@fstrasse varchar(50),@fplz int,@fort varchar(30), @fmailadresse varchar(60) )
as
declare @firmanr int
begin
	begin transaction
		insert into kunden (fname,fstrasse,fplz,fort,fmailadresse)
		values (@fname,@fstrasse,@fplz, @fort,@fmailadresse );
		set @firmanr=@@identity
		commit;
end;
select * from kunden;

execute Neuefirma 'Siemens', 'Heinzdorfring 2', 33100,'Paderborn','Siemens@siemens.com'

create procedure changekunde
(@firmanr int, @fname varchar(30), @fstrasse varchar(50),@fplz int,@fort varchar(30), @fmailadresse varchar(60))
as
begin
	begin transaction
		update kunden set fname = @fname,fstrasse=@fstrasse, fplz=@fplz, fort=@fort, fmailadresse=@fmailadresse  where firmanr=@firmanr;
		commit;
end;

execute changekunde 11, 'niexdorf', 'Siemensstr 2', 33200,'Soest', 'niexdorf@niexdorf.com'
select * from kunden;

create procedure deletekunde
(@firmanr int)
as
begin
	begin transaction
		delete from kunden  where firmanr=@firmanr;
	commit;
end;

execute deletekunde 11
select * from dozenten;

create procedure NeuerDozent
(@dvorname varchar(30), @dname varchar(30),@dstrasse varchar(50),@dplz int, @dort varchar(30),@dmailadresse varchar(60))
as
declare @dozentennr int
begin
	begin transaction
		insert into dozenten (dvorname,dname, dstrasse, dplz, dort, dmailadresse)
		values (@dvorname, @dname, @dstrasse, @dplz, @dort, @dmailadresse);
		set @dozentennr=@@identity
		commit;
end;
select * from dozenten;
execute NeuerDozent 'Karl', 'Marx', 'bonnerstr 4', 56490, 'Aachen','karlmarx@primus.com'

create procedure changedoz
(@dozentennr int,@dvorname varchar(30), @dname varchar(30),@dstrasse varchar(50),@dplz int, @dort varchar(30),@dmailadresse varchar(60))
as
begin
	begin transaction
		update dozenten set dvorname=@dvorname,dname= @dname,dstrasse= @dstrasse,dplz= @dplz, dort=@dort, dmailadresse=@dmailadresse where dozentennr=@dozentennr;
			commit;
end;
execute changedoz 55,'Siegfried','Nebelunge', 'Reihnlandstr 2', 45360,'Koeln', 'niebelungen@primus.com'

select * from dozenten;

create procedure deletedoz
(@dozentennr int)
as
begin
	begin transaction
	delete from dozenten where dozentennr=@dozentennr;
	commit;
end;
execute deletedoz 54;
-- Aufgabe 6
select * from dozentenfertigkeiten;
select * from dozenten;
select * from produkte;
select * from dozentenqual;

create procedure eingabeQual
(@dozentennr int, @produktid int)
as
declare @did int
	begin
	begin transaction
	insert into dozentenqual (dozentennr, produktid) values (@dozentennr, @produktid);
	set @did=@@identity;
	commit;
end;
select * from dozenten;

execute eingabequal 55,8

create procedure changequal
(@did int, @dozentennr int, @produktid int)
as
begin
begin transaction
update dozentenqual set dozentennr=@dozentennr, produktid=@produktid where did=@did;
commit;
end;
select * from dozentenqual;
execute changequal 58, 54,6
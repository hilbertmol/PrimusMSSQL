--Erstellen von der Tabelle Prot_Dozenten
create table Prot_Dozenten
(
dozentennr int,
dvorname varchar(30),
dvorname_alt varchar(30),
dname varchar(30),
dname_alt varchar(30),
dstrasse varchar (50),
dstrasse_alt varchar (50),
dplz int,
dplz_alt int,
dort varchar (30),
dort_alt varchar (30),
dmailadresse varchar (60),
dmailadresse_alt varchar (60),
erfassdatum datetime default (getdate()), 
erfasser varchar(50) default (suser_sname())
);

select * from Prot_Dozenten;

--Trigger nach dem Update
create trigger updDozenten
on dozenten 
after update
as
begin
	begin transaction
	insert into Prot_Dozenten (dozentennr, dvorname, dvorname_alt, dname, dname_alt, dstrasse, dstrasse_alt, dplz, dplz_alt,
								dort, dort_alt, dmailadresse, dmailadresse_alt, erfassdatum, erfasser)
	select d.dozentennr, i.dvorname, d.dvorname, i.dname, d.dname, i.dstrasse, d.dstrasse, i.dplz, d.dplz,
			i.dort, d.dort, i.dmailadresse, d.dmailadresse, getdate(), suser_sname()
	from deleted d, inserted i;
	commit;
end;

--Trigger für Delete

create trigger delDozenten
on dozenten 
for delete
as
begin
	begin transaction
	insert into Prot_Dozenten (dozentennr, dvorname_alt, dname_alt, dstrasse_alt, dplz_alt,
								dort_alt, dmailadresse_alt, erfassdatum, erfasser)
	select d.dozentennr, d.dvorname, d.dname, d.dstrasse, d.dplz,
			d.dort, d.dmailadresse, getdate(), suser_sname()
	from deleted d;
	commit;
end;


--Test von Update
select * from Dozenten;
update Dozenten set dname='Christus Test' where dozentennr=27;
select * from Dozenten;
select * from Prot_Dozenten;

--Test von Delete
insert into Dozenten (dvorname, dplz) values ('Joseph', 44444);
delete from Dozenten where dozentennr=31;
select * from Dozenten;
select * from Prot_Dozenten;
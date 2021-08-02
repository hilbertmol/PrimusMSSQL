use primus
go
create table Prot_Kunden
(
lfdnr int identity constraint pk_Prot_Kunden primary key,
firmanr int,
fname_alt varchar(30),
fname_neu varchar(30),
fstr_alt varchar (50),
fstr_neu varchar (50),
fplz_alt int,
fplz_neu int,
fort_alt varchar(30),
fort_neu varchar(30),
fmail_alt varchar(60),
fmail_neu varchar(60),
erfassdatum datetime default (getdate()), 
erfasser varchar(50) default (suser_sname())
);
select * from Prot_kunden;

create trigger updkunden
on kunden
after update
as
begin
if ( update(fname) or update(fstrasse) or update(fplz) or update(fort) or update(fmailadresse))
begin
	begin transaction
	insert into Prot_Kunden (fname_alt, fname_neu, 
					fstr_alt, fstr_neu, fplz_alt, fplz_neu, fort_alt, fort_neu,fmail_alt, fmail_neu)
	select d.fname, i.fname , d.fstrasse , i.fstrasse , d.fplz, i.fplz, d.fort, i.fort, d.fmailadresse, i.fmailadresse
	from deleted d, inserted i;
	Commit;
end
End;
select * from kunden;
update kunden set fstrasse='klar' where firmanr=10;
select * from prot_kunden;


use primus
go
create table ma_primus
(
	mitarbeiterid int identity constraint pk_maprimus primary key,
	name varchar(30),
	vorname varchar(30)
);

drop table buchungen

use primus
go
create table buchungen
(
	buchungsid int identity constraint pk_buchungen primary key,
	produktid int constraint fk_buch_prod foreign key references produkte(produktid),
	teilnehmernr int constraint fk_buch_teiln foreign key references teilnehmer(teilnehmernr),
	dozentennr int constraint fk_buch_doz foreign key references dozenten(dozentennr),
	startdatum datetime,
	enddatum datetime,
	standortid int constraint fk_buch_standort foreign key references standort(standortid)
);



use primus
go
create table standort
(
	standortid int identity constraint pk_standort primary key,
	stadt varchar(30)
);

	

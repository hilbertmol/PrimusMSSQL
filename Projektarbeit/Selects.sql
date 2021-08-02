select * from apartner;
select * from dozenten;
select * from kunden;
select * from maprimus;
select * from produkte;
select * from standort;
select * from Starttermine;
select * from teilnehmer;
select * from maprimus;
select * from buchungen;

truncate table dozenten;
alter table buchungen drop constraint fk_buch_doz; 
alter table buchungen add constraint fk_buch_doz foreign key (dozentennr) references dozenten(dozentennr);

truncate table standort;
alter table buchungen drop constraint fk_buch_standort; 
alter table buchungen add constraint fk_buch_standort foreign key (dozentennr) references dozenten(dozentennr);

drop table apartner;
drop table buchungen;

insert into buchungen (teilnehmernr, dozentennr, startdatum, enddatum) values (1, 2, '04.01.2021', '15.01.2021');
select * from buchungen;
insert into buchungen (teilnehmernr, dozentennr, startdatum, enddatum) values (1, 5, '14.01.2021');

update buchungen set startdatum='04.01.2021' where dozentennr=4 and teilnehmernr=3;
select * from buchungen;

declare @sd as datetime='8.1.2020' 
select count(*) from buchungen where @sd between startdatum and enddatum

delete from buchungen where buchungsid=92;

use Primus
go
alter table buchungen add constraint uc_teiln_sdatum unique (teilnehmernr, startdatum);
alter table buchungen add constraint uc_doz_sdatum unique (dozentennr, startdatum);

alter table buchungen drop constraint uc_teiln_sdatum;
alter table buchungen drop constraint uc_doz_sdatum;

truncate table buchungen;

use primus
go
--create unique index index_teiln_sdatum on buchungen (teilnehmernr, startdatum);
--create unique index index_doz_sdatum on buchungen (dozentennr, startdatum);

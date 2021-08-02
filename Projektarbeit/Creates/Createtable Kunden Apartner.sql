use master
go
create database primus;
go
use primus
go
create table kunden
(
Firmanr int identity constraint pk_kunden primary key,
Fname varchar (30),
Fstrasse varchar (50),
Fplz int,
Fort varchar (30),
Fmailadresse varchar (60)
);
go

select*from kunden;

begin transaction
insert into kunden (Firmanr, Fname, Fstrasse, Fplz, Fort) values ();


create table apartner
(
id int identity constraint pk_apartner primary key,
Firmanr int constraint fk_apartner_kunden foreign key (Firmanr) references kunden (Firmanr),
avorname varchar (30),
aname varchar (30),
durchwahl varchar (20)
);
go
select*from apartner;

begin transaction
insert into apartner (id, Firmanr, avorname, aname, durchwahl);
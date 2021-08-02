use primus
go

create table Dozenten
(
dozentennr int identity constraint pk_doz primary key,
dvorname varchar(30),
dname varchar(30),
dstrasse varchar (50),
dplz int,
dort varchar (30),
dmailadresse varchar (60),
);


create table Dozentenqual
(
did int identity constraint pk_did primary key,
dozentennr int constraint fk_doz_did foreign key (dozentennr) references dozenten(dozentennr),
produktid int constraint fk_pro_did foreign key (produktid) references produkte(produktid)
);


begin transaction
insert into Dozenten values  ('Thorsten','Schulte','Weidenfellerallee 17', 68766, 'Hockenheim', 't.schulte@primus.com');
insert into Dozenten values  ('Max','Muster',' Grabenstr. 8', 69115, 'Heidelberg', 'm.muster@primus.com');
insert into Dozenten values  ('Serafina','Wollny','Erteell Weg 11', 63828, 'Kleinkahl', 's.wollny@primus.com');
insert into Dozenten values  ('Thomas','Anders','Musikweg 5', 10115, 'Berlin', 't.anders@primus.com');


go







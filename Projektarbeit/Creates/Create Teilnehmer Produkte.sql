use Primus
go
create table teilnehmer
(teilnehmernr int identity(1,1) constraint pk_teilnehmernr primary key,
tvorname varchar(30),
tname varchar(30),
tplz int,
tstr varchar(50),
tort varchar (30),
tmail varchar(60),
firmanr int constraint fk_firmanr foreign key(firmanr) references kunden(firmanr)
);
create table produkte
(produktid int identity(1,1) constraint pk_produktid primary key,
prgruppe varchar(30),
prname varchar(30),
preis numeric(5,2),
dauer int
);


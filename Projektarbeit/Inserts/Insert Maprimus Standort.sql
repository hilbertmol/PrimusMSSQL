use primus
go
begin transaction
insert into maprimus (name, vorname) values ('Kaufmann', 'Jens');
insert into maprimus (name, vorname) values ('Moser', 'Hans');
insert into maprimus (name, vorname) values ('Huber', 'Andreas');
insert into maprimus (name, vorname) values ('Schmid', 'Peter');
insert into maprimus (name, vorname) values ('Meyer', 'Andreas');
insert into maprimus (name, vorname) values ('M�ller', 'Dirk');
insert into maprimus (name, vorname) values ('Probst', 'Tanja');
insert into maprimus (name, vorname) values ('Keller', 'Anja');
insert into maprimus (name, vorname) values ('Kaufmann', 'Jens');
insert into maprimus (name, vorname) values ('Zoller', 'Jonas');
insert into maprimus (name, vorname) values ('Gruber', 'Marco');
insert into maprimus (name, vorname) values ('Sautter', 'Noemi');
insert into maprimus (name, vorname) values ('N�ssing', 'G�nter');
insert into maprimus (name, vorname) values ('Rohner', 'Lena');
insert into maprimus (name, vorname) values ('Steiner', 'Timo');
commit;

select * from maprimus

begin transaction
insert into standort (stadt) values ('Berlin');
insert into standort (stadt) values ('K�ln');
insert into standort (stadt) values ('Frankfurt');
insert into standort (stadt) values ('M�nchen');
insert into standort (stadt) values ('Hamburg');
commit;

select * from standort


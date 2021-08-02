select*from kunden;

begin transaction
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('Bosch', 'Robert-Bosch-Platz 1', 70839, 'Gerlingen');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('Continental', 'Vahrenwalder Str. 9', 30165, 'Hannover');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('ZF', 'Löwentaler Str. 20', 88046, 'Friedrichshafen');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('Mahle', 'Mauerstr. 3', 70469, 'Stuttgart');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('Schaeffler', 'Industriestr. 1', 91074, 'Herzogenaurach');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('Hella', 'Rixbecker Str. 75', 59552, 'Lippstadt');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('BMW', 'Petuelring 130', 80809, 'Münschen');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('Leoni', 'Marienstr. 7', 90402, 'Nürnberg');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('VW', 'Berliner Ring 2', 38440, 'Wolfsburg');
insert into kunden (Fname, Fstrasse, Fplz, Fort) values ('Daimler', 'Mercedesstr. 120', 70372, 'Stuttgart');
commit
begin transaction
update kunden set Fmailadresse= Fname+'@' + Fname+'.com';
commit

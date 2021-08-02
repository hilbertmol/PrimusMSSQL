begin transaction
insert into Teilnehmer values  ('Thorsten','Baumhoer',33100, 'stettiner str 6',  'Paderborn', 'odins@gmx.de',null);
insert into Teilnehmer values  ('Maria','Birth',52334, 'Bahnhofstr 12',  'Frankfurt', 'mbirth@gmail.com',null);
insert into Teilnehmer values  ('Jill','Black',28790, 'poststr 30',  'Berlin', 'jill_black@gmail.com',null);
insert into Teilnehmer values  ('Ulrich','Hansen',34756, 'Soeststr 23',  'Lippstadt', 'Ulrich_hansen@yahoo.de',null);
insert into Teilnehmer values  ('Tina','Kroening',45629, 'Bochumer str',  'Essen', 'tina34@gmx.de',null);
insert into Teilnehmer values  ('Nati','Bulgakov',02389, 'marktpaltz 2',  'Frankfurt am Oder', 'bulgakov@gmail.com',null);
insert into Teilnehmer values  ('Lisa','Nabokov',43571, 'reichstr 34',  'Wiesbaden', 'nabokov@gmx.de',null);
insert into Teilnehmer values  ('Steven','Schroedinger',89940, 'Esslinger str 6',  'Stuttgart', 'Schroedinger@gmail.com',null);
insert into Teilnehmer values  ('Hermann','Hesse',78940, 'Muenchener str 56',  'Augsburg', 'hesse@gmx.de',null);
insert into Teilnehmer values  ('Johann','Goethe',56894, 'faust str 666',  'Mainz', 'faust@gmail.com',null);
insert into Teilnehmer values  ('Friedrich','Schiller',78493, 'Goehte str 55',  'Weimar', 'schiller@gmx.de',null);
insert into Teilnehmer values  ('Wolfgang','Mozart',33100, 'Schiller str 67',  'Salzburg', 'mozart@gmail.com',null);
insert into Teilnehmer values  ('Paul','Dirac',79802, 'Mozart str 78',  'Muenchen', 'dirac@gmx.de',null);
insert into Teilnehmer values  ('Elon','Musk',02310, 'Berlinerring 2',  'Potsdam', 'musk@gmail.com',null);
insert into Teilnehmer values  ('Steve','Jobs',01010, 'Himmel platz 1',  '7himmel', 'jobs7@gmx.de',null);
commit;

begin transaction
insert into apartner values  (8,'Thomas','Mann',05254378920);
insert into apartner values  (8,'Friedrich','Duerrenmatt',05254378921);
insert into apartner values  (8,'Alfred','Nobel',05254378922);
insert into apartner values  (9,'George','Bush',02345901010);
insert into apartner values  (9,'Bill','Clinton',02345901011);
insert into apartner values  (9,'Joe','Biden',02345901012);
insert into apartner values  (10,'Donald','Trump',09876123490);
insert into apartner values  (10,'Jimmy','Carter',09876123490);
insert into apartner values  (10,'Jeschka','Fischer',09876123490);
--insert into apartner values  (10,'Herbert','Hoover',05254378920);
commit;
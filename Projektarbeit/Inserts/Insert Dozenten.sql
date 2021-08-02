use primus 
go

begin transaction
insert into Dozenten values  ('Thorsten','Schulte','Weidenfellerallee 17', 68766, 'Hockenheim', 't.schulte@primus.com');
insert into Dozenten values  ('Max','Muster',' Grabenstr. 8', 69115, 'Heidelberg', 'm.muster@primus.com');
insert into Dozenten values  ('Serafina','Wollny','Erteell Weg 11', 63828, 'Kleinkahl', 's.wollny@primus.com');
insert into Dozenten values  ('Thomas','Anders','Musikweg 5', 10115, 'Berlin', 't.anders@primus.com');
insert into Dozenten values  ('Gabi','Andresen','Waldweg 7', 10115, 'Berlin', 'g.andresen@primus.com');
insert into Dozenten values  ('Tina','Müller','Adlerweg 9', 10115, 'Berlin', 't.mueller@primus.com');
insert into Dozenten values  ('Thomas','Müller','Konzertstr. 99', 28195, 'Bremen', 'th.mueller@primus.com');
insert into Dozenten values  ('Manfred','Kantereit','Muschiwall 13', 28195, 'Bremen', 'm.kantereit@primus.com');
insert into Dozenten values  ('Manuela','Wiesner','Gallopweg 9', 28195, 'Bremen', 'm.wiesner@primus.com');
insert into Dozenten values  ('Thorsten','Galler','Weltallee 1', 20095, 'Hamburg', 't.galler@primus.com');
insert into Dozenten values  ('Michael','Grobian','Siebweg 5', 20095, 'Hamburg', 'm.grobian@primus.com');
insert into Dozenten values  ('Sibille','Meier','Wachtelweg 72', 63739, 'Aschaffenburg', 's.meier@primus.com');
insert into Dozenten values  ('Kristina','Schleier','Fabrikstr. 15', 80331, 'München', 'k.schleier@primus.com');
insert into Dozenten values  ('Christian','Bunte','Farbenstr. 36', 80331, 'München', 'c.bunte@primus.com');
insert into Dozenten values  ('Christian','Bauer','Farbenstr. 80', 80331, 'München', 'c.bauer@primus.com');
insert into Dozenten values  ('Zacharias','Christus','Bibelweg 2', 80331, 'München', 'z.christus@primus.com');
insert into Dozenten values  ('Tina','Geyer','Bullenweg 11', 33602, 'Bielefeld', 't.geyer@primus.com');
insert into Dozenten values  ('Tina','Geier','Krasse Str. 11', 28195, 'Bremen', 't.geier@primus.com');
insert into Dozenten values  ('Manuel','Kontereis','Bauengasse 1', 33602, 'Bielefeld', 'm.kontereis@primus.com');
insert into Dozenten values  ('Manuela','Willens','Reiterweg 21', 33602, 'Bielefeld', 'm.willens@primus.com');
insert into Dozenten values  ('Tristan','Bleifuß','Motorgang 2b', 33790, 'Halle', 't.bleifuß@primus.com');
insert into Dozenten values  ('Achim','Sauter','Hauptweg 55', 44135, 'Dortmund', 'a.sauter@primus.com');
insert into Dozenten values  ('Achilles','Verse','Am Fuß 72',44135, 'Dortmund', 'a.verse@primus.com');
insert into Dozenten values  ('Georg','Dünnsch','Zur harten Stund 4', 45879, 'Gelsenkirchen', 'g.duennsch@primus.com');
insert into Dozenten values  ('Gisella','Deinhardt','Blaupause 8', 80331, 'München', 'g.deinhardt@primus.com');
insert into Dozenten values  ('Bilbo','Beutling','Kurzer Gang 4', 60306, 'Frankfurt am Main', 'b.beutling@primus.com');
insert into Dozenten values  ('Jesus','Christus','Bibelweg 10', 60306, 'Frankfurt am Main', 'j.christus@primus.com');
commit;
go
select * from dozenten;
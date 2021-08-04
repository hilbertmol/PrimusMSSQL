select * from apartner;

begin transaction
insert into apartner (Firmanr, avorname, aname, durchwahl) values (1, 'Maria', 'Anders', '01234371100');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (1, 'Hanna', 'Moos', '01234371101');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (1, 'Sven', 'Ottlieb', '01234371102');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (2, 'Peter', 'Franken', '01234372100');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (2, 'Philip', 'Cramer', '01234372101');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (2, 'Alexander', 'Feuer', '01234372102');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (3, 'Renate', 'Messner', '01234373100');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (3, 'Henriette', 'Pfalzheim', '01234373101');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (3, 'Horst','Kloos', '01234373102');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (4, 'Karin','Josephs', '01234374100');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (4, 'Rita','Müller', '01234374101');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (4, 'Herbert','Müller', '01234374102');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (5, 'Karl','Friesen', '01234375100');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (5, 'Helmut','Werner', '01234375101');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (5, 'Renate','Sauer', '01234375102');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (6, 'Josef','Müller', '01234376100');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (6, 'Vanessa','Geiger', '01234376101');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (6, 'Sigrid','Kanter', '01234376102');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (7, 'Franz','Maler', '01234377100');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (7, 'Gerhard','Reiter', '01234377101');
insert into apartner (Firmanr, avorname, aname, durchwahl) values (7, 'Karl','Fischer', '01234377102');
commit;

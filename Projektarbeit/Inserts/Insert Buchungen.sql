use primus
go

begin transaction

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1,1  ,  '06.01.2020 ', 2 );
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 2,1  ,  '20.01.2020 ', 2 );
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3,1  ,  '03.02.2020 ', 2 );

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1,2  ,  '06.01.2020 ', 3 ); --3
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4,2  ,  '20.01.2020 ', 3 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 6,2  ,  '03.02.2020 ', 3 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 10,2  ,  '17.02.2020 ', 3 ); --20

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 2,3  ,  '03.02.2020 ', 1 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 3 ,  '17.02.2020 ', 1 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3, 3 ,  '02.03.2020 ', 1 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1, 3 ,  '16.03.2020 ', 1 ); --3

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 7, 4 , '03.02.2020 ', 2 ); --12
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 6, 4 ,  '02.03.2020 ', 2 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 10, 4 , '16.03.2020 ', 2 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 8, 4,  '13.04.2020 ', 2 ); --15

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 12,5  , '16.03.2020 ', 2 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 5 , '13.04.2020 ', 2 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1,5  , '27.04.2020 ', 2 ); --3
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4,5  , '11.05.2020 ', 2 ); --4

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 6 , '30.03.2020 ', 1 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 2,6  , '13.04.2020 ', 1 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3,6  , '27.04.2020 ', 1 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 9, 6 , '11.05.2020 ', 1 ); --20

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 9,7  , '30.03.2020 ', 4 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 7, 7 , '27.04.2020 ', 4 ); --12
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5,  7, '25.05.2020 ', 4 ); --10

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 8 , '30.03.2020 ', 4 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 10, 8 , '13.04.2020 ', 4 ); --20

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 12,  9, '13.04.2020 ', 4 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 11,  9, '11.05.2020 ', 4 );--20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4,  9, '08.06.2020 ', 4 ); --4

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 2,  10, '27.04.2020 ', 3 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5,  10, '11.05.2020 ', 3 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3,  10, '25.05.2020 ', 3 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1, 10 , '08.06.2020 ', 3 ); --3

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 7, 11 , '27.04.2020 ', 1 ); --12
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 6, 11 , '25.05.2020 ', 1 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 10, 11 , '08.06.2020 ', 1 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 8, 11 , '06.07.2020 ', 1 ); --15

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 12, 12 , '11.05.2020 ', 4 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 12 , '08.06.2020 ', 4 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1, 12 , '22.06.2020 ', 4 ); --3

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 13 , '08.06.2020 ', 4 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 13 , '22.06.2020 ', 4 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 2, 13 ,  '06.07.2020 ', 4 ); --5

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3, 14 , '22.06.2020 ', 4 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 9, 14 , '06.07.2020 ', 4 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1, 14 , '03.08.2020 ', 4 ); -- 3
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 7, 14 , '17.08.2020 ', 4 ); --12

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 15 , '06.07.2020 ', 5 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 15 , '20.07.2020 ', 5 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 10, 15 , '03.08.2020 ', 5 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 12, 15 , '31.08.2020 ', 5 ); --20


insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 11, 16 , '20.07.2020 ', 1 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 16 , '17.08.2020 ', 1 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 2, 16 , '31.08.2020 ', 1 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 16 , '14.09.2020 ', 1 ); --10


insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3, 17 , '31.08.2020 ', 5 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1, 17 , '14.09.2020 ', 5 ); --3
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 7, 17 , '28.09.2020 ', 5 ); --12
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 6, 17 , '26.10.2020 ', 5 ); --10

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 10, 18 , '14.09.2020 ', 1 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 8, 18 , '12.10.2020 ', 1 ); --15
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 12, 18 , '09.11.2020 ', 1 ); --20

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 19 , '28.09.2020 ', 4 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1, 19 , '12.10.2020 ', 4 ); --3
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 19 , '26.10.2020 ', 4 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 19 , '09.11.2020 ', 4 ); --10


insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 2, 20 , '12.10.2020 ', 5 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3, 20 , '26.10.2020 ', 5 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 9, 20 , '09.11.2020 ', 5 ); --20


insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 7, 21 , '07.12.2020 ', 2 ); --12
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 21 , '04.01.2021 ', 2 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3, 21 , '18.01.2021 ', 2 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 21 , '01.02.2021 ', 2 ); --5

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 10, 22 , '18.01.2021 ', 1 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 12, 22 , '15.02.2021 ', 1 ); --20
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 11, 22 , '15.03.2021 ', 1 ); --20


insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 23 , '01.02.2021 ', 5 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 7, 23 , '15.02.2021 ', 5 ); --12

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 5, 24 , '01.02.2021 ', 5 ); --10
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 24 , '15.02.2021 ', 5 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 10, 24 ,  '01.03.2021 ', 5 ); --20

insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 1, 25 ,  '01.03.2021 ', 5 ); --3
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 3, 25 ,  '15.03.2021 ', 5 ); --5
insert into buchungen (produktid, teilnehmernr, startdatum, standortid) 
values ( 4, 25 ,  '29.03.2021 ', 5 ); --5

commit

update b 
set b.enddatum= dateadd(day,p.dauer+ceiling(p.dauer/5.0)*2-3, b.startdatum)
from buchungen b inner join produkte p on b.produktid= p.produktid;

select * from Buchungen

update buchungen set standortid = standortid-5
rollback